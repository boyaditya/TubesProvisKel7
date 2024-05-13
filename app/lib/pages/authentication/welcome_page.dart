import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tubes/pages/login_forgot_reset/login.dart';

// void main() {
//   runApp(_MyApp());
// }

// class _MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Selamat Datang',
//       home: SelamatDatang(),
//     );
//   }
// }

class SelamatDatang extends StatefulWidget{
  const SelamatDatang({super.key});

  @override
  State<SelamatDatang> createState() => _SelamatDatangState();
}

class _SelamatDatangState extends State<SelamatDatang>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/athena_bg1.png',
              height: 50,
            ),
            const SizedBox(height: 30),
            Image.asset(
              'assets/images/fireworks.jpg',
              height: 200,
            ),
            const SizedBox(height: 30),
            const Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Anda telah berhasil membuat akun',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 100.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
												context,
												MaterialPageRoute(
													builder: (context) => const Login(title: 'Login',),
												),
											);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700],
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  fixedSize: Size(MediaQuery.of(context).size.width,
                      40), // 50% of screen width
                ),
                child:
                    const Text('Selanjutnya', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
