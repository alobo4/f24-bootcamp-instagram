//
//  ContentView.swift
//  demo01-instagram
//
//  Created by Alec Lobanov on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("Top Left")
                Spacer()
                Text("Top Right")
            }
            Color.blue
                .aspectRatio(1, contentMode: .fit)
            HStack{
                Text("Left")
                Text("Right")
            }
            Text("Hello there! My name is Jeff, and I want to be a space pirate.")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
