//
//  TransactionListView.swift
//  Kakeibo
//
//  Created by Sakkaraj Tuwajit on 17/11/26.
//

import SwiftUI

struct TransactionListView: View {
    @State private var showingAdd = false
    
    var body: some View {
        KakeiboScreen("Transactions") {
            ZStack(alignment: .bottomTrailing) {
                List {
                    Text("No transaction yet")
                        .foregroundStyle(.secondary)
                }
                
                Button {
                    showingAdd = true
                } label: {
                    Image(systemName: "plus")
                        .font(.title2)
                        .padding(16)
                }
                .glassEffect(.regular.interactive(), in: .circle)
                .padding()
            }
            .sheet(isPresented: $showingAdd) {
                AddTransactionView()
            }
        }
    }
}

#Preview {
    TransactionListView()
}
