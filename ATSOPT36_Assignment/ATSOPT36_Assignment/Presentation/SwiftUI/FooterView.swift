//
//  FooterView.swift
//  ATSOPT36_Assignment
//
//  Created by 권석기 on 5/29/25.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 13) {
            HStack(spacing:0) {
                Text("공지")
                    .foregroundStyle(.gray)
                Text("티빙 계정 공유 정책 추가 안내")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    .padding(.leading, 8)
                Spacer()
                Image(.moveButton)
            }
            .padding(16)
            .background(.gray5)
            .cornerRadius(5)
   
            VStack(spacing: 0) {
                HStack {
                    Text("고객문의")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    Circle()
                        .foregroundStyle(.gray)
                        .frame(width: 2, height: 2)
                    Text("이용약관")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    Circle()
                        .foregroundStyle(.gray)
                        .frame(width: 2, height: 2)
                }
                
                HStack {
                    Text("사업자정보")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    Circle()
                        .foregroundStyle(.gray)
                        .frame(width: 2, height: 2)
                    Text("인재채용")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            }
        }
        .padding(.top, 30)
        .padding(.horizontal, 15)
    }
}

#Preview {
    FooterView()
}
