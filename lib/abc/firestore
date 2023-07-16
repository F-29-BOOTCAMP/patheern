import 'package:cloud_firestore/cloud_firestore.dart';

// Firestore veritabanına veri ekleme işlemi
Future<void> addDataToFirestore() async {
  try {
    await FirebaseFirestore.instance
        .collection('users')
        .doc('user1')
        .set({'name': 'John', 'age': 25});
    print('Veri Firestore\'a eklendi.');
  } catch (e) {
    // Hata durumunda
    print('Veri ekleme hatası: $e');
  }
}

// Firestore veritabanından veri okuma işlemi
Future<void> readDataFromFirestore() async {
  try {
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc('user1')
        .get();
    if (snapshot.exists) {
      Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      String name = data['name'];
      int age = data['age'];
      print('Ad: $name, Yaş: $age');
    } else {
      print('Belge bulunamadı.');
    }
  } catch (e) {
    // Hata durumunda
    print('Veri okuma hatası: $e');
  }
}
