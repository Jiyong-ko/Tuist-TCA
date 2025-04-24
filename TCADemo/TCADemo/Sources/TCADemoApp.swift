import SwiftUI
import ComposableArchitecture

@main
struct TCADemoApp: App {
    var body: some Scene {
        WindowGroup {
            CounterView(
                store: Store(initialState: CounterFeature.State()) {
                    CounterFeature()
                        .dependency(\.numberFact, .liveValue) // Preview용 의존성 주입
                }
            )
        }
    }
}
