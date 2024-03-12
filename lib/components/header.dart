import 'package:flutter/material.dart';
import 'package:teste_dev/components/filter.dart';
import 'package:teste_dev/components/profile_pic.dart';

class Header extends StatelessWidget {
  final String path;

  const Header({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const Filter(),
          ProfilePic(
            path: path,
          ),
        ],
      ),
    );
  }
}
