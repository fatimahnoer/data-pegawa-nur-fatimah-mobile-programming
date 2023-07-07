import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({Key? key}) : super(key: key);

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    namaPegawai: "Nur Fatimah",
                    nipPegawai: "11000001",
                    tglPegawai: "14 Februari 2000",
                    nohpPegawai: "083867543890",
                    emailPegawai: "fatimah@gmail.com",
                    pwPegawai: "staff01"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "11000002",
                    namaPegawai: "Triyono",
                    tglPegawai: "9 Agustus 1980",
                    nohpPegawai: "087678945637",
                    emailPegawai: "yono@gmail.com",
                    pwPegawai: "staff02"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "11000003",
                    namaPegawai: "Robert",
                    tglPegawai: "6 Januari 1994",
                    nohpPegawai: "08883231XXXX",
                    emailPegawai: "obet@gmail.com",
                    pwPegawai: "staff03"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "11000004",
                    namaPegawai: "Cha Eun Woo",
                    tglPegawai: "10 Desember 1997",
                    nohpPegawai: "08123212XXXX",
                    emailPegawai: "eunwoo@gmail.com",
                    pwPegawai: "staff04"))),
          ),
          GestureDetector(
            child: (PegawaiItem(
                pegawai: Pegawai(
                    nipPegawai: "11000005",
                    namaPegawai: "Kim Seok Jin",
                    tglPegawai: "18 Mei 1999",
                    nohpPegawai: "083856478929",
                    emailPegawai: "seokjin@gmail.com",
                    pwPegawai: "staff05"))),
          ),
        ],
      ),
    );
  }
}
