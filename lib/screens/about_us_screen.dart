import 'package:flutter/material.dart';
import 'package:test_web/widgets/custem_text.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WebText(
          txt: "About us",
          fontWeight: FontWeight.bold,
          fontSize: 23,
          color: Colors.teal,
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Column(
            children: [
              WebText(
                txt: "small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph small paragraph",
                height: 1.3,
                fontSize: 18,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
