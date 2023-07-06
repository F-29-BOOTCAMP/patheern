class FirebaseNotificationService {
  late final FirebaseMessaging messaging;

  void settingNotification()async{
    await messaging.requestPermission(
      alert: true,
      sound: true,
      badge: true,

    );  
  }

  void connectNotification()async{
    await Firebase.initializeApp();
    messaging = FirebaseMessaging.instance;
    messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      sound: true,
      badge: true,
    );  
    settingNotification()
    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      print("Gelen bildirim başlığı: ${event.notification?.tittle}")

    });
    messaging.getToken().then(value) => log("Token: $value", name: "FCM Token"));
    }
  }