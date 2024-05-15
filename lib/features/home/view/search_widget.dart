import 'package:flutter/material.dart';
import 'package:m2_test/features/home/data/crypto_names_model/crypto_names_model.dart';

class SearchWidget extends StatefulWidget {
  final List<CryptoNamesModel> searchList;
  const SearchWidget({Key? key, required this.searchList}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onTap: () {
            showSearch(
                context: context,
                delegate: SearchField(searchList: widget.searchList));
          },
          decoration: const InputDecoration(hintText: 'Search cryptocurrency'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {
              showSearch(
                  context: context,
                  delegate: SearchField(searchList: widget.searchList));
            },
          )
        ],
      ),
    );
  }
}

class SearchField extends SearchDelegate {
  late List<CryptoNamesModel> searchList;
  SearchField({
    required this.searchList,
  });

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in searchList) {
      if (item.asset.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item.asset);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in searchList) {
      if (item.asset.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item.asset);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
