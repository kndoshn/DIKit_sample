import Foundation
import DIKit

protocol AppResolver: Resolver {
    var appResolver: AppResolver { get }
    func provideNestedMessage() -> NestedMessage
}

final class AppResolverImpl: AppResolver {
    var appResolver: AppResolver { return self }
    
    func provideNestedMessage() -> NestedMessage {
        return .init(message: "from nested")
    }
}
