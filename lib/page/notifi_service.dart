import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:local_notification/Services/notifi_service.dart';

import 'notifi_service.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('flutter_logo');

    var initializationSettingsIOS = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
        onDidReceiveLocalNotification:
            (int id, String? title, String? body, String? payload) async {});

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await notificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse:
            (NotificationResponse notificationResponse) async {});
  }

  notificationDetails() {
    var Importance;
    return const NotificationDetails(
        android: AndroidNotificationDetails('channelId', 'channelName',
            importance: Importance.max),
        iOS: DarwinNotificationDetails());
  }

  Future showNotification(
      {int id = 0, String? title, String? body, String? payLoad}) async {
    return notificationsPlugin.show(
        id, title, body, await notificationDetails());
  }
  
  DarwinNotificationDetails() {}
  
  AndroidNotificationDetails(String s, String t, {required importance}) {}
  
  InitializationSettings({required android, required iOS}) {}
  
  DarwinInitializationSettings({required bool requestAlertPermission, required bool requestBadgePermission, required bool requestSoundPermission, required Future<Null> Function(int id, String? title, String? body, String? payload) onDidReceiveLocalNotification}) {}
  
  static FlutterLocalNotificationsPlugin() {}
  
}