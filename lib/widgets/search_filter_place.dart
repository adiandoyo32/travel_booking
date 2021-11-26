import 'package:flutter/material.dart';

class SearchFilterPlace extends StatelessWidget {
  const SearchFilterPlace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[500]),
                hintText: 'Search places',
                fillColor: Colors.grey[100],
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        ElevatedButton(
          onPressed: () {},
          child: Icon(Icons.menu, color: Colors.white),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(12),
            primary: Colors.teal,
            onPrimary: Colors.teal,
          ),
        )
      ],
    );
  }
}
