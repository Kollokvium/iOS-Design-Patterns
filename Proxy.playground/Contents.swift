import UIKit

final class Portal: PortalSystem {
    func open() {
        print("Portal Open")
    }
    
    func close() {
        print("Portal Close")
    }
}

protocol PortalSystem {
    func open()
    func close()
}

final class ProxyPortal: PortalSystem {
    private var portal: Portal = Portal()

    func open() {
        print("Additional ingridients for portal")
        portal.open()
    }
    
    func close() {
        portal.close()
    }
}

let portal = ProxyPortal()
portal.open()
