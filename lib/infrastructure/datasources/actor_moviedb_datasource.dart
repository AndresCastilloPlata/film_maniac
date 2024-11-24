import 'package:dio/dio.dart';
import 'package:film_maniac/config/constants/environment.dart';
import 'package:film_maniac/domain/datasources/actors_datasource.dart';
import 'package:film_maniac/domain/entities/actor.dart';
import 'package:film_maniac/infrastructure/mappers/actor_mapper.dart';
import 'package:film_maniac/presentation/providers/movies/credits_response.dart';

class ActorMoviedbDatasource extends ActorsDatasource {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
    'api_key': Environment.theMovieDbKey,
    'language': 'es-CO',
  }));

  @override
  Future<List<Actor>> getActorByMovie(String movieId) async {
    final response = await dio.get('/movie/$movieId/credits');

    final castResponse = CreditsResponse.fromJson(response.data);

    List<Actor> actors = castResponse.cast
        .map((cast) => ActorMapper.castToEntity(cast))
        .toList();
    return actors;
  }
}
