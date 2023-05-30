part of 'album_bloc.dart';

@immutable
abstract class AlbumState {}

@immutable
class AlbumInitialState extends AlbumState {}

@immutable
class AlbumLoadingState extends AlbumState {}

@immutable
class AlbumLoadedState extends AlbumState {
  final List<Album> albums;
  AlbumLoadedState({required this.albums});
}

@immutable
class AlbumErrorState extends AlbumState {
  final String errorMessage;
  AlbumErrorState({required this.errorMessage});
}
