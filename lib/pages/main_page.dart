import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/primary_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _StartSessionPageState();
}

class _StartSessionPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.black.withOpacity(0.3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppIcons.homeIotDevice,
              AppIcons.listAlt,
              AppIcons.personCelebrate,
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
