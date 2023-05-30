import 'package:flutter/material.dart';

class AlbumInitialWidget extends StatelessWidget {
  const AlbumInitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'CLICK TO LOAD DATA',
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }
}
