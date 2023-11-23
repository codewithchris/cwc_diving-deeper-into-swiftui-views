//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct VStacks: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Capsule()
            Text("Hello, World!")
            Rectangle()
        }
    }
}

struct VStacks_Previews: PreviewProvider {
    static var previews: some View {
        VStacks()
    }
}
