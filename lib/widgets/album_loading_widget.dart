import 'package:flutter/material.dart';

class AlbumLoadingWidget extends StatelessWidget {
  const AlbumLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
