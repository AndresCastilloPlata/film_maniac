import 'package:film_maniac/infrastructure/datasources/actor_moviedb_datasource.dart';
import 'package:film_maniac/infrastructure/repositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Repositorio inmutable, solo lectura

final actorsRepositoryProvider = Provider((ref) {
  return ActorRepositoryImpl(ActorMovieDbDatasource());
});
