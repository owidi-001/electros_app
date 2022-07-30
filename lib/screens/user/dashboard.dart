import 'package:electros/utils/theme.dart';
import 'package:electros/widgets/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomTheme.whiteColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(slivers: <Widget>[
            SliverAppBar(
              backgroundColor: CustomTheme.whiteColor,
              leading: InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(
                    "assets/images/user.png",
                    scale: 3.6,
                  ),
                ),
              ),
              centerTitle: true,
              title: const Text(
                "ElectrosIn",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CustomTheme.deepColor),
              ),
              actions: [
                InkWell(
                    onTap: () => Navigator.pop(context),
                    child: IconButton(
                        onPressed: () => {},
                        icon: const Icon(
                          CupertinoIcons.search,
                          color: CustomTheme.deepColor,
                          size: 24,
                        )))
              ],
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            SliverToBoxAdapter(
              child: InkWell(
                onTap: () => {},
                child: Card(
                  color: CustomTheme.deepColor,
                  shadowColor: CustomTheme.primaryColor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: FractionallySizedBox(
                    widthFactor: 0.8,
                    heightFactor: 0.5,
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text("data"),
                              const Text(
                                "Unbelievable Visual & Performance",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: CustomTheme.whiteColor),
                              ),
                              TextButton(
                                onPressed: () => {},
                                style: const ButtonStyle(
                                  alignment: Alignment.bottomLeft,
                                ),
                                child: const Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      fontSize: 12, color: CustomTheme.lightColor),
                                ),
                              )
                            ],
                          ),
                          Flexible(
                              child: Image.asset("assets/images/macbook1.png")),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
        bottomNavigationBar: const BottomAppNavigation());
  }
}
