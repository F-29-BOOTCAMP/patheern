import 'package:firebase_auth/firebase_auth.dart';

// Kullanıcıyı oluşturma ve kaydetme işlemi
Future<void> registerUser(String email, String password) async {
  try {
    UserCredential userCredential =
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    // Kullanıcı oluşturma başarılı
    User? user = userCredential.user;
    print('Kullanıcı oluşturuldu: ${user?.uid}');
  } catch (e) {
    // Hata durumunda
    print('Kullanıcı oluşturma hatası: $e');
  }
}

// Kullanıcıyı giriş yapma işlemi
Future<void> signInUser(String email, String password) async {
  try {
    UserCredential userCredential =
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    // Giriş yapma başarılı
    User? user = userCredential.user;
    print('Kullanıcı giriş yaptı: ${user?.uid}');
  } catch (e) {
    // Hata durumunda
    print('Giriş hatası: $e');
  }
}
