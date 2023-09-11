import 'package:itc/system/tribes.dart';

import 'character.dart';

class Inventory {
  static List<String> inventoryBackpack = [];
  static int inventorySlot = 10;

  int checkInventorySlot() {
    int availableSlot = inventoryBackpack.length + 1;
    if (availableSlot <= inventorySlot)
      return availableSlot;
    else
      return -1;
  }

  void addItem(String itemInput) {
    inventoryBackpack.add(itemInput);
  }

  void removeItem(int removeIndex) {
    inventoryBackpack.removeAt(removeIndex);
  }

  bool sameItemCheck(String itemCheck) {
    for (int i = 0; i < inventorySlot; i++) {
      if (itemCheck == inventoryBackpack[i]) return true;
    }
    return false;
  }

  void useItem(String itemUse) {
    for (int i = 0; i < 4; i++) {
      if (itemUse == Weapon[Character.tribesIndex][i].weaponName) {
        Character.weaponUsed = Weapon[Character.tribesIndex][i].weaponName;
        Character.weaponUsedStat = Weapon[Character.tribesIndex][i].weaponPWR;
      }
    }

    for (int i = 0; i < 4; i++) {
      if (itemUse == Armor[i].armorName) {
        Character.armorUsed = Armor[i].armorName;
        Character.armorUsedStat = Armor[i].armorDEF;
      }
    }
  }
}
