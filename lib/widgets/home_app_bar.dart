import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Row(
            children: [
              Icon(Icons.location_pin, color: Theme.of(context).primaryColor),
              const SizedBox(width: 8.0),
              Text(
                'Los Angeles, CA',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                )),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 24.0,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/3346368?v=4'),
                backgroundColor: Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
