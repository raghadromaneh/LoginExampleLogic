import 'dart:io';

import 'package:flutter/material.dart';
import 'package:login/components/DrawerContainer.dart';
import 'package:login/screens/login.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

List Setting = ["Settings", "Privacy", "Settings and Privacy"];
String SelectedItem = "Settings and Privacy";

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Image.asset(
                      "images/User.png",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              DrawerContainer(
                ContainerIcon: Icons.save_rounded,
                ContainerTitle: "Saved",
                OnPressing: () {},
              ),
              Divider(height: 15, thickness: 2),
              DrawerContainer(
                ContainerIcon: Icons.settings,
                ContainerTitle: "Settings & privacy",
                OnPressing: () {},
              ),
              Divider(height: 15, thickness: 2),
              DrawerContainer(
                ContainerIcon: Icons.policy,
                ContainerTitle: "Policy",
                OnPressing: () {},
              ),
              Divider(height: 15, thickness: 2),
              DrawerContainer(
                ContainerIcon: Icons.help_center,
                ContainerTitle: "Help & support",
                OnPressing: () {},
              ),
              Divider(height: 15, thickness: 2),
              DrawerContainer(
                ContainerIcon: Icons.exit_to_app,
                ContainerTitle: "Exit the app",
                OnPressing: () {
                  setState(() {
                    exit(0);
                  });
                },
              ),
              Divider(height: 15, thickness: 2),
              DrawerContainer(
                ContainerIcon: Icons.logout,
                ContainerTitle: "Logout",
                OnPressing: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              child: Icon(Icons.menu),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: Color.fromARGB(255, 4, 90, 104),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 171, 170, 170)))),
                child: Text(
                  "Welcome\n$CurrentEmail ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
