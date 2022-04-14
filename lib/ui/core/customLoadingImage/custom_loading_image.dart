import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class CustomLoadingImage extends StatelessWidget {
  const CustomLoadingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'images/heart-loading.json',
          ),
          const Text("Loading",style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
