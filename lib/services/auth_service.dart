import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future<void> signup(
      {required String email,
      required String password,
      required String username}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((userCredential) async {
        String uid = userCredential.user!.uid;
        await FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .set({'email': email, 'username': username});
        print('User is created, User ID: $uid');
      });
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with that email';
      }
      print(message);
    } catch (e) {
      print('An error occurred');
    }
  }

  Future<void> login({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((userCredential) {
        print('Logged In');
      });
    } on FirebaseAuthException catch (e) {
      String? message = e.message;
      print(message);
    }
  }

  Future<String> getUID() async {
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      return uid;
    } catch (e) {
      return '';
    }
  }
}
