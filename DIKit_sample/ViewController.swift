import UIKit
import DIKit

final class ViewController: UIViewController, FactoryMethodInjectable {
    struct Dependency {
        let message: String
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
        print("message:", dependency.message)
    }
}
