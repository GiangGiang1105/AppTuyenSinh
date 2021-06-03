import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

  Future<bool> signUpUser(String fullName, String birthDay, String phone,
      String userName, String passWord, String email) async {
    CollectionReference users = FirebaseFirestore.instance.collection('Users');
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();
    bool status = false;
    users
        .add({
          'fullName': fullName,
          'birthDay': birthDay,
          'phone': phone,
          'userName': userName,
          'passWord': passWord,
          'email': email,
          'uid': uid
        })
        .then((value) {
      return true;
    })
        .catchError((error){
      return false;
    });
  }

  Future<bool> tuyenThang(
      String surname,
      String middlename,
      String name,
      String sex,
      String birthDay,
      String email,
      String phone,
      String andress,
      String tinh,
      String truong,
      String giaithuong,
      String nam,
      String cuocthi,
      String mon,
      String nganh) async {
    bool status = false;
    CollectionReference users =
        FirebaseFirestore.instance.collection('TuyenThang');
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();
    users
        .add({
          'Ho': surname,
          'tendem': middlename,
          'ten': name,
          'gioitinh': sex,
          'ngaysinh': birthDay,
          'diachi': andress,
          'email': email,
          'tinh': tinh,
          'truong': truong,
          'giaithuong': giaithuong,
          'nam': nam,
          'phone': phone,
          'cuocthi': cuocthi,
          'mon': mon,
          'nganh': nganh,
          'uid': uid
        }).then((value) {
      return true;
    })
        .catchError((error){
      return false;
    });
  }

  Future<bool> tuyenHocBa(
    String surname,
    String middlename,
    String name,
    String sex,
    String birthDay,
    String email,
    String phone,
    String andress,
    String tinh,
    String truong,
    String nganh,
    String khuvuc,
    String uutien,
    String daihoc,
    String khoi,
    bool nvduhoc,
    String mon1,
    String mon2,
    String mon3,
    String diem1,
    String diem2,
    String diem3,
    bool totnghiep,
    String namtotnghiep,
  ) async {
    CollectionReference users =
        FirebaseFirestore.instance.collection('TuyenHocBa');
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();
    users
        .add({
          'Ho': surname,
          'tendem': middlename,
          'ten': name,
          'gioitinh': sex,
          'ngaysinh': birthDay,
          'diachi': andress,
          'email': email,
          'tinh': tinh,
          'truong': truong,
          'phone': phone,
          'nganh': nganh,
          'khuvuc': khuvuc,
          'uutien': uutien,
          'daihoc': daihoc,
          'khoi': khoi,
          'nvduhoc': nvduhoc,
          'mon1': mon1,
          'mon2': mon2,
          'mon3': mon3,
          'diem1': diem1,
          'diem2': diem2,
          'diem3': diem3,
          'totnghiep': totnghiep,
          'namtotnghiep': namtotnghiep,
          'uid': uid
        })
        .then((value) {
          return true;
    })
        .catchError((error){
          return false;
    });
  }



  Future<bool> tuyenDiem(
      String surname,
      String middlename,
      String name,
      String sex,
      String birthDay,
      String email,
      String phone,
      String andress,
      String tinh,
      String truong,
      String nganh,
      String khuvuc,
      String uutien,
      String daihoc,
      String khoi,
      bool nvduhoc,
      String mon1,
      String mon2,
      String mon3,
      String diem1,
      String diem2,
      String diem3,
      bool totnghiep,
      String namtotnghiep,
      ) async {
    CollectionReference users =
    FirebaseFirestore.instance.collection('TuyenHocBa');
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();
    users
        .add({
      'Ho': surname,
      'tendem': middlename,
      'ten': name,
      'gioitinh': sex,
      'ngaysinh': birthDay,
      'diachi': andress,
      'email': email,
      'tinh': tinh,
      'truong': truong,
      'phone': phone,
      'nganh': nganh,
      'khuvuc': khuvuc,
      'uutien': uutien,
      'daihoc': daihoc,
      'khoi': khoi,
      'nvduhoc': nvduhoc,
      'mon1': mon1,
      'mon2': mon2,
      'mon3': mon3,
      'diem1': diem1,
      'diem2': diem2,
      'diem3': diem3,
      'totnghiep': totnghiep,
      'namtotnghiep': namtotnghiep,
      'uid': uid
    })
        .then((value) {
      return true;
    })
        .catchError((error){
      return false;
    });
  }

  Future loginUserWithEmail(String email, String password) async {
    String retVal = "error";

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
