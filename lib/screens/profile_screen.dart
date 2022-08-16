import 'package:flutter/material.dart';
import 'package:full_belly/utils/colors.dart';
import 'package:full_belly/widgets/default_scaffold.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
        body: Container(
      decoration: BoxDecoration(gradient: backgroundGradient),
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
                backgroundColor: appBarColor,
                radius: 50,
                child: Text(
                  'PP',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
            Row(
              children: [
                Text("name:"),
                Icon(Icons.edit)
              ],
            )
          ],
        ),
      ),
    ));
  }
}
