import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomEmptyLottieImage extends StatelessWidget {
  const CustomEmptyLottieImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          'images/lottie-doctor.json',
        ),
        const SizedBox(height: 20,),
        const Text(
          'Anda Belum Memiliki Riwayat',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
