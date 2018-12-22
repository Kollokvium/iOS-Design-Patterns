import UIKit

extension UIView {
    static func build(with myCustomView: (UIView) -> ()) -> UIView {
        let view = UIView(frame: .zero)
        myCustomView(view)
        return view
    }
}

let someOtherView = UIView.build { view in
    view.backgroundColor = .yellow
    view.isHidden = false
    view.alpha = 1
    view.frame.size.width = 100
    view.frame.size.height = 100
}

print(someOtherView)
