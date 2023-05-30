import 'package:bloc_with_api/album.dart';
import 'package:flutter/material.dart';

class AlbumLoadedWidget extends StatelessWidget {
  final List<Album> albums;
  const AlbumLoadedWidget({required this.albums, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: albums.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(albums[index].id.toString()),
            ),
            title: Text(albums[index].title!),
            subtitle: Text(albums[index].userId.toString()),
          );
        },
      ),
    );
  }
}
