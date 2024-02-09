import 'package:flutter/material.dart';

import '/button_icon.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 34, 34, 46)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.e_mobiledata, // Remplacez cette icône par celle de votre choix
                color: Colors.blue,
                size: 100,
              ),
              SizedBox(
                child: Text(
                    'Shop',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
          MyButtonIcon(onTap: () => print('data'), iconData: Icons.dashboard, text: "Dashboard", isSelected: true),
          MyButtonIcon(onTap: () => print('data'), iconData: Icons.money, text: "Transactions", isSelected: false),
          MyButtonIcon(onTap: () => print('data'), iconData: Icons.task, text: "Tasks", isSelected: false),
          MyButtonIcon(onTap: () => print('data'), iconData: Icons.document_scanner, text: "Documents", isSelected: false),
          MyButtonIcon(onTap: () => print('data'), iconData: Icons.store, text: "Store", isSelected: false),
          MyButtonIcon(onTap: () => print('data'), iconData: Icons.notification_add, text: "Notifications", isSelected: false),
          MyButtonIcon(onTap: () => print('data'), iconData: Icons.settings_rounded, text: "Settings", isSelected: false),
        ],
      ),
    );
  }
}