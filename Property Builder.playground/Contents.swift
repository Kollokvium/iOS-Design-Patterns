import UIKit

class SpecificViewBuilder {
    func build() -> UIView {
        let customizedView = UIView()
        customizedView.backgroundColor = .yellow
        customizedView.layer.cornerRadius = 10
        customizedView.alpha = 0.75
        customizedView.isUserInteractionEnabled = false
        return customizedView
    }
}

SpecificViewBuilder().build()
