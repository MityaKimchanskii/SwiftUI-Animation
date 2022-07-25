//
//  ContentView.swift
//  SwiftUI-Animation
//
//  Created by Mitya Kim on 7/25/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showDetails: Bool = false
    
    var body: some View {
        VStack {
            
            NotificationView()
                .offset(y: self.showDetails ? -UIScreen.main.bounds.height / 8 : -UIScreen.main.bounds.height)
                .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 0))
            
            Text("🚛")
                .font(.custom("Arial", size: 90))
                .scaleEffect(self.showDetails ? 2 : 1)
                .rotationEffect(.degrees(self.showDetails ? 360.0 : 0.0))
                .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 0))
            
            Button {
                self.showDetails.toggle()
            } label: {
                Text("Press me!")
            }.padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(20)

            HStack {
                Text("🛬")
                    .font(.custom("Arial", size: 100))
                    .offset(x: self.showDetails ? UIScreen.main.bounds.width - 120 : 0)
                    .animation(.interpolatingSpring(mass: 5.0, stiffness: 100.0, damping: 10, initialVelocity: 0))
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

