import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ExpertTeamMemberCard extends StatelessWidget {
  const ExpertTeamMemberCard(
      {required this.title,
      required this.subTitle,
      required this.body,
      super.key});
  final String title, subTitle, body;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: MediaQuery.of(context).size.width *
            (ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? 0.2 : 0.4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(person1AssetPNG),
            fit: BoxFit.fill,
          ),
        ),
        child: AspectRatio(
          aspectRatio: 159 / 302,
          child: Column(
            children: [
              Spacer(),
              Flexible(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12).copyWith(bottom: 16),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(16)),
                    gradient: overImageGradient,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        style: bold14,
                      ),
                      Text(
                        subTitle,
                        style: normal11,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        body,
                        style: normal10,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      Gap(8),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.squareSnapchat,
                            color: Colors.white,
                            size: 19,
                          ),
                          Gap(8),
                          FaIcon(
                            FontAwesomeIcons.squareFacebook,
                            color: Colors.white,
                            size: 19,
                          ),
                          Gap(8),
                          FaIcon(
                            FontAwesomeIcons.squareBehance,
                            color: Colors.white,
                            size: 19,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
