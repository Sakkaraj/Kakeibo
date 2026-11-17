//
//  SettingsView.swift
//  Kakeibo
//
//  Created by Sakkaraj Tuwajit on 17/11/26.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("appTheme") private var theme: AppTheme = .system
    
    var body: some View {
        Form {
            Picker("Appearance", selection: $theme) {
                ForEach(AppTheme.allCases) {option in
                    Text(option.label).tag(option)
                }
            }
            .pickerStyle(.segmented)
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SettingsView()
}
