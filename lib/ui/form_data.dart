import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masukkan Data"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxNama(),
            _textboxNIM(),
            _textboxTahun(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  // Textbox for Nama
  _textboxNama() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaController,
    );
  }

  // Textbox for NIM
  _textboxNIM() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _nimController,
    );
  }

  // Textbox for Tahun Lahir
  _textboxTahun() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _tahunController,
      keyboardType: TextInputType.number,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);

        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                TampilData(nama: nama, nim: nim, tahun: tahun)));
      },
      child: const Text('Simpan'),
    );
  }
}
