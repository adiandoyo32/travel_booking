import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
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
            ),
            Positioned(
              top: 24,
              left: 0,
              right: 0,
              child: FadeInUp(
                duration: Duration(milliseconds: 400),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Theme.of(context).primaryColor,
                          size: 16,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          elevation: 0,
                          padding: EdgeInsets.all(14),
                          primary: Colors.white,
                          onPrimary: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.bookmark_outline_rounded,
                          color: Theme.of(context).primaryColor,
                          size: 16,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          elevation: 0,
                          padding: EdgeInsets.all(14),
                          primary: Colors.white,
                          onPrimary: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
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
              color: Theme.of(context).primaryColor.withOpacity(0.6),
              height: MediaQuery.of(context).size.height * 0.43,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/location-pin.svg',
                            color: Colors.white),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${place.name}',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              )),
                            ),
                            Text.rich(
                              TextSpan(
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(color: Colors.white)),
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
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          )),
                        ),
                        const Spacer(),
                        SvgPicture.asset('assets/icons/thermometer.svg',
                            color: Colors.white),
                        const SizedBox(width: 4),
                        Text(
                          '22??C',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          )),
                        ),
                        const Spacer(),
                        SvgPicture.asset('assets/icons/calender.svg',
                            color: Colors.white),
                        const SizedBox(width: 4),
                        Text(
                          '7 Days',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Description',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Text(
                        '${place.description}',
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Book Now',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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
