import 'package:electros/utils/theme.dart';
import 'package:electros/widgets/bottom_navigation.dart';
import 'package:electros/widgets/category_card.dart';
import 'package:electros/widgets/category_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:electros/services/product.service.dart';

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
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Card(
                    color: CustomTheme.deepColor,
                    shadowColor: CustomTheme.primaryColor,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        // To overflow
                        Positioned(
                            top: 0,
                            right: 0,
                            height: 150,
                            child:
                                Image.asset("assets/images/mac-featured.png")),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Macbook Pro M2",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.normal,
                                    color: CustomTheme.whiteColor),
                              ),
                              const FractionallySizedBox(
                                  widthFactor: 0.6,
                                  child: Text(
                                    "Unbelievable Visual & Performance",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: CustomTheme.whiteColor),
                                  )),
                              ElevatedButton(
                                  onPressed: () => {},
                                  child: const Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        color: CustomTheme.whiteColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 32),
            ),
            // Category list
            SliverToBoxAdapter(
              child: categoryCardListView(),
            ),
          ]),
        ),
        bottomNavigationBar: const BottomAppNavigation());
  }
}
