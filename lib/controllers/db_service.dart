import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';

class DbService {
  // CAATEGORIES

  // read categories from database
  Stream<QuerySnapshot> readCategories() {
    return FirebaseFirestore.instance
        .collection("shop_categories")
        .orderBy(
          "priority",
          descending: true,
        )
        .snapshots();
  }

  // create new category
  Future createCategories({required Map<String, dynamic> data}) async {
    await FirebaseFirestore.instance.collection("shop_categories").add(data);
  }

  // update category
  Future updateCategories(
      {required String docId, required Map<String, dynamic> data}) async {
    await FirebaseFirestore.instance
        .collection("shop_categories")
        .doc(docId)
        .update(data);
  }

  // delect category

  Future deleteCategories({required String docId}) async {
    await FirebaseFirestore.instance
        .collection("shop_categories")
        .doc(docId)
        .delete();
  }
}
