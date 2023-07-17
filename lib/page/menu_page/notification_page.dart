import 'package:flutter/material.dart';
import 'package:patheern/Service/notification_box.dart';

class BildirimSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFA5805),
        title: Text('Bildirimler'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: Icon(
                Icons.notifications_active,
                color: Color(0xFF0A426F),
              ),
              title: Text(
                'Yeni bildirim',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationBox_(
                    title: 'Yeni bildirim',
                  )),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.notifications_active,
                color: Color(0xFF0A426F),
              ),
              title: Text(
                'Başka bir bildirim',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Bildirime tıklanıldığında yapılacak işlemler
              },
            ),
            Divider(),
            // Diğer bildirimler buraya eklenir
          ],
        ),
      ),
    );
  }
}
