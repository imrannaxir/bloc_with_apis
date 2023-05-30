import 'package:flutter/material.dart';

class AlbumErrorWidget extends StatelessWidget {
  final String errorMessage;
  const AlbumErrorWidget({required this.errorMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(10),
        child: Text(errorMessage),
      ),
    );
  }
}
