import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print("title:${message.notification?.title}");
  print("body:${message.notification?.body}");
  print("payload:${message.data}");
}

class FirebaseNotifications {
  final firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await firebaseMessaging.requestPermission();
    final fCMToken = await firebaseMessaging.getToken();
    print("$fCMToken");
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }
}
