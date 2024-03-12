import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  final String path;

  const ProfilePic({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      width: (MediaQuery.of(context).size.width * 0.2) - 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: MediaQuery.of(context).size.width < 800 ? () {} : null,
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(360),
              child: Image.network(
                path,
              ),
            ),
          ),
          Visibility(
            visible: MediaQuery.of(context).size.width > 800,
            child: TextButton(
              child: const Text('Editar foto'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
