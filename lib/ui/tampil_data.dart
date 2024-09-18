import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dataku"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 0, 24),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: const Color.fromRGBO(255, 255, 165, 44), width: 2),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Biodataku:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Nama: $nama",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "NIM: $nim",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Tahun Lahir: $tahun",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "Umurku: $umur tahun",
                style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 255, 255, 65)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
