import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:film_maniac/config/router/app_router.dart';

import 'package:film_maniac/domain/entities/movie.dart';
import 'package:film_maniac/presentation/delegates/search_movie_delegate.dart';
import 'package:film_maniac/presentation/providers/providers.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends ConsumerWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Icon(Icons.movie_outlined, color: colors.primary),
                const SizedBox(width: 5),
                Text('FilmManiac', style: titleStyle),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.search_outlined),
                  onPressed: () {
                    final movieRepository = ref.read(movieRepositoryProvider);

                    showSearch<Movie?>(
                      context: context,
                      delegate: SearchMovieDelegate(
                          searchMovies: movieRepository.searchMovies),
                    ).then(
                      (movie) {
                        if (movie == null) return;
                        if (context.mounted) {
                          context.push('/movie/${movie.id}');
                        }
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
