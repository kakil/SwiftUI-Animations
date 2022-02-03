// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio
// https://www.bigmountainstudio.com/community/public/posts/80023-previewing-swiftui-transition-animations

import SwiftUI

struct PreviewingSwiftUITransitionAnimations_Blog: View {
    @State private var show = false
    
    var body: some View {
        VStack {
            Button("Show") {
                withAnimation {
                    show.toggle()
                }
            }
            .font(.title)
            
            Spacer()
            
            
            if show {
                Image("driving")
                    .transition(AnyTransition.slide)
            }
            
            Spacer()
        }
    }
}

struct PreviewingSwiftUITransitionAnimations_Blog_Previews: PreviewProvider {
    static var previews: some View {
        VStack { // Workaround
            PreviewingSwiftUITransitionAnimations_Blog()
        }
    }
}
