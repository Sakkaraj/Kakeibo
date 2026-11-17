//
//  KakeiboScreen.swift
//  Kakeibo
//
//  Created by Sakkaraj Tuwajit on 17/11/26.
//

import SwiftUI

enum AppRoute: Hashable {
    case settings
}

struct KakeiboScreen<Content: View>: View {
    let title: String
    @ViewBuilder var content: Content
    
    init(_ title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        NavigationStack {
            content
                .navigationTitle(title)
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink(value: AppRoute.settings) {
                            Image(systemName: "ellipsis")
                        }
                    }
                }
                .navigationDestination(for: AppRoute.self) { route in
                    switch route {
                    case .settings: SettingsView()
                    }
                }
        }
    }
}
