import 'package:flutter/material.dart';

class HapusAkunScreen extends StatefulWidget {
  const HapusAkunScreen({super.key});

  @override
  _HapusAkunScreenState createState() => _HapusAkunScreenState();
}

class _HapusAkunScreenState extends State<HapusAkunScreen> {
  int? _selectedOption;
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true; // Menyembunyikan kata sandi secara default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hapus Akun', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mengapa Anda ingin menghapus\nUser?',
                style: TextStyle(fontSize: 14.0),
              ),
              const SizedBox(height: 16.0),
              RadioListTile<int>(
                title: const Text('Aplikasi ini mengganggu'),
                value: 1,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              RadioListTile<int>(
                title: const Text('Ingin membuat akun baru'),
                value: 2,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              RadioListTile<int>(
                title: const Text('Tidak ingin menggunakan aplikasi ini lagi.'),
                value: 3,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              const SizedBox(height: 80.0),
              const Text('Masukkan ulang kata sandi Anda'),
              TextField(
                controller: _passwordController,
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: '••••••••',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 200.0),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 40.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika untuk mengirim data registrasi
                    },style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text('KIRIM'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
