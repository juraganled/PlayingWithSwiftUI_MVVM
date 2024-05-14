//
//  FruitCount.swift
//  PlayingWithSwiftUI_MVVM
//
//  Created by Ricky Suprayudi on 14/05/24.
//

import SwiftUI

struct FruitCount: View {
    @Binding var name: String
    @Binding var count: Int
    var body: some View {
        HStack {
            Text(name)
                .font(.title2)
            Spacer()
            Stepper("\(count)") {
                count += 1
            } onDecrement: {
                if count > 0 {
                    count -= 1
                }
            }
            .frame(width: 130)
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    FruitCount(name: .constant("Coconut"), count: .constant(6))
}
