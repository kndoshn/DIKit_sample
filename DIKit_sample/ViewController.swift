import UIKit
import DIKit

struct NestedMessage {
    let message: String
}

final class ViewController: UIViewController, FactoryMethodInjectable {
    struct Dependency {
        let message: String
        let nested: NestedMessage
    }
    
    static func makeInstance(dependency: Dependency) -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! ViewController
        vc.dependency = dependency
        return vc
    }
    
    private var dependency: Dependency!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(dependency.message, dependency.nested.message)
    }
}
