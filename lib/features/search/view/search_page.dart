import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/core/core.dart';

import '../search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class SearchView extends StatelessWidget {
  final TextEditingController searchController;
  const SearchView({required this.searchController, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        children: [
          Text('Pick Location', style: AppTextStyles.h1),
          const SizedBox(height: 30),
          Text(
            'Find the area or city that you want to know the detailed weather info at this time',
            style: AppTextStyles.subtitleText,
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              Expanded(child: SearchTextField(controller: searchController)),
            ],
          ),
        ],
      ),
    );
  }
}

class _SearchPageState extends State<SearchPage> {
  late final TextEditingController _searchController;
  @override
  Widget build(BuildContext context) {
    return SearchView(searchController: _searchController);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }
}
