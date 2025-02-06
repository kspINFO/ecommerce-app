import 'package:flutter/material.dart';

class DashbordText extends StatefulWidget {
  final String keyword, value;
  const DashbordText({super.key, required this.keyword, required this.value});

  @override
  State<DashbordText> createState() => _DashbordTextState();
}

class _DashbordTextState extends State<DashbordText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${widget.keyword}:",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          widget.value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
