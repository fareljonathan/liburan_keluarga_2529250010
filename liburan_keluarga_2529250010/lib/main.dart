import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 237, 240),
        appBar: AppBar(
          title: const Text('Liburan Keluarga'),
          backgroundColor: const Color.fromARGB(255, 27, 97, 58),
          foregroundColor: Colors.white,

        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding : EdgeInsets.fromLTRB(16,22,16,10),
                child: Text(
                  'Taman Bunga Celosia',
                  style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 44, 184, 97),
                ),

                ),
              ),


              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://image.idntimes.com/post/20261012/pexels-jrmysiahaan-55592014-7838815_3b699154-dd15-46e4-9f3c-60303528b238.jpg',
                  width: double.infinity,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 18),


              const Padding(
                padding : EdgeInsets.fromLTRB(16,22,16,10),
                child: Text(
                  'Tentang Taman',
                  style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 44, 184, 97),
                ),

                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Taman bunga menjadi tempat rekreasi yang menawar pemandangan berwarna-warni dan suasana yang menyegarkan. Pengunjung dapat bersantai santai, berfoto bersama keluarga, serta menikmati waktu di ruang terbuka.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Color.fromARGB(221, 1, 23, 6),
                  ),
                ),
              ),

              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 236, 237, 240),
                padding: const EdgeInsets.all(16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rencana Kunjungan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.green),
                        SizedBox(width: 12),
                        Text('Lokasi'),
                        Spacer(),
                        Text(
                          'Bandungan, Semarang',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(height: 28),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.green),
                        SizedBox(width: 12),
                        Text('Jam Buka'),
                        Spacer(),
                        Text(
                          '08.00 - 17.00',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(height: 28),
                    Row(
                      children: [
                        Icon(Icons.confirmation_num, color: Colors.green),
                        SizedBox(width: 12),
                        Text('Harga Tiket'),
                        Spacer(),
                        Text(
                          'Rp25.000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed:(){},
                  icon: const Icon(Icons.menu_book),
                  label: const Text('Rencanakan Kunjungan'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 25, 102, 48),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(14),
                  ),
                ),
              ),


              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      
    );
  }
}
