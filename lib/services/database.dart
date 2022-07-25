import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';
import 'auth.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class Database {
  final connection = FirebaseDatabase.instance.reference();
  DataBase({uid});

  String uid = '';

  Future<void> updateFlutterArticlesUser(user) async {
    final usersReference = connection.child('users').child(user.uid);
    usersReference.set(
      {
        'uid': user.uid,
        'email': user.email,
        // 'password': user.password,

        // 'username': username,
        //add as many attributes as you want
      },
    );
  }

  Future<void> setProfilePic({required String imageUrl}) async {
    String user = await AuthenticationController().currentUser();

    print("SAVINGGG Profile");
    print(user);

    final profileRef = connection.child('users').child(user);
    profileRef.update({
      'profile_pic': imageUrl,
    });
  }

  Future<void> saveProfilePic({imageUrl}) async {
    String user = await AuthenticationController().currentUser();

    print("SAVINGGG PROFILE");
    print(user);

    // String postId = Uuid().v1();
    final profileRef = connection.child('users').child(user);
    profileRef.set({
      'profile_pic': imageUrl,
    });
  }
}
