//
//  FirstLogin Dash.swift
//  test database
//
//  Created by issd on 15/12/2022.
//

import SwiftUI

struct GrowingButton3: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(minWidth: 180, minHeight: 65)
            .font(.system(size: 30))
            .background(.black)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .position(x: 195, y: -100)
    }
}

struct FirstLogin_Dash: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(maxWidth: 300, maxHeight: 300)
            Text("LifeStyle")
                .padding()
                .font(.system(size: 40))
                .position(x: 200)
            VStack {
                NavigationLink(destination: Register_Dash()) {
                    Text("Register")
                }
                .buttonStyle(GrowingButton3())
                NavigationLink(destination: Login_Dash()) {
                    Text("Login")
                }
                .buttonStyle(GrowingButton3())
            }
        }
        .background(Color.gray)
    }
}

struct FirstLogin_Dash_Previews: PreviewProvider {
    static var previews: some View {
        FirstLogin_Dash()
    }
}
