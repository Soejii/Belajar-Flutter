import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:local_notification/services/notification_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NotificationService.init(flutterLocalNotificationsPlugin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Local Notification',
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => NotificationService.showNotification(
              name: 'suji', title: 'Halo', body: 'ini notif', payload: '123'),
          child: Text('Klik'),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
