import 'package:flutter/material.dart';

class ResultCalculatedSection extends StatelessWidget {
  const ResultCalculatedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Proses Perhitungan Diagnosis",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
