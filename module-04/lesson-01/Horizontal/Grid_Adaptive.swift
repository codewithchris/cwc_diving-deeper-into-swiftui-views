//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Grid_Adaptive: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Adaptive Grid")
                .font(.largeTitle)
            
            Text("Using adaptive GridItems will help the LazyHGrid figure out how many rows it actually needs to fit the cells.")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
            
            Text("Rows: adaptive \nMin row height: 50")
                .font(.title2)
            
            let rows = [GridItem(.adaptive(minimum: 50))]
            
            LazyHGrid(rows: rows, spacing: 40) {
                ForEach(0 ..< 22) { item in
                    Image(systemName: "\(item).circle")
                }
                .font(.largeTitle)
            }
            .frame(height: 400)
            .padding(.horizontal)
        }
    }
}

struct Grid_Adaptive_Previews: PreviewProvider {
    static var previews: some View {
        Grid_Adaptive()
    }
}
