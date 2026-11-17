import SwiftUI

@main struct KakeiboApp: App {
    @AppStorage("appTheme") private var theme: AppTheme = .system
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(theme.colorScheme)
        }
    }
}
