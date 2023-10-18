import 'package:flutter/material.dart';

class HospitalInfo extends StatelessWidget {
  final String name;
  final String rate;
  final String distance;
  final String address;
  final String subject;

  const HospitalInfo({
    super.key,
    required this.name,
    required this.rate,
    required this.distance,
    required this.address,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 120,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xffededed),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(
                  Icons.bookmark,
                  color: Color(0xffE72E2E),
                  size: 30,
                ),
              ],
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xffF7CE45),
                  size: 25,
                ),
                Text(
                  rate,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff3E3E3E),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                Text(
                  distance,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff3E3E3E),
                  ),
                ),
                const SizedBox(width: 5),
                const Text(
                  '|',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff3E3E3E),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  address,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff3E3E3E),
                  ),
                ),
                const SizedBox(width: 5),
                const Text(
                  '|',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff3E3E3E),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  subject,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff3E3E3E),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
