import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';


class CategoriesModel {
  String name, images, id;
  int priority;

  CategoriesModel(
      {required this.name,
      required this.id,
      required this.priority,
      required this.images,});

  //  convert to json to object model

  factory CategoriesModel.fromjson(Map<String, dynamic> json, String id) {
    return CategoriesModel(
      name: json["name"] ?? "",
      id: id ?? "",
      priority: json["priority"] ?? 0,
      images: json["images"] ?? "",
    );
  }

  // Convert List<QueryDocumentSnapshot> to List<CategoriesModel>

  static List<CategoriesModel> fromJsonList(List<QueryDocumentSnapshot> list) {
    return list
        .map(
          (e) => CategoriesModel.fromjson(
            e.data() as Map<String, dynamic>,
            e.id,
          ),
        )
        .toList();
  }
}
