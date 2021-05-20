import 'package:danangud/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anon
  Future signInAnon() async {
   /* try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }*/
  }

  Future signUpUser(String fullName, String birthDay, String phone,
      String userName, String passWord, String email) async {

    CollectionReference users = FirebaseFirestore.instance.collection('Users');
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();
    users.add({'fullName': fullName, 'birthDay':birthDay, 'phone':phone, 'userName':userName ,'passWord':passWord, 'email':email,  'uid': uid});
    return;
  }
  Future loginUserWithEmail(String email, String password) async {
    String retVal = "error";

    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email:email, password: password
      );

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
