import 'package:flutter/material.dart';
import 'package:mistikist_flutter/user.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 80,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff202020), width: 2),
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff202020)),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xff161616),
                width: 2,
              ),
              color: const Color(0xff161616),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.category,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xffCECECE)),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user.shortdetail,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff787878)),
                  ),
                ],
              ),
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color(0XFFCECECE),
          )
        ],
      ),
    );
  }
}
