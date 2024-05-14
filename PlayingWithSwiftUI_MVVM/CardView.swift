//
//  CardView.swift
//  PlayingWithSwiftUI_MVVM
//
//  Created by Ricky Suprayudi on 14/05/24.
//

import SwiftUI

struct CardView: View {
    @State var name: String
    @State var description: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .font(.title2)
            Text(description)
                .font(.subheadline)
        }
    }
}

#Preview {
    CardView(name: "Grape", description: "fresh and sweet")
}
