import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Latar belakang abu-abu muda
      appBar: AppBar(
        title: Text('My Profile', style: TextStyle(fontWeight: FontWeight.w600)),
        backgroundColor: Colors.deepPurpleAccent[200], // Ungu soft
        elevation: 3,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Foto Profil
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              SizedBox(height: 16),
              // Nama & Deskripsi
              Text(
                'Naya',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepPurple[800],
                ),
              ),
              Text(
                'HILDA INAYAH • FLUTTER PPB',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.deepPurple[300],
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              // Info Kontak - Email
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail_outline, color: Colors.deepPurpleAccent[200]),
                  SizedBox(width: 8),
                  Text('hildainayah@example.com'),
                ],
              ),
              SizedBox(height: 10),

              // Info Kontak - Telepon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone_android, color: Colors.deepPurpleAccent[200]),
                  SizedBox(width: 8),
                  Text('+62 813-9876-5432'),
                ],
              ),
              SizedBox(height: 30),

              // Tombol Aksi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Follow clicked');
                    },
                    child: Text('Follow'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent[200],
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      shadowColor: Colors.deepPurpleAccent,
                      elevation: 5,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print('Message clicked');
                    },
                    child: Text('Message'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.deepPurpleAccent[200],
                      side: BorderSide(color: Colors.deepPurpleAccent[200]!),
                      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
