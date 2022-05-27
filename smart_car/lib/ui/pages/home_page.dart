import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/components.dart';
import '../theme/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundDark,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
          child: Column(
            children: [
              // Stack(
              //   children: [
              //     // Container(
              //     //   height: 300,
              //     //   decoration: BoxDecoration(
              //     //       borderRadius: BorderRadius.circular(32),
              //     //       color: AppColor.backgroundDark,
              //     //       border: const Border(
              //     //         bottom: BorderSide(
              //     //           width: 1,
              //     //           color: AppColor.backgroundDark,
              //     //         ),
              //     //       ),
              //     //       gradient: const LinearGradient(
              //     //         colors: [
              //     //           AppColor.green,
              //     //           AppColor.green,
              //     //         ],
              //     //       )),
              //     // ),
              //     Image.asset(
              //       'lib/ui/assets/1.png',
              //     ),
              //   ],
              // ),
              Image.asset(
                'lib/ui/assets/1.png',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '20',
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.backgroundLight,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 10),
                              child: Text(
                                'Not charging',
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Icon(
                            CupertinoIcons.battery_25,
                            color: AppColor.pinkDark,
                            size: 28,
                          ),
                        ],
                      ),
                      const Text(
                        '%',
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Divider(
                  thickness: 1,
                  height: 1,
                  color: AppColor.white.withOpacity(0.1),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tesla Model S',
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          AppColor.greenDark,
                          AppColor.greenLight,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Start Charging',
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CardExpandedWidget(
                    title: 'Charge now by',
                    primaryLabel: 'Time: 1.5 hrs',
                    secondLabel: 'Energy: 20 kWh',
                  ),
                  Column(
                    children: const [
                      CardWidget(
                        title: 'Remaining Battery\nRange',
                        value: '30',
                        label: 'Miles',
                      ),
                      SizedBox(height: 8),
                      CardWidget(
                        title: 'Remaining Battery\nPercentage',
                        value: '20',
                        label: '%',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
