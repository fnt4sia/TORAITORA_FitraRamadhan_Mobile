import 'dart:math';

import 'package:itc/yes/tribes.dart';

class Character {
  static String username = '';
  static int tribesIndex = 0;
  static String tribes = '';
  static int lv = 1;
  static int gold = 100;
  static String weaponUsed = '';
  static int weaponUsedStat = 0;
  static String armorUsed = '';
  static int armorUsedStat = 0;
  static int exp = 0;
  static int manaMax = 0;
  static int manaCurrent = 0;
  static int hpMax = 0;
  static int hpCurrent = 0;
  static int powerTotal = 0;
  static int cdTotal = 0;
  static int defenseTotal = 0;
  static int ccTotal = 0;

  void levelUpCheck() {
    int levelUpNeed = Character.lv * 50;

    if (Character.exp >= levelUpNeed) {
      Character.lv++;
      Character.exp = Character.exp - levelUpNeed;
    }
  }

  void checkPowerTotal() {
    Character.powerTotal =
        Tribes[Character.tribesIndex].powerBase + Character.weaponUsedStat;
  }

  void checkDefenseTotal() {
    Character.defenseTotal =
        Tribes[Character.tribesIndex].defBase + Character.armorUsedStat;
  }

  void checkHpMax() {
    Character.hpMax = Tribes[Character.tribesIndex].hpBase;
  }

  void checkManaMax() {
    Character.manaMax = Tribes[Character.tribesIndex].manaBase;
  }

  void checkCcTotal() {
    Character.ccTotal = Tribes[Character.tribesIndex].ccBase;
  }

  void checkCdTotal() {
    Character.cdTotal = Tribes[Character.tribesIndex].cdBase;
  }

  void characterDies() {
    Random random = new Random();
    int goldLost = random.nextInt(30) + 1;

    Character.gold -= goldLost;
    Character.hpCurrent = Character.hpMax;
  }

  void updateValue() {
    levelUpCheck();
    checkPowerTotal();
    checkDefenseTotal();
    checkHpMax();
    checkManaMax();
    checkCcTotal();
    checkCdTotal();
  }
}
