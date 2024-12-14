import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Method to sign up a new user
  Future<User?> signup({required String email, required String password, required String name}) async {
    try {
      // Create user with email and password
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      // Optionally, you can save the user's name in Firebase
      await userCredential.user?.updateDisplayName(name);

      if (userCredential.user != null) {
        log("User created successfully");
        return userCredential.user;
      }
    } on FirebaseAuthException catch (e) {
      log("Signup Error: ${e.message}");
      return null; // Return null in case of errors
    } catch (e) {
      log("Unexpected Error: $e");
      return null;
    }
    return null; // Fallback if no user is created
  }

  // Method to login an existing user
  Future<User?> login({required String email, required String password}) async {
    try {
      // Sign in with email and password
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        log("Login successful");
        return userCredential.user;
      }
    } on FirebaseAuthException catch (e) {
      log("Login Error: ${e.message}");
      return null;
    } catch (e) {
      log("Unexpected Error: $e");
      return null;
    }
    return null;
  }

  // Method to log out the user
  Future<void> logout() async {
    try {
      await _auth.signOut();
      log("User logged out successfully");
    } catch (e) {
      log("Logout Error: $e");
    }
  }

  // Method to get the current user
  User? getCurrentUser() {
    return _auth.currentUser;
  }
}
