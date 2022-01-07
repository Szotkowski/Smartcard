import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageHomepage extends StatefulWidget {
  const PageHomepage({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageHomepage> {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: // Smartcard

            Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color(0xFF1B75A7),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text('''Smartcard''',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.none,
                  ),
                ),
                textAlign: TextAlign.left,
                maxLines: 1),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFF1B75A7),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: GoogleAuthButton(
                      onPressed: () async {},
                    ),
                  ),
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: FacebookAuthButton(
                      onPressed: () async {},
                    ),
                  ),
                  Text('''''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 50,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
