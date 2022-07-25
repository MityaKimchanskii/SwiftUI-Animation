//
//  NotificationView.swift
//  SwiftUI-Animation
//
//  Created by Mitya Kim on 7/25/22.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        
        Text("Fly away!")
            .padding()
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 20, height: 100)
            .background(.green)
            .cornerRadius(20)
        
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
