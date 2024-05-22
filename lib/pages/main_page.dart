import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/primary_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _StartSessionPageState();
}

class _StartSessionPageState extends State<MainPage> {
  int selectedIndex = 0;

  onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.black.withOpacity(0.3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavigationItem(
                onTap: () => onItemTapped(0),
                child: AppIcons.homeIotDevice,
                active: selectedIndex == 0,
              ),
              NavigationItem(
                onTap: () => onItemTapped(1),
                child: AppIcons.listAlt,
                active: selectedIndex == 1,
              ),
              NavigationItem(
                onTap: () => onItemTapped(2),
                child: AppIcons.personCelebrate,
                active: selectedIndex == 2,
              ),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          title: const Text('Sauna Zen'),
          backgroundColor: Colors.black.withOpacity(0.2),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: AppColors.primaryGradient,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryButton(),
              ],
            )));
  }
}

class NavigationItem extends StatefulWidget {
  final Widget child;
  final Function onTap;
  final bool active;

  const NavigationItem({super.key, required this.child, required this.onTap, required this.active});

  @override
  State<NavigationItem> createState() => _NavigationItemState();
}

class _NavigationItemState extends State<NavigationItem> {
  backgroundColor() {
    return widget.active ? Colors.black.withOpacity(0.2) : Colors.transparent;
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.black.withOpacity(0.2),
      splashColor: Colors.black.withOpacity(0.2),
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      onHover: (value) {
        setState(() {
        });
      },
      onTap: () {
        setState(() {
        });
        widget.onTap();
      },
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: backgroundColor(),
          ),
          child: widget.child),
    );
  }
}
