import 'package:flutter/material.dart';

class SearchBarModel extends StatefulWidget {
  SearchBarModel({Key? key}) : super(key: key);

  @override
  _SearchBarModelState createState() => _SearchBarModelState();
}

class _SearchBarModelState extends State<SearchBarModel> {
  final TextEditingController _controller = TextEditingController();
  List<String> _suggestions = [];
  bool _showSearchBar = false;

  void _onTextChanged(String value) {
    setState(() {
      // replace this with your own logic for fetching suggestions
      _suggestions = [
        'Apple',
        'Banana',
        'Cherry',
        'Durian',
        'Elderberry',
        'Fig',
        'Grape',
        'Honeydew',
        'Ivy gourd',
        'Jackfruit',
        'Kiwi',
        'Lemon',
        'Mango',
        'Nectarine',
        'Orange',
        'Papaya',
        'Quince',
        'Raspberry',
        'Strawberry',
        'Tangerine',
        'Ugli fruit',
        'Vanilla bean',
        'Watermelon',
        'Xigua (Chinese watermelon)',
        'Yellow passionfruit',
        'Zucchini'
      ]
          .where((suggestion) =>
              suggestion.toLowerCase().startsWith(value.toLowerCase()))
          .toList();
    });
  }

  void _onSearchButtonPressed() {
    setState(() {
      _showSearchBar = true;
    });
  }

  void _onSearchFieldSubmitted(String value) {
    // replace this with your own logic for handling the search query
    print('searching for $value');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _showSearchBar
            ? TextField(
                controller: _controller,
                onChanged: _onTextChanged,
                onSubmitted: _onSearchFieldSubmitted,
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                ),
              )
            : Text('Search Bar with Suggestions'),
      ),
      body: Column(
        children: [
          if (!_showSearchBar)
            ElevatedButton(
              onPressed: _onSearchButtonPressed,
              child: Text('Search'),
            ),
          if (_showSearchBar)
            TextField(
              controller: _controller,
              onChanged: _onTextChanged,
              onSubmitted: _onSearchFieldSubmitted,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          Expanded(
            child: ListView.builder(
              itemCount: _suggestions.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_suggestions[index]),
                  onTap: () {
                    _controller.text = _suggestions[index];
                    setState(() {
                      _suggestions = [];
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
