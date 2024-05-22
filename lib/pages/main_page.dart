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

  List<Widget> navIcons = [
    AppIcons.localFireDepartment,
    AppIcons.personCelebrate,
    AppIcons.homeIotDevice,
    AppIcons.listAlt,
  ];

  List<Widget> buildNavigationItems() {
    List<Widget> items = [];
    for (int i = 0; i < navIcons.length; i++) {
      items.add(NavigationItem(
        onTap: () => onItemTapped(i),
        active: selectedIndex == i,
        child: navIcons[i],
      ));
    }
    return items;
  }

  onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: 64,
          color: Colors.black.withOpacity(0.3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: buildNavigationItems(),
          ),
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
            toolbarHeight: 48,
            title: const Text(appTitle),
            titleTextStyle: AppStyles.appBarTitle,
            backgroundColor: Colors.black.withOpacity(0.2),
            actionsIconTheme: const IconThemeData(color: Colors.white),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  icon: const Icon(Icons.account_circle),
                  onPressed: () {},
                ),
              ),
            ]),
        body: Container(
            padding:
                const EdgeInsets.only(top: 60, bottom: 80, left: 16, right: 16),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: AppColors.primaryGradient,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
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

  const NavigationItem(
      {super.key,
      required this.child,
      required this.onTap,
      required this.active});

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
        setState(() {});
      },
      onTap: () {
        setState(() {});
        widget.onTap();
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: backgroundColor(),
          ),
          child: widget.child),
    );
  }
}
