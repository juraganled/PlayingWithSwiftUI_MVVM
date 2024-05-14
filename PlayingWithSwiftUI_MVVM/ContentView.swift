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
                            
                            NavigationLink {
                                FruitCount(name: fruitItem.name, count: fruitItem.count)
                            } label: {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(fruitItem.name.wrappedValue)
                                            .font(.title2)
                                        Text(fruitItem.description.wrappedValue)
                                            .font(.subheadline)
                                    }
                                    Spacer()
                                    Text("\(fruitItem.count.wrappedValue)")
                                        .font(.title)
                                        .padding(.trailing, 20)
                                    Image(systemName: fruitItem.favorite.wrappedValue ? "heart.fill" : "heart")
                                        .padding()
                                        .onTapGesture {
                                            fruitItem.favorite.wrappedValue.toggle()
                                        }
                                }
                            }
                        }
                    }
                }
                .tabItem {
                    Label("Fruit List", systemImage: "list.bullet.rectangle.portrait")
                }
                .navigationTitle("Fruit List")
                VStack{
                    if fruitVM.fruitCollection.filter({$0.favorite == true}).count > 0 {
                        List {
                            ForEach($fruitVM.fruitCollection.filter({$0.favorite.wrappedValue == true})) { fruitItem in
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(fruitItem.name.wrappedValue)
                                            .font(.title2)
                                        Text(fruitItem.description.wrappedValue)
                                            .font(.subheadline)
                                    }
                                    Spacer()
                                    Text("\(fruitItem.count.wrappedValue)")
                                }
                            }
                        }
                    } else {
                        Text("You don't have any favorite")
                    }
                }
                .tabItem {
                    Label("Favorite", systemImage: "heart.fill")
                }
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
