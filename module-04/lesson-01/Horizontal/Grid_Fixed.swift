//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Grid_Fixed: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Fixed Grid")
                .font(.largeTitle)
            
            Text("The GridItems define how many rows and the height of each row.")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
            
            Text("Rows: 3, Row height: 50")
                .font(.title2)
            
            let rows = [GridItem(.fixed(50)),
                        GridItem(.fixed(50)),
                        GridItem(.fixed(50))]
            
            LazyHGrid(rows: rows, spacing: 20) {
                ForEach(0 ..< 11) { item in
                    Image(systemName: "\(item).circle")
                }
            }
            .font(.largeTitle)
        }
    }
}

struct Grid_Fixed_Previews: PreviewProvider {
    static var previews: some View {
        Grid_Fixed()
    }
}
