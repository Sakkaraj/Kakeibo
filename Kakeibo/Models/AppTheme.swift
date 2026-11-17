//
//  AppTheme.swift
//  Kakeibo
//
//  Created by Sakkaraj Tuwajit on 17/11/26.
//

import SwiftUI

enum AppTheme: String, CaseIterable, Identifiable {
    case system, light, dark
    
    var id: String {rawValue}
    
    var label: String {
        switch self {
        case .system: "System"
        case .light: "Light"
        case .dark: "Dark"
        }
    }
    
    var colorScheme: ColorScheme? {
        switch self {
        case .system : nil
        case .light: .light
        case .dark: .dark
        }
    }
}
