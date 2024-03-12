import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement login logic here
                // Contoh sederhana: Cek apakah username dan password sesuai
                if (usernameController.text == 'user' &&
                    passwordController.text == 'password') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainMenu(),
                    ),
                  );
                } else {
                  // Tampilkan pesan error jika login gagal
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Login Gagal. Coba lagi.'),
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Pindah ke halaman Data Kelompok
              // Tambahkan logika atau widget sesuai kebutuhan
            },
            child: Text('Data Kelompok'),
          ),
          ElevatedButton(
            onPressed: () {
              // Pindah ke halaman Penjumlahan dan Pengurangan Angka
              // Tambahkan logika atau widget sesuai kebutuhan
            },
            child: Text('Penjumlahan dan Pengurangan Angka'),
          ),
          ElevatedButton(
            onPressed: () {
              // Pindah ke halaman Input Bilangan Ganjil/Genap
              // Tambahkan logika atau widget sesuai kebutuhan
            },
            child: Text('Input Bilangan Ganjil/Genap'),
          ),
        ],
      ),
    );
  }
}
