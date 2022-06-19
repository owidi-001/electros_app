import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({Key? key}) : super(key: key);

  @override
  _RatingBoxState createState() =>_RatingBoxState();
}
class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }
  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }
  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    double size = 20;
    if (kDebugMode) {
      print(_rating);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,

      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (
                _rating >= 1
                    ? Icon(Icons.star, size: size,)
                    : Icon(Icons.star_border, size: size,)
            ),
            color: Colors.red[500], onPressed: _setRatingAsOne, iconSize: size,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (
                _rating >= 2
                    ? Icon(Icons.star, size: size,)
                    : Icon(Icons.star_border, size: size, )
            ),
            color: Colors.red[500],
            onPressed: _setRatingAsTwo,
            iconSize: size,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (
                _rating >= 3 ?
                Icon(Icons.star, size: size,)
                    : Icon(Icons.star_border, size: size,)
            ),
            color: Colors.red[500],
            onPressed: _setRatingAsThree,
            iconSize: size,
          ),
        ),
      ],
    );
  }
}