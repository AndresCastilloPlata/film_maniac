import 'package:film_maniac/domain/datasources/actors_datasource.dart';
import 'package:film_maniac/domain/entities/actor.dart';
import 'package:film_maniac/domain/repositories/actors_repository.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorsDatasource datasource;

  ActorRepositoryImpl(this.datasource);

  @override
  Future<List<Actor>> getActorByMovie(String movieId) {
    return datasource.getActorByMovie(movieId);
  }
}
