//
//  ContentView.swift
//  Little Lemon
//
//  Created by Fredy on 8/26/25.
//

import SwiftUI

struct ContentView: View {
    @State var personCount: Int = 0
    var body: some View {
        VStack {
            Text("Little Lemon")
            Stepper{
                Text("Reservation for: \(personCount)")
            } onIncrement: {
                personCount += 1
            } onDecrement: {
                personCount  = (personCount == 1) ? 1 : personCount - 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
