import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/model/user.dart';
import '/utils/user_preferences.dart';
import '/widget/appbar_widget.dart';
import '/widget/button_widget.dart';
import '/widget/numbers_widget.dart';
import '/widget/profile_widget.dart';
import '/widget/chart.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 10),
          ProfileWidget(
            onClicked: () async {},
          ),
          const SizedBox(height: 5),
          buildName(user),
          const SizedBox(height: 5),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 5),
          NumbersWidget(),
          const SizedBox(height: 5),
          const MyHomePage(),
          const SizedBox(height: 5),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
