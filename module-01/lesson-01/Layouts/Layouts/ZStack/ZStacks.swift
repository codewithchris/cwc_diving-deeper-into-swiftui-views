//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct ZStacks: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.secondary)
            
            Text("Hello, World!")
        }
    }
}

struct ZStacks_Previews: PreviewProvider {
    static var previews: some View {
        ZStacks()
    }
}
