import 'package:film_maniac/domain/entities/entities.dart';

abstract class ActorsDatasource {
  Future<List<Actor>> getActorByMovie(String movieId);
}
