import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Row(
            children: [
              Icon(Icons.location_pin),
              SizedBox(width: 8.0),
              Text(
                'Los Angeles, CA',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Spacer(),
              CircleAvatar(
                radius: 24.0,
                backgroundImage: NetworkImage(
                    'https://avatars0.githubusercontent.com/u/9064066?v=4&s=460'),
                backgroundColor: Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
