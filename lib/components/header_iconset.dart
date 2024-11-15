import 'package:flutter/material.dart';

class HeaderIconset extends StatelessWidget {
  // for size of the icon
  final double size;

  const HeaderIconset({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            size: size,
            Icons.search,
            color: Color(0xff000000),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            size: size,
            Icons.more_vert,
            color: Color(0xff000000),
          ),
        )
      ],
    );
  }
}
