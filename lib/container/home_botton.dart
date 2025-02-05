import 'package:flutter/material.dart';

class HomeBotton extends StatefulWidget {
  final VoidCallback route;
  final String name ;
  const HomeBotton({super.key, required this.name, required this.route, });

  @override
  State<HomeBotton> createState() => _HomeBottonState();
}

class _HomeBottonState extends State<HomeBotton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:widget.route,
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width * 0.44,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor),
        child: Center(
          child: Text(
            widget.name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
