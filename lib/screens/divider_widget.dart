import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.18,
      child: const Divider(
        color: Colors.grey,
        height: 5,
        thickness: 1.5,
      ),
    );
  }
}
