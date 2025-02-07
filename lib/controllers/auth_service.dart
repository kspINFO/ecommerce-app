import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
// Create new account using email password method

  Future<String> createAccountWithEmail(String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return "Account Created";
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }
    // login with email password method

    
    Future<String> loginWithEmail(String email, String password) async {
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        return "Login Successfull";
      } on FirebaseAuthException catch (e) {
        return e.message.toString();
      }
    }

    // logout the user
    Future logout() async {
      await FirebaseAuth.instance.signOut();
    }

    // reset the password

    Future resetPassword(String email) async {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    }

    // check whether the user is sign in or not

    Future<bool> isLoggedIn() async {
      var user = FirebaseAuth.instance.currentUser;
      return user != null;
    }
  }

