// To parse this JSON data, do
//
//     final valorantModal = valorantModalFromJson(jsonString);

import 'dart:convert';

ValorantModal valorantModalFromJson(String str) =>
    ValorantModal.fromJson(json.decode(str));

String valorantModalToJson(ValorantModal data) => json.encode(data.toJson());

class ValorantModal {
  String uuid;
  String displayName;
  String description;
  String developerName;
  dynamic characterTags;
  String displayIcon;
  String displayIconSmall;
  String bustPortrait;
  String fullPortrait;
  String fullPortraitV2;
  String killfeedPortrait;
  String background;
  List<String> backgroundGradientColors;
  String assetPath;
  bool isFullPortraitRightFacing;
  bool isPlayableCharacter;
  bool isAvailableForTest;
  bool isBaseContent;
  Role role;
  dynamic recruitmentData;
  List<Ability> abilities;
  dynamic voiceLine;

  ValorantModal({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.developerName,
    required this.characterTags,
    required this.displayIcon,
    required this.displayIconSmall,
    required this.bustPortrait,
    required this.fullPortrait,
    required this.fullPortraitV2,
    required this.killfeedPortrait,
    required this.background,
    required this.backgroundGradientColors,
    required this.assetPath,
    required this.isFullPortraitRightFacing,
    required this.isPlayableCharacter,
    required this.isAvailableForTest,
    required this.isBaseContent,
    required this.role,
    required this.recruitmentData,
    required this.abilities,
    required this.voiceLine,
  });

  factory ValorantModal.fromJson(Map<String, dynamic> json) => ValorantModal(
        uuid: json["uuid"],
        displayName: json["displayName"],
        description: json["description"],
        developerName: json["developerName"],
        characterTags: json["characterTags"],
        displayIcon: json["displayIcon"],
        displayIconSmall: json["displayIconSmall"],
        bustPortrait: json["bustPortrait"],
        fullPortrait: json["fullPortrait"],
        fullPortraitV2: json["fullPortraitV2"],
        killfeedPortrait: json["killfeedPortrait"],
        background: json["background"],
        backgroundGradientColors:
            List<String>.from(json["backgroundGradientColors"].map((x) => x)),
        assetPath: json["assetPath"],
        isFullPortraitRightFacing: json["isFullPortraitRightFacing"],
        isPlayableCharacter: json["isPlayableCharacter"],
        isAvailableForTest: json["isAvailableForTest"],
        isBaseContent: json["isBaseContent"],
        role: Role.fromJson(json["role"]),
        recruitmentData: json["recruitmentData"],
        abilities: List<Ability>.from(
            json["abilities"].map((x) => Ability.fromJson(x))),
        voiceLine: json["voiceLine"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "description": description,
        "developerName": developerName,
        "characterTags": characterTags,
        "displayIcon": displayIcon,
        "displayIconSmall": displayIconSmall,
        "bustPortrait": bustPortrait,
        "fullPortrait": fullPortrait,
        "fullPortraitV2": fullPortraitV2,
        "killfeedPortrait": killfeedPortrait,
        "background": background,
        "backgroundGradientColors":
            List<dynamic>.from(backgroundGradientColors.map((x) => x)),
        "assetPath": assetPath,
        "isFullPortraitRightFacing": isFullPortraitRightFacing,
        "isPlayableCharacter": isPlayableCharacter,
        "isAvailableForTest": isAvailableForTest,
        "isBaseContent": isBaseContent,
        "role": role.toJson(),
        "recruitmentData": recruitmentData,
        "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
        "voiceLine": voiceLine,
      };
}

class Ability {
  String slot;
  String displayName;
  String description;
  String displayIcon;

  Ability({
    required this.slot,
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        slot: json["slot"],
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
      );

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
      };
}

class Role {
  String uuid;
  String displayName;
  String description;
  String displayIcon;
  String assetPath;

  Role({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.displayIcon,
    required this.assetPath,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        uuid: json["uuid"],
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
        "assetPath": assetPath,
      };
}
