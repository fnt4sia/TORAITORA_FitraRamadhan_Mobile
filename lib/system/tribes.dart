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

List<List<skill>> Skill = [
  [
    skill("Heavy Slash", 50, 50, 1, 0, 1),
    skill("ab", 1, 1, 10, 0, 1),
    skill("ba", 2, 2, 20, 0, 1),
    skill("ca", 3, 3, 30, 0, 1)
  ],
  [
    skill("FireBall", 50, 50, 1, 0, 1),
    skill("aq", 1, 1, 10, 0, 1),
    skill("be", 2, 2, 20, 0, 1),
    skill("cd", 3, 3, 30, 0, 1)
  ],
  [
    skill("QuickShot", 50, 50, 1, 0, 1),
    skill("aw", 1, 1, 10, 0, 1),
    skill("bd", 2, 2, 20, 0, 1),
    skill("ca", 3, 3, 30, 0, 1)
  ],
  [
    skill("Piercing Spear", 50, 50, 1, 0, 1),
    skill("ad", 1, 1, 10, 0, 1),
    skill("bf", 2, 2, 20, 0, 1),
    skill("cs", 3, 3, 30, 0, 1)
  ]
];

class weapon {
  String weaponName;
  int weaponPWR;
  int price;

  weapon(this.weaponName, this.weaponPWR, this.price);
}

List<List<weapon>> Weapon = [
  [
    weapon("Rusted Sword", 70, 0),
    weapon("Iron Sword", 85, 200),
    weapon("Diamond Sword", 95, 400),
    weapon("Emerald Sword", 110, 500)
  ],
  [
    weapon("Wooden Staff", 80, 0),
    weapon("Teak Staff", 90, 200),
    weapon("Orc Leather Staff", 105, 400),
    weapon("Ogre Leather Staff", 120, 500)
  ],
  [
    weapon("Wooden Bow", 60, 0),
    weapon("Teak Bow", 70, 200),
    weapon("Orc Leather Bow", 75, 400),
    weapon("Ogre Leather Bow", 90, 500)
  ],
  [
    weapon("Rusted Spear", 55, 0),
    weapon("Iron Spear", 65, 200),
    weapon("Diamond Spear", 75, 400),
    weapon("Emerald Spear", 90, 500)
  ]
];

class armor {
  String armorName;
  int armorDEF;
  int price;

  armor(this.armorName, this.armorDEF, this.price);
}

List<armor> Armor = [
  armor("Rusted Armor", 100, 10),
  armor("Iron Armor", 110, 200),
  armor("Diamond Armor", 120, 400),
  armor("Emerald Armor", 135, 500),
  armor("a", 100, 200),
  armor("as", 300, 500),
  armor("b", 300, 700),
  armor("c", 500, 100),
];
