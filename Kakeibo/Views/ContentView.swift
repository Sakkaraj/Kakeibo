//
//  ContentView.swift
//  Kakeibo
//
//  Created by Sakkaraj Tuwajit on 17/11/26.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TransactionListView()
                .tabItem {
                    Label("Transactoins", systemImage: "list.bullet")
                }
            SummaryView()
                .tabItem {
                    Label("Summary", systemImage: "chart.pie")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
