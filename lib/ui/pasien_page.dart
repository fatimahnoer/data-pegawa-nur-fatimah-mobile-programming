import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({Key? key}) : super(key: key);

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: (PasienItem(
                pasien: Pasien(
                    no_rmPasien: "11111",
                    namaPasien: "Cecilia Kurnia",
                    tglPasien: "13 Juni 2000",
                    nohpPasien: "089933488990",
                    alamatPasien: "Wates, Kulon Progo, Yogyakarta"))),
          ),
          GestureDetector(
            child: (PasienItem(
                pasien: Pasien(
                    no_rmPasien: "22222",
                    namaPasien: "Rahmalia Puryani",
                    tglPasien: "12 September 2001",
                    nohpPasien: "082367558907",
                    alamatPasien: "Mantrijeron, Yogyakarta"))),
          ),
          GestureDetector(
            child: (PasienItem(
                pasien: Pasien(
                    no_rmPasien: "33333",
                    namaPasien: "Susilo Hadiningrat",
                    tglPasien: "8 Agustus 1976",
                    nohpPasien: "087643552387",
                    alamatPasien: "Gondokusuman, Yogyakarta"))),
          ),
        ],
      ),
    );
  }
}
