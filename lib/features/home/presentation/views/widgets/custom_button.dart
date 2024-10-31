import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final bool isLeft;
  final void Function()? onPressed;
  final String text;
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.color,
      required this.textColor,
      required this.text,
      this.isLeft = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: MediaQuery.of(context).size.height * .060,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: isLeft
                ? const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)))
                : const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle15.copyWith(color: textColor),
          )),
    );
  }
}
