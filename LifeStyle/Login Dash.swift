//
//  Login Dash.swift
//  test database
//
//  Created by issd on 15/12/2022.
//

import SwiftUI

struct GrowingButton2: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(minWidth: 150)
            .background(.black)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .position(x: 195, y: -180)
    }
}

struct Login_Dash: View {
    @State var Email:String = ""
    @State var Password:String = ""
    
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
                TextField("Email...", text: $Email)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.white.opacity(0.8).cornerRadius(20))
                    .foregroundColor(Color.black)
                    .font(.headline)
                    .position(.init(x: 195, y: -180))
                TextField("Password...", text: $Password)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.white.opacity(0.8).cornerRadius(20))
                    .foregroundColor(Color.black)
                    .font(.headline)
                    .position(.init(x: 195, y: -185))
                Button("Login") {
                    
                }
                .buttonStyle(GrowingButton2())
            }
            
        }
        .background(Color.gray)
    }
}
    

struct Login_Dash_Previews: PreviewProvider {
    static var previews: some View {
        Login_Dash()
    }
}
