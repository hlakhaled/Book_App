import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AssetsData.logo),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: kWhite,
            ))
      ],
    );
  }
}
