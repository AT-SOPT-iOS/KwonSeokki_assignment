//
//  HeaderView.swift
//  ATSOPT36_Assignment
//
//  Created by 권석기 on 5/29/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(.tvingLogo)
            Spacer()
            Image(.search)
            Image(.tvingLogo2)
        }
    }
}

#Preview {
    HeaderView()
}
