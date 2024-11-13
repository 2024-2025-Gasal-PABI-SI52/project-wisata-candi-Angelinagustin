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
          )
        ],
      ),
    );
  }
}