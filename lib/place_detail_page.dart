import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/place.dart';

class PlaceDetailPage extends StatelessWidget {
  const PlaceDetailPage({Key? key, required this.place}) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        child: Stack(
          children: [
            Hero(
              tag: place.imageUrl,
              child: Image.network(
                '${place.imageUrl}',
                width: MediaQuery.of(context).size.width,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: PlaceDetail(place: place),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PlaceDetail extends StatelessWidget {
  const PlaceDetail({
    Key? key,
    required this.place,
  }) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: 800),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Container(
              color: Colors.teal.withOpacity(0.5),
              height: MediaQuery.of(context).size.height * 0.46,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_pin, color: Colors.white),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${place.name}',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                style: TextStyle(color: Colors.white),
                                children: [
                                  TextSpan(
                                    text: '${place.location}, ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '${place.country}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(color: Colors.white),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.star_border_rounded, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          '4.5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.thermostat_rounded, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          '22 C',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.calendar_today_rounded, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          '7 Days',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text('Description', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 8),
                    Expanded(
                      child: Text(
                        '${place.description}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Book Now',
                          style: TextStyle(color: Colors.teal),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          elevation: 0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
