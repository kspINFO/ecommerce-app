import 'dart:async';

import 'package:ecommerce_admin_apps/controllers/db_service.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:flutter/material.dart';

class AdminProvider extends ChangeNotifier {
  List<QueryDocumentSnapshot> categories = [];
  StreamSubscription<QuerySnapshot>? _categorySubscription;

  int totalcategories = 0;

  AdminProvider(){
    getCategories();
  }

  // get all the categories
  void getCategories() {
    _categorySubscription?.cancel();
    _categorySubscription = DbService().readCategories().listen((snapshot) {
      categories = snapshot.docs;
      totalcategories = snapshot.docs.length;
      notifyListeners();
    });
  }
}
