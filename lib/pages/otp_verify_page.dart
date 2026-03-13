import 'package:ecommerce/widgets/EAppbar.dart';
import 'package:flutter/material.dart';

class OtpVerifyPage extends StatelessWidget {
  const OtpVerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppbar(title: 'Ecommerce App'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'OTP Verification',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 20),
          Text(
            'Enter the OTP sent to your email',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                hintText: 'Enter OTP',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
