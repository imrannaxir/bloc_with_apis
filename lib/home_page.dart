import 'package:bloc_with_api/bloc/album_bloc.dart';
import 'package:bloc_with_api/widgets/album_error_widget.dart';
import 'package:bloc_with_api/widgets/album_initial_widget.dart';
import 'package:bloc_with_api/widgets/album_loaded_widget.dart';
import 'package:bloc_with_api/widgets/album_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//
//
//

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AlbumBloc albumBloc = context.read<AlbumBloc>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('BLOC With APIs'),
        centerTitle: true,
      ),
      body: myHomePage(albumBloc),
      floatingActionButton: myFloatingActionButton(albumBloc),
    );
  }

  Widget myHomePage(albumBloc) {
    return BlocBuilder<AlbumBloc, AlbumState>(
      bloc: albumBloc,
      builder: (context, state) {
        if (state is AlbumInitialState) {
          return const AlbumInitialWidget();
        } else if (state is AlbumLoadingState) {
          return const AlbumLoadingWidget();
        } else if (state is AlbumLoadedState) {
          return AlbumLoadedWidget(albums: state.albums);
        } else {
          return AlbumErrorWidget(
              errorMessage: (state as AlbumErrorState).errorMessage);
        }
      },
    );
  }

  Widget myFloatingActionButton(albumBloc) {
    return FloatingActionButton(
      onPressed: () {
        albumBloc.add(AlbumsFetchEvent());
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
