//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ShadowOverview: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Text("Shadow Overview")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Basic")
            Circle()
                .fill(Color.blue)
                .frame(height: 60.0)
                .shadow(color: Color.gray, radius: 0, y: 20)
            
            Spacer()
            
            Text("Levels of depth")
            
            HStack {
                Circle()
                    .fill(Color.blue)
                    .shadow(radius: 8, x: 0, y: 5)
                Circle()
                    .fill(Color.blue)
                    .shadow(radius: 8, x: 0, y: 10)
                Circle()
                    .fill(Color.blue)
                    .shadow(radius: 8, x: 0, y: 15)
            }
            .frame(height: 60.0)
            
            Spacer()
            
            Text("Colored Shadows")
            
            HStack {
                Circle()
                    .fill(Color.pink)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 0.2156862745, blue: 0.3725490196, alpha: 0.7215325342)), radius: 8, x: 0, y: 8)
                Circle()
                    .fill(Color.blue)
                    .shadow(color: Color.blue, radius: 8, x: 0, y: 8)
                Circle()
                    .fill(Color.green)
                    .shadow(color: Color.green, radius: 8, x: 0, y: 8)
            }
            .frame(height: 60.0)
            
            Spacer()
        }
        .font(.title)
    }
}

struct ShadowOverview_Previews: PreviewProvider {
    static var previews: some View {
        ShadowOverview()
                    .preferredColorScheme(.dark)
    }
}
