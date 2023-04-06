import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final _notif = FlutterLocalNotificationsPlugin();

  static Future init(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var androidInit = new AndroidInitializationSettings('mipmap/ic_launcher');
    var initSetiing = new InitializationSettings(
      android: androidInit,
    );
    await flutterLocalNotificationsPlugin.initialize(initSetiing);
  }

  static Future _notificationDetail() async {
    return NotificationDetails(
        android: AndroidNotificationDetails(
          'channel id',
          'channel name',
          channelDescription: 'channel desc',
          importance: Importance.max,
        ),
        iOS: DarwinNotificationDetails());
  }

  static Future showNotification({
    int id = 0,
    String? name,
    String? title,
    String? body,
    String? payload,
  }) async =>
      _notif.show(
        id,
        title,
        body,
        await _notificationDetail(),
        payload: payload,
      );
}
