//  Created by Mark Moeykens on 12/25/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Transition_Challenge2: View {
    @State private var login = false
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color("Background3")
            
            VStack(spacing: 20) {
                Image(systemName: "bed.double.fill")
                    .padding(.top, 70)
                    .font(.system(size: 70))
                    .foregroundColor(Color("Tertiary3"))
                Spacer()
                
                if login {
                    Text("Welcome back, friend")
                        .foregroundColor(Color("Secondary3"))
                        .transition(.move(edge: .top)
                            .combined(with: .opacity))
                }
                
                if login {
                    TextField("Username", text: $userName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .transition(.move(edge: .leading)
                            .combined(with: .opacity))
                }
                
                if login {
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .transition(.move(edge: .trailing)
                            .combined(with: .opacity))
                }
                
                if login {
                    Button("come in", action: { })
                        .padding()
                        .foregroundColor(Color("Foreground3"))
                        .background(Rectangle().fill(Color("Accent3")).shadow(radius: 8))
                        .transition(.move(edge: .bottom)
                            .combined(with: .opacity))
                }
                Spacer()
                Image("person.sleeping")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.easeIn(duration: 0.8).delay(0.5)) {
                login.toggle()
            }
        }
    }
}


struct Transition_Challenge2_Previews: PreviewProvider {
    static var previews: some View {
        Transition_Challenge2()
    }
}
