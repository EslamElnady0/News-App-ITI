import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Text(
              "See All",
              style: TextStyle(color: Color(0xff0080ff)),
            ),
          ),
          SvgPicture.asset("assets/images/Combined Shape.svg", width: 14),
        ],
      ),
    );
  }
}
