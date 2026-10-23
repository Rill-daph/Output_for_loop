import 'package:flutter/material.dart';

void main() {
  runApp(Looping());
}

class Looping extends StatefulWidget {
  @override
  State<Looping> createState() => Looping_State();
}

class Looping_State extends State<Looping> {
  List<String> nama = ['Daffa', 'Dwi', 'Woi'];

  List<String> kelas = ['XI RPL 2', 'XI RPL 3', 'XI RPL 2'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF1E293B), // Slate Dark
          elevation: 0,
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1517842645767-c639042777db?q=80&w=1000&auto=format&fit=crop',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Color(0xCC0F172A), // Overlay Gelap Slate-900 (80% opacity)
                BlendMode.darken,
              ),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade200,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Text(
                    'DATA SISWA/I',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  color: Colors.white,
                  child: Table(
                    border: TableBorder.all(
                      color: Color(0xff000000),
                      width: 1,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: Colors.amber.shade200,
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'No',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Nama',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Kelas',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      for (int i = 0; i < nama.length; i++)
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                '${i + i}',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                nama[i],
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                kelas[i],
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
