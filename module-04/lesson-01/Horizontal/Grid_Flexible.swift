//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Grid_Flexible: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Flexible Grid")
                .font(.largeTitle)
            
            Text("Flexible grid items in a horizontal grid allow the items to fluctuate between a min and max height.")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
            
            Text("Rows: 3 \nMin row height: 20 \nMax row height 120")
                .font(.title2)
            
            let rows = [GridItem(.flexible(minimum: 20, maximum: 120)),
                        GridItem(.flexible(minimum: 20, maximum: 120)),
                        GridItem(.flexible(minimum: 20, maximum: 120))]
            Button("View All", action: {})
            LazyHGrid(rows: rows, spacing: 40) {
                ForEach(0 ..< 12) { item in
                    Image(systemName: "\(item).circle")
                }
            }
            .font(.largeTitle)
            
            Spacer()
            
            Text("The maximum parameter is option. By default, it is .infinity.")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
        }
    }
}

struct Grid_Flexible_Previews: PreviewProvider {
    static var previews: some View {
        Grid_Flexible()
    }
}
