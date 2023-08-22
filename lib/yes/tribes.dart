class tribes {
  String tribesName;
  int powerBase;
  int defBase;
  int hpBase;
  int manaBase;
  int ccBase;
  int cdBase;

  tribes(this.tribesName, this.powerBase, this.defBase, this.hpBase,
      this.manaBase, this.ccBase, this.cdBase);
}

List<tribes> Tribes = [
  tribes("Warrior", 100, 100, 200, 100, 25, 120),
  tribes("Mage", 170, 30, 100, 200, 5, 190),
  tribes("Archer", 130, 60, 150, 150, 40, 110),
  tribes("Lancer", 120, 80, 200, 100, 20, 140)
];

class skill {
  String skillName;
  int damageSkill;
  int manaCost;
  int levelRequire;
  int cooldownCurrent;
  int cooldownTurn;

  skill(this.skillName, this.damageSkill, this.manaCost, this.levelRequire,
      this.cooldownCurrent, this.cooldownTurn);
}

List<skill> Skill = [];

class weapon {
  String weaponName;
  int weaponPWR;
  int price;

  weapon(this.weaponName, this.weaponPWR, this.price);
}

class armor {
  String armorName;
  int armorDEF;
  int price;

  armor(this.armorName, this.armorDEF, this.price);
}
