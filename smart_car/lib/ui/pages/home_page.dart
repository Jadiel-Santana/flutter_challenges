import 'package:flutter/material.dart';
import '../theme/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundDark,
      // appBar: AppBar(
      //   title: const Text('Smart Car'),
      // ),
      body: Column(
        children: [
          Image.asset('lib/ui/assets/1.png'),
        ],
      ),
    );
  }
}