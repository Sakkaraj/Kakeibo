//
//  SummaryView.swift
//  Kakeibo
//
//  Created by Sakkaraj Tuwajit on 17/11/26.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {
        KakeiboScreen("Summary") {
            Text("Monthly summary goes here")
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    SummaryView()
}
