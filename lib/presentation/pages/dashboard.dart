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
    return int.tryParse(
      text.replaceAll('.', '').replaceAll(',', ''),
    ) ?? 0;
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
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              children: [],
          ),
        ),
      ),

    );
  }

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
              bottom: BorderSide(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            borderRadius: BorderRadius.circular(20)
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