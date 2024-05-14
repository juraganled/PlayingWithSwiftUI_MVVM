//
//  ContentView.swift
//  PlayingWithSwiftUI_MVVM
//
//  Created by Ricky Suprayudi on 14/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var fruitVM = FruitsProcess()
    var body: some View {
        NavigationView{
            TabView {
                VStack{
                    Text("This is list of fruits")
                    List {
                        ForEach($fruitVM.fruitCollection) { fruitItem in
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(fruitItem.name.wrappedValue)
                                        .font(.title2)
                                    Text(fruitItem.description.wrappedValue)
                                        .font(.subheadline)
                                }
                                Spacer()
                                Text("\(fruitItem.count.wrappedValue)")
                                    .padding(.trailing, 30)
                                Button(action: {
                                    fruitItem.favorite.wrappedValue.toggle()
                                }, label: {
                                    Image(systemName: fruitItem.favorite.wrappedValue ? "heart.fill" : "heart")
                                })
                            }
                        }
                    }
                }
                .tabItem {
                    Label("Fruit List", systemImage: "list.bullet.rectangle.portrait")
                }
                .navigationTitle("Fruit List")
                VStack{
                    List {
                        ForEach($fruitVM.fruitCollection) { fruitItem in
                            if fruitItem.favorite.wrappedValue == true {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(fruitItem.name.wrappedValue)
                                        Text(fruitItem.description.wrappedValue)
                                    }
                                    Spacer()
                                    Text("\(fruitItem.count.wrappedValue)")
                                }
                            }
                        }
                    }
                }
                .tabItem {
                    Label("Favorit", systemImage: "heart.fill")
                }
                
            }

        }
    }
}

#Preview {
    ContentView()
}
