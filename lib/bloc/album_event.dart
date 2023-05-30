part of 'album_bloc.dart';

// immutable meaning is that its properties 
// cannot be changed after instantiation.
@immutable
abstract class AlbumEvent {}

@immutable
class AlbumsFetchEvent extends AlbumEvent {}
