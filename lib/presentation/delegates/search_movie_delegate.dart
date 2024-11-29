import 'package:flutter/material.dart';

class SearchMovieDelegate extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Buscar...';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [const Text('BuildActions - lista de widgets')];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return const Text('BuildLeading - widget opcionl');
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('BuildResults - widget obligatorio');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text('BuildSuggestions - widget obligatorio');
  }
}
