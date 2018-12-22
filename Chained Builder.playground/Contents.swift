import UIKit

struct Orc {
    lazy var name = String()
    lazy var weapon = String()
    lazy var armor = String()
}

class OrcModelBuilder {
    private var orcComponents: Orc
    
    init() {
        orcComponents = Orc()
    }
    
    func setName(name: String) -> OrcModelBuilder {
        self.orcComponents.name = name
        return self
    }
    
    func setWeapon(weapon: String) -> OrcModelBuilder {
        self.orcComponents.weapon = weapon
        return self
    }
    
    func setArmor(armor: String) -> OrcModelBuilder {
        self.orcComponents.armor = armor
        return self
    }
    
    func buildOrc() -> Orc? {
        return self.orcComponents
    }
}

let orcBuilder = OrcModelBuilder()
    .setName(name: "Urim")
    .setWeapon(weapon: "杖")
    .setArmor(armor: "Leather")
    .buildOrc()

print(orcBuilder ?? "")
