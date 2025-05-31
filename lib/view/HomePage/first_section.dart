import 'package:flutter/cupertino.dart';
//import 'dart:html' as html;  //using url_launcher/url_launcher.dart instead
import 'package:url_launcher/url_launcher.dart';

import '../../utility/text_styles.dart';

class BecomeASkilledTechTalent extends StatefulWidget {
  const BecomeASkilledTechTalent({super.key});

  @override
  State<BecomeASkilledTechTalent> createState() =>
      _BecomeASkilledTechTalentState();
}

class _BecomeASkilledTechTalentState extends State<BecomeASkilledTechTalent> {
  ///NEW WINDOW URL GENERIC LAUCHER METHOD
  ///USING dart:html as html which is not advisable because it only workd for web apps and not on mobile and desktop applications
  // void launchURLInNewTab(String url) {
  //   html.window.open(url, '_blank');
  // }

  void launchURLInNewTab(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication, // opens in new tab on web
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 600
        ? Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 9,
                ),
                child: const Align(
                  heightFactor: 0.5,
                  alignment: Alignment.center,
                  child: HeadlineText(
                      maxLines: 3,
                      text:
                          "Become a Skilled Tech Talent Without Prior Knowledge "),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 9),
                child: const Align(
                  alignment: Alignment.center,
                  child: BodyText(
                    text:
                        "Get the skills and experience you need to become a global tech talent and be a part of our thriving tech community and talent pool.",
                    alignLess600: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // MainButton(
              //     title: "Learn more",
              //     function: () {
              //       launchURLInNewTab(
              //           'https://remobridgeapplication.vercel.app');
              //       // Get.toNamed('/learnMore');
              //     }),
            ],
          )
        : SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          //  width: 500,
                          child: Align(
                            heightFactor: 0.5,
                            alignment: Alignment.center,
                            child: HeadlineText(
                              maxLines: 3,
                              text:
                                  "Become a Skilled Tech Talent Without Prior Knowledge ",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: BodyText(
                            text:
                                "Get the skills and experience you need to become a global techtalent and be a part of our thriving tech community and talent pool.",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // MainButton(
                        //     title: "Learn more",
                        //     function: () {
                        //       launchURLInNewTab(
                        //           'https://remobridgeapplication.vercel.app');
                        //       // Get.toNamed('/learnMore');
                        //     })
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 8,
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      "assets/images/talents_illustration.png",
                      width: 500,
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
