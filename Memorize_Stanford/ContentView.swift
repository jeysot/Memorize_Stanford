//
//  ContentView.swift
//  Memorize_Stanford
//
//  Created by Евгения  on 28.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.pink)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("🧩").font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
            
        }
    }
}

#Preview {
    ContentView()
}
