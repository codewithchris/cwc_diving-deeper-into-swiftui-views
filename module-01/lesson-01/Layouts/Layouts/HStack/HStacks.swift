//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct HStacks: View {
    var body: some View {
        HStack {
            Text("Hello, World!")
            Circle()
            Circle()
        }
    }
}

struct HStacks_Previews: PreviewProvider {
    static var previews: some View {
        HStacks()
    }
}
