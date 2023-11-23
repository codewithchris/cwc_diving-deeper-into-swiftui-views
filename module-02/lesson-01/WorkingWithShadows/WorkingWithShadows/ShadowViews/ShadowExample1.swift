//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ShadowExample1: View {
    @State private var username = ""
    @State private var password = ""
    
    private var shadowRadius: CGFloat = 10
    private var xOffset: CGFloat = 15
    private var yOffset: CGFloat = 15
    
    private let lg = LinearGradient(gradient: Gradient(colors: [Color.white, Color.themeSecondary, Color.themeBackground]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        ZStack {
            lg
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40.0) {
                Image(systemName: "person.circle")
                    .font(.system(size: 110, weight: .thin))
                    .foregroundColor(Color.themeForeground)
                    .shadow(radius: shadowRadius, x: xOffset, y: yOffset)
                
                Text("Log into your account")
                    .foregroundColor(Color.themeForeground)
                
                TextField("email", text: $username)
                    .padding()
                    .background(Capsule().fill(Color.white).opacity(0.7))
                    .shadow(radius: shadowRadius, x: xOffset, y: yOffset)
                
                SecureField("password", text: $username)
                    .padding()
                    .background(Capsule().fill(Color.white).opacity(0.7))
                    .shadow(radius: shadowRadius, x: xOffset, y: yOffset)
                
                Button(action: {}) {
                    Text("Log in")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Capsule()
                            .fill(Color.white)
                            .shadow(radius: shadowRadius, x: xOffset, y: yOffset))
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ShadowExample1_Previews: PreviewProvider {
    static var previews: some View {
        ShadowExample1()
//            .preferredColorScheme(.dark)
    }
}
