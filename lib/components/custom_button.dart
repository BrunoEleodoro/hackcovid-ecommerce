import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  var onPressed;
  double elevation;
  var text;
  double radius;

  CustomButton({this.onPressed, this.elevation, this.text, this.radius});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      child: Card(
        elevation: elevation,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius))),
        margin: const EdgeInsets.all(0.0),
        child: Container(
          margin: const EdgeInsets.all(0),
          width: double.maxFinite,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              gradient: LinearGradient(
                  colors: [Color(0xFF667eea), Color(0xFF64b0fc)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
