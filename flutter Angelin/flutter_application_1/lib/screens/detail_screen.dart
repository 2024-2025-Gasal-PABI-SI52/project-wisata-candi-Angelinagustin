import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Detail header
          // image utama
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // tombol back
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100]?.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                ),
              ),
            ],
          ),
          // Detail Info
          // info atas
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // info atas
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(candi.name),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border))
                  ],
                )
                // info tengah
                // imfo bawah
              ],
            ),
          )
        ],
      ),
    );
  }
}
