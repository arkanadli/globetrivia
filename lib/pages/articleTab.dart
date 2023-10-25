import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ArticleTab extends StatelessWidget {
  const ArticleTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagesURL = [
      'assets/KampusItenas.jpg',
      'assets/Itenas1.jpg',
      'assets/Itenas2.jpg',
      'assets/Itenas3.jpg',
    ];
    return ListView(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 250.0,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
          items: imagesURL.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: Image.asset(
                    i,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Text(
            'Kampus Itenas',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: const Text(
              'Institut Teknologi Nassional (ITENAS) (aksara Sunda: ᮄᮔ᮪ᮞ᮪ᮒᮤᮒᮥᮒ᮪ ᮒᮦᮊ᮪ᮔᮧᮜᮧᮌᮤ ᮔᮞᮤᮇᮔᮜ᮪) adalah sebuah perguruan tinggi swasta di Kota Bandung. Itenas diresmikan pada tahun 1972 dengan R. Mansoer Wiratmadja sebagai rektor pertamanya. Saat ini Itenas memiliki 17 program studi yang dinaungi oleh tiga fakultas, yaitu Fakultas Teknologi Industri, Fakultas Teknik Sipil dan Perencanaan, dan Fakultas Arsitektur dan Desain.'),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Text(
            'Sejarah',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: const Text(
              "Maksud dan tujuan didirikannya yayasan ini adalah untuk melakukan kegiatan dalam bidang pendidikan dengan arti yang seluas-luasnya, termasuk di dalamnya mendirikan perguruan tinggi.[1] Dengan SK Dewan Pengurus Yayasan Pendidikan Dayang Sumbi No. 01/Kep/DS/1972 tanggal 14 Desember 1972, didirikan Akademi Teknologi Nasional (Atenas) yang terdiri dari jurusan: Arsitektur, Sipil, Elektro, dan Mesin. Pada saat itu diangkat Prof. R. Soetedjo, Ir., sebagai direktur Atenas."),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: const Text(
              "Pada tahun 1984 Atenas ditingkatkan statusnya menjadi Institut Teknologi Nasional dan mengangkat R. Mansoer Wiratmadja sebagai Rektor ITENAS dengan SK Dewan Pengurus Yayasan Pendidikan Dayang Sumbi No.01/Kep/DS/1984 tanggal 3 Januari 1984. Sejarah Institut Teknologi Nasional (Itenas) merupakan pengembangan dari Akademi Teknologi Nasional, didirikan pada tahun 1972 di bawah naungan yayasan Pendidikan Dayang Sumbi sebagai upaya memberikan sumbangsih kepada bangsa dan negara dengan ikut berusaha mencerdaskan bangsa khususnya dalam bidang teknik dan desain. kampus itenas berlokasi di jalan PKH Mustafa No.23 Kota Bandung. Sampai saat ini luas 5 Hektar dan lahan yang dimiliki 52.954 m2 dengan luas bangunan 41.205 m2. Itenas memiliki 3 fakultas dengan 14 jurusan. 300 orang tenaga pengajar tetap yang bergelar pasca sarjana lulusan dalam dan luar negeri."),
        ),
      ],
    );
  }
}
