import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/widgets/main_layout.dart';
import 'package:provider/provider.dart';
import 'package:kelompok_2/presentation/providers/auth_provider.dart';
import 'dart:ui';

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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/lime_background.jpg', fit: BoxFit.cover),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.white.withOpacity(0.3)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 16),

                        Text(
                          'Masuk',
                          style: Theme.of(context).textTheme.headlineMedium
                              ?.copyWith(color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),

                        TextField(
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Color(0xFF12130F)),
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: const TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFEAE6E5)
                              ),
                              borderRadius: BorderRadius.circular(12)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF12130F)
                              ),
                              borderRadius: BorderRadius.circular(12)
                            )
                          ),
                        ),
                        const SizedBox(height: 16),

                        TextField(
                          controller: _password,
                          obscureText: true,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),

                        ElevatedButton(
                          onPressed: auth.loading
                              ? null
                              : () async {
                                  final nav = Navigator.of(context);
                                  await auth.signIn(
                                    _email.text.trim(),
                                    _password.text,
                                  );
                                  if (auth.uid != null) {
                                    nav.pushReplacementNamed(
                                      MainLayout.routeName,
                                    );
                                  }
                                },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.85),
                            foregroundColor: Colors.black,
                          ),
                          child: auth.loading
                              ? const CircularProgressIndicator()
                              : const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                        ),

                        if (auth.error != null) ...[
                          const SizedBox(height: 12),
                          Text(
                            auth.error!,
                            style: const TextStyle(color: Colors.redAccent),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
