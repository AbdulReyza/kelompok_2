import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter_bluetooth_printer/flutter_bluetooth_printer.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController qtyController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  String timeNow = '';

  int parsePrice(String text) {
    return int.tryParse(text.replaceAll('.', '').replaceAll(',', '')) ?? 0;
  }

  ReceiptController? receiptController;

  void _updateTime() {
    timeNow = DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.now());
  }

  Future<void> _handleRefresh() async {
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      _updateTime();

      nameController.clear();
      qtyController.clear();
      priceController.clear();

      menu = '';
      qty = 0;
      price = 0;
      total = 0;
    });
  }

  String menu = '';
  int qty = 0;
  int price = 0;
  int total = 0;

  void updateCalculation() {
    final q = int.tryParse(qtyController.text) ?? 0;
    final p = parsePrice(priceController.text);

    setState(() {
      qty = q;
      price = p;
      total = q * p;
    });
  }

  final NumberFormat currencyFormatter = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 2,
  );

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12130F),
      appBar: glassAppBar(),
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    stuffName(),

                    SizedBox(height: 20),

                    stuffQty(),

                    SizedBox(height: 20),

                    priceStuff(),

                    SizedBox(height: 20),

                    totalPrice(),

                    SizedBox(height: 20),

                    buttonPrint(context),

                    SizedBox(height: 20),

                    receipt(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // STRUK

  Widget receipt() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Receipt(
        backgroundColor: Colors.white,
        onInitialized: (controller) {
          receiptController = controller;
        },
        builder: (context) {
          return Container(
            width: 384,
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'T H E R M U L',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text('======================='),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    timeNow,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 5),
                Text('======================='),
                SizedBox(height: 5),
                Text('Menu   : $menu'),
                Text('Jumlah : $qty'),
                Text('Harga  : ${currencyFormatter.format(price)}'),
                SizedBox(height: 5),
                Text('======================='),
                SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'TOTAL : ${currencyFormatter.format(total)}',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(child: Text('Terima Kasih :)')),
                SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }

  // BUTTON CETAK
  SizedBox buttonPrint(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () async {
          if (!_formKey.currentState!.validate()) return;

          if (receiptController == null) {
            debugPrint('ReceiptController belum siap');
            return;
          }

          setState(() {
            total = qty * price;
          });

          final device = await FlutterBluetoothPrinter.selectDevice(context);
          if (device == null) return;

          try {
            await receiptController!.print(address: device.address);
          } catch (e) {
            debugPrint('Print error: $e');
          }
        },
        icon: Icon(Icons.print, color: Color(0xFF12130F)),
        label: Text("Cetak Struk", style: TextStyle(color: Color(0xFF12130F))),
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xFFCCFB0F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          // side: BorderSide(color: Colors.white),
          padding: EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
    );
  }

  // TOTAL HARGA
  Card totalPrice() {
    return Card(
      elevation: 10,
      color: Color(0xFF473BFD),
      child: Container(
        height: 50,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TOTAL :',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF12130F),
                  fontSize: 20,
                ),
              ),
              Text(
                currencyFormatter.format(total),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF12130F),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // HARGA SATUAN
  TextFormField priceStuff() {
    return TextFormField(
      controller: priceController,
      keyboardType: TextInputType.number,
      onChanged: (value) {
        final raw = value.replaceAll('.', '').replaceAll(',', '');
        if (raw.isEmpty) {
          updateCalculation();
          return;
        }

        final number = int.parse(raw);
        final formatted = NumberFormat('#,###', 'id_ID').format(number);

        priceController.value = TextEditingValue(
          text: formatted,
          selection: TextSelection.collapsed(offset: formatted.length),
        );

        updateCalculation();
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.monetization_on_outlined, color: Colors.brown),
        label: Text('Harga Satuan'),
        hintText: '15.000',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(244, 149, 33, 1)),
        ),
      ),
    );
  }

  // JUMLAH BARANG
  TextFormField stuffQty() {
    return TextFormField(
      style: TextStyle(
        color: Color(0xFFEAE6E5)
      ),
      controller: qtyController,
      keyboardType: TextInputType.number,
      onChanged: (_) {
        updateCalculation();
        setState(() {});
      },
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.shopping_cart_checkout_sharp,
          color: Color(0xFFEAE6E5),
        ),
        label: Text('Jumlah Barang',
          style: TextStyle(
            color: Color(0xFFEAE6E5)
          ),
        ),
        hintText: '5',
        hintStyle: TextStyle(color: Color(0xFFEAE6E5)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFCCFB0F)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF473BFD)
          )
        )
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Jumlah barang wajib diisi';
        }
        if (int.tryParse(value) == null) {
          return 'Harus angka';
        }
        return null;
      },
    );
  }

  // NAMA BARANG
  TextFormField stuffName() {
    return TextFormField(
      style: TextStyle(
        color: Color(0xFFEAE6E5)
      ),
      controller: nameController,
      onChanged: (value) {
        setState(() {
          menu = value;
        });
      },
      autofocus: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.shopping_bag, color: Color(0xFFEAE6E5)),
        label: Text('Nama Barang',
          style: TextStyle(
            color: Color(0xFFEAE6E5),
          ),
        ),
        hintText: 'Martabak',
        hintStyle: TextStyle(color: Color(0xFFEAE6E5)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFCCFB0F)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF473BFD)
          )
        )
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Nama barang wajib diisi';
        }
        return null;
      },
    );
  }

  // APPBAR
  PreferredSizeWidget glassAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              border: Border(
                bottom: BorderSide(color: Colors.white.withOpacity(0.2)),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: const Text(
                "THERMUL",
                style: TextStyle(
                  color: Color(0xFFEAE6E5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
