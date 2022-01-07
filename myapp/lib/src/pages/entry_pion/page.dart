import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageEntrypion extends StatefulWidget {
  const PageEntrypion({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageEntrypion> {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xFF1B75A7), Color(0xFF35B7BC)],
                stops: [0, 1],
              ),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('''''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                  Text('''''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                  Align(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 5,
                            right: 5,
                            bottom: 5,
                          ),
                          child: Text('''Smartcard''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 5,
                            right: 5,
                            bottom: 5,
                          ),
                          child: Image.network(
                            '''http://www.smartcard-web.eu/pictures/hlava.png''',
                            height:
                                MediaQuery.of(context).size.height * (5 / 100),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    padding: EdgeInsets.zero,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('''''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1),
                        Align(
                          child: Image.network(
                            '''http://www.smartcard-web.eu/pictures/krabice.jpg''',
                            width: 300,
                            height:
                                MediaQuery.of(context).size.height * (50 / 100),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          child: Text('''''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 1),
                        ),
                        Align(
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xFFFFFFFF),
                                  Color(0xFF000000)
                                ],
                                stops: [0, 1],
                              ),
                            ),
                            child: Text('''Zábavné vzdělávací karty''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 1),
                          ),
                        ),
                        Text('''''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
