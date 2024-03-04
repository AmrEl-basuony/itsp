import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:map_launcher/map_launcher.dart';

showMapsModal(BuildContext context) async {
  final coords = Coords(37.759392, -12.5107336);
  final title = "Some place title";
  final availableMaps = await MapLauncher.installedMaps;

  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              for (AvailableMap map in availableMaps)
                ListTile(
                  onTap: () => map.showMarker(
                    coords: coords,
                    title: title,
                  ),
                  title: Text(map.mapName),
                  leading: SvgPicture.asset(
                    map.icon,
                    height: 30.0,
                    width: 30.0,
                  ),
                ),
              Gap(navBarHeight * 2),
            ],
          ),
        ),
      );
    },
  );
}
