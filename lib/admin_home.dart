import 'package:ecommerce_admin_apps/container/dashbord_text.dart';
import 'package:ecommerce_admin_apps/container/home_botton.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Admin Home",
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 240,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DashbordText(
                  keyword: "Total Product",
                  value: "100",
                ),
                DashbordText(
                  keyword: "Total Product",
                  value: "100",
                ),
                DashbordText(
                  keyword: "Total Product",
                  value: "100",
                ),
                DashbordText(
                  keyword: "Total Product",
                  value: "100",
                ),
                DashbordText(
                  keyword: "Total Product",
                  value: "100",
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeBotton(
                name: "All Order",
                route: () {},
              ),
              HomeBotton(
                name: "All Products",
                route: () {},
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeBotton(
                name: "Promos",
                route: () {},
              ),
              HomeBotton(
                name: "Banners",
                route: () {},
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeBotton(
                name: "Categories",
                route: () {},
              ),
              HomeBotton(
                name: "Coupons",
                route: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
