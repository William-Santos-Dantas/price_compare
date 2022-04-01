import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  const SubmitButton({Key? key, required this.text, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: Colors.amber,
      ),
      child: MaterialButton(
        highlightColor: Colors.transparent,
        splashColor: Colors.white,
        child: Padding(
          padding:const EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              text,
              style:const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontFamily: "WorkSansBold",
              ),
              maxLines: 1,
            ),
          ),
        ),
        onPressed: onPress,
      ),
    );
  }
}
