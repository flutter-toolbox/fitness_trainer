import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = new GoogleSignIn();

class FirebaseUtility {

  static Future<FirebaseUser> googleLogin() async {
    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
    AuthCredential _authCredential =GoogleAuthProvider.getCredential(
      idToken: googleSignInAuthentication.idToken, 
      accessToken: googleSignInAuthentication.accessToken
    );

    FirebaseUser user = await _auth.signInWithCredential(_authCredential);

    return user;
  }

  static Future<FirebaseUser> emailLogin(String username, String password) async {

    FirebaseUser user = await _auth.signInWithEmailAndPassword(
      email: username,
      password: password,
    );

    return user;
  }


  static googleLogout() async {
    // setState(() {
    //   _googleSignIn.signOut();
    // });
    _googleSignIn.signOut(); //google
  }

  static emailLogout() async {
    _auth.signOut();
  }

  static createUser(String username, String password) async {
    FirebaseUser user = await _auth.createUserWithEmailAndPassword(
      email: username,
      password: password,
    );

  }

}