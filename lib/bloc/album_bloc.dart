import 'package:bloc/bloc.dart';
import 'package:bloc_with_api/api_provider.dart';
import 'package:meta/meta.dart';
import 'package:bloc_with_api/album.dart';
part 'album_event.dart';
part 'album_state.dart';

class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
  AlbumBloc() : super(AlbumInitialState()) {
    AlbumAPIProvider albumAPIProvider = AlbumAPIProvider();
 
    on<AlbumEvent>((event, emit) async {
      emit(AlbumLoadingState());
      try {
        List<Album> myAlbums = await albumAPIProvider.fetchAlbums();
        emit(AlbumLoadedState(albums: myAlbums));
      } catch (e) {
        emit(AlbumErrorState(errorMessage: e.toString()));
      }
    });
  }
}
