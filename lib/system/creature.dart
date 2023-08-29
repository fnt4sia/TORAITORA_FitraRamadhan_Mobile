import 'package:itc/system/character.dart';

class monster {
  String name;
  int hpMax;
  int basePower;
  int baseDef;
  int criticalChance;
  int criticalDamage;
  int goldReward;
  int baseExp;
  late int enemyLv;
  late int enemyPower;
  late int enemyDef;
  late int enemyExp;

  monster(
    this.name,
    this.basePower,
    this.baseDef,
    this.goldReward,
    this.baseExp,
    this.criticalChance,
    this.criticalDamage,
    this.hpMax,
  );

  void defineStat(int index) {
    Monster[index].enemyPower = Monster[index].basePower +
        ((Monster[index].enemyLv * Monster[index].basePower) * 0.05).ceil();
    Monster[index].enemyDef = Monster[index].baseDef +
        ((Monster[index].enemyLv * Monster[index].baseDef) * 0.05).ceil();
    Monster[index].enemyExp = Monster[index].baseExp +
        ((Monster[index].enemyLv - Character.lv) * 5).ceil();
  }
}

List<monster> Monster = [
  monster("Slime", 30, 30, 10, 10, 5, 120, 50),
  monster("Goblin", 50, 50, 20, 30, 10, 120, 100),
  monster("Orc", 40, 100, 30, 40, 15, 130, 150),
  monster("Giant Spider", 80, 60, 40, 40, 20, 130, 170),
  monster("Imps", 20, 200, 30, 50, 25, 130, 250),
  monster("Ogre", 100, 100, 50, 50, 30, 140, 300),
  monster("Wyvern", 150, 100, 70, 80, 30, 150, 350),
  monster("Dragon", 300, 200, 100, 100, 40, 160, 400),
  monster("Hydra", 150, 400, 100, 100, 50, 145, 400)
];
