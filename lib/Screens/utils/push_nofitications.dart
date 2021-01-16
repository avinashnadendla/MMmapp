// import 'dart:io';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
//
// class PushNotificationsManager {
//
//   PushNotificationsManager._();
//
//   factory PushNotificationsManager() => _instance;
//
//   static final PushNotificationsManager _instance = PushNotificationsManager._();
//
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
//   bool _initialized = false;
//
//   Future<void> init() async {
//     if (!_initialized) {
//       // For iOS request permission first.
//       _firebaseMessaging.requestNotificationPermissions();
//       _firebaseMessaging.configure();
//
//       // For testing purposes print the Firebase Messaging token
//       String token = await _firebaseMessaging.getToken();
//       print("FirebaseMessaging token: $token");
//
//       _initialized = true;
//     }
//   }
//   void registerNotification() {
//     _firebaseMessaging.requestNotificationPermissions();
//
//     _firebaseMessaging.configure(onMessage: (Map<String, dynamic> message) {
//       print('onMessage: $message');
//       Platform.isAndroid
//           ? showNotification(message['notification'])
//           : showNotification(message['aps']['alert']);
//       return;
//     }, onResume: (Map<String, dynamic> message) {
//       print('onResume: $message');
//       return;
//     }, onLaunch: (Map<String, dynamic> message) {
//       print('onLaunch: $message');
//       return;
//     });
//
//     _firebaseMessaging.getToken().then((token) {
//       print('token: $token');
//       Firestore.instance
//           .collection('users')
//           .document(currentUserId)
//           .updateData({'pushToken': token});
//     }).catchError((err) {
//       print("error");
//     });
//   }
// }