import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFilterPlace extends StatelessWidget {
  const SearchFilterPlace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, right: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child:
                        Icon(Icons.search, color: Colors.grey[500], size: 24),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.grey[500])),
                  hintText: 'Search places',
                  fillColor: Colors.grey[100],
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {},
            child: SvgPicture.asset(
              'assets/icons/slider.svg',
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: CircleBorder(),
              padding: EdgeInsets.all(12),
              primary: Theme.of(context).primaryColor,
              onPrimary: Colors.teal,
            ),
          )
        ],
      ),
    );
  }
}
