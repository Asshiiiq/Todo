import 'package:flutter/material.dart';
import 'package:todo/feature/todo_body/view/widgets/settings_icon_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),

        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            "Settings",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/boche.webp"),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Boby Chemmanur",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Alappuzha, kerala",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(Icons.edit, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Hi! My name is boche, I'm a Chemmanur manager from Alappuzha, kerala",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60),
                SettingsRowidget(
                  icon: Icon(Icons.notifications, color: Colors.black),
                  text: "Notification",
                ),
                SettingsRowidget(
                  icon: Icon(Icons.settings_rounded, color: Colors.black),
                  text: "General",
                ),
                SettingsRowidget(
                  icon: Icon(Icons.person, color: Colors.black),
                  text: "Account",
                ),
                SettingsRowidget(
                  icon: Icon(Icons.report, color: Colors.black),
                  text: "About",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
