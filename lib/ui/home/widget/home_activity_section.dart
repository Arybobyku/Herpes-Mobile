import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeActivitySection extends StatelessWidget {
  const HomeActivitySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aktivitas",
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              SizedBox(
                height: 150,
                child: SvgPicture.asset("images/landing_image.svg"),
              ),
              const SizedBox(height: 20,),
              const Text(
                "Tidak Ada Aktivitas",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
