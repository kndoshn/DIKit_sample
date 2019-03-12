import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private let appResolver = AppResolverImpl()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let vc = appResolver.resolveViewController(message: "Hello")
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }
}
