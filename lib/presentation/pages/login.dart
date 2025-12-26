import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/pages/dashboard.dart';
import 'package:kelompok_2/presentation/widgets/main_layout.dart';
import 'package:provider/provider.dart';
import 'package:kelompok_2/presentation/providers/auth_provider.dart'; 


class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
  final auth = context.watch<AuthProvider>();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
              const SizedBox(height: 32),
              
              Text('Masuk', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 24),

              // Form Input
              TextField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _password,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: auth.loading
                    ? null
                    : () async {
                        final nav = Navigator.of(context);
                        await auth.signIn(_email.text.trim(), _password.text);
                        if (auth.uid != null) {
                          nav.pushReplacementNamed(MainLayout.routeName);
                        }
                      },
                child: auth.loading 
                    ? const CircularProgressIndicator() 
                    : const Text('Masuk'),
              ),

              if (auth.error != null) ...[
                const SizedBox(height: 12),
                Text(
                  auth.error!,
                  style: const TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ],

              const SizedBox(height: 16),

              // TextButton(
              //   onPressed: () =>
              //       Navigator.of(context).pushNamed(RegisterPage.routeName),
              //   child: const Text('Belum punya akun? Daftar'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}