import 'package:electros/utils/routes.dart';
import 'package:electros/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomTheme.whiteColor,
        body: Stack(
          children: [
            const SizedBox(
              height: 36,
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    const Text(
                      "ElectrosIn",
                      style: TextStyle(
                          color: CustomTheme.deepColor,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(child: Image.asset("assets/images/launch.png")),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: FractionallySizedBox(
                    widthFactor: 0.8,
                    child: Text(
                      "Find the latest & Stylish Gadgets",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                FractionallySizedBox(
                  widthFactor: 0.8,
                  child: TextButton(
                      onPressed: () => {
                        Navigator.popAndPushNamed(context, CustomRoutes.dashboardRoute)
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        textStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                        shape: const StadiumBorder(),
                        backgroundColor: CustomTheme.deepColor,
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(color: CustomTheme.whiteColor),
                      )),
                ),
                const SizedBox(
                  height: 64,
                ),
                const Text("By continuing, you aggree to our terms and conditions",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                const SizedBox(
                  height: 24,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
