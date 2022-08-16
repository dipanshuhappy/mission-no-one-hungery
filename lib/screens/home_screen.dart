import 'package:flutter/material.dart';
import 'package:full_belly/models/nearest_kitchen.dart';
import 'package:full_belly/screens/profile_screen.dart';
import 'package:full_belly/utils/colors.dart';
import 'package:full_belly/widgets/default_scaffold.dart';
import 'package:full_belly/widgets/green_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _gotoProfileScreen(){
      print("slkdfjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => (const ProfileScreen())));
    };
    TextStyle textStyle = TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w300,
        color: Theme.of(context).colorScheme.secondary,
        shadows: [
          Shadow(
              offset: Offset(0, 5),
              blurRadius: 40,
              color: Theme.of(context).colorScheme.secondary)
        ]);
    final kitchens = <NearestKitchen>[
      NearestKitchen(
          "Plot Nos 8-11, TechZone 2, Greater Noida, Uttar Pradesh 201310",
          "6",
          "Bennett Mess"),
      NearestKitchen("Stellar IT Park", "10", "Barbeque Nation"),
      NearestKitchen("GB road", "2", "Aditya's Dhaba")
    ];
    return DefaultScaffold(
        body: Container(
            decoration: BoxDecoration(gradient: backgroundGradient),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    MotoText(textStyle: textStyle),
                  ]),
                  const GreenChip(),
                  Container(
                      height: 250,
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, position) {
                          return NearestKitchenListItem(
                              kitchen: kitchens[position]);
                        },
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: GreenButton(
                        width: MediaQuery.of(context).size.width,
                        text: Text("Locate More Kitchens"),
                        onPress: () => print("dslf")),
                  ),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GreenButton(
                              width: 100,
                              height: 100,
                              text: Text("Profile"),
                              onPress: () => _gotoProfileScreen()),
                          GreenButton(
                              width: 100,
                              height: 100,
                              text: Text("Delivery History"),
                              onPress: () => print("sjdfl")),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GreenButton(
                          width: 100,
                          height: 100,
                          text: Text("About Us"),
                          onPress: () => print("sjdfl")),
                      GreenButton(
                          width: 100,
                          height: 100,
                          text: Text("Share App"),
                          onPress: () => print("sdf"))
                    ],
                  ),
                ],
              ),
            )));
  }
}

class NearestKitchenListItem extends StatelessWidget {
  NearestKitchenListItem({Key? key, required this.kitchen}) : super(key: key);
  NearestKitchen kitchen;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.store_outlined,
                size: 32, color: Theme.of(context).colorScheme.secondary),
            TextButton(
                onPressed: () => print("skdlfj"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      kitchen.name,
                      style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        kitchen.address,
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    )
                  ],
                )),
            Text(
              "${kitchen.timeToReach} Min Away",
              style: TextStyle(fontSize: 16, color: appBarColor),
            )
          ],
        ),
      ),
    );
  }
}

class GreenChip extends StatelessWidget {
  const GreenChip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
        padding: EdgeInsets.all(8),
        avatar: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          child: const Icon(
            Icons.location_on_sharp,
            color: appBarColor,
            size: 20,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        label: const Text('Kitchens Near By',
            style: TextStyle(fontSize: 20, color: appBarColor)));
  }
}

class MotoText extends StatelessWidget {
  const MotoText({
    Key? key,
    required this.textStyle,
  }) : super(key: key);

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: Padding(
        padding: const EdgeInsets.only(top: 32, left: 16),
        child: Text(
          "Help Solve Hunger With Us",
          style: textStyle,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
