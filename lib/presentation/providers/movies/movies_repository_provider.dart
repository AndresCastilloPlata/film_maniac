import 'package:film_maniac/infrastructure/datasources/moviedb_datasource.dart';
import 'package:film_maniac/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Repositorio inmutable, solo lectura
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
