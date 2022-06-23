import 'package:electros/utils/app_theme.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            elevation: 0,
            shape: const RoundedRectangleBorder(
                side: BorderSide(
                    color: ColorPalette.greyColor,
                    width: 10,
                    style: BorderStyle.solid)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/error.png"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Something went wrong!",
              style: TextStyle(
                  color: ColorPalette.greyColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
