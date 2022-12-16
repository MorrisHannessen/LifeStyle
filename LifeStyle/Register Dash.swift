//
//  ContentView.swift
//  test database
//
//  Created by issd on 14/12/2022.
//

import SwiftUI

struct GrowingButton: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(minWidth: 160)
            .background(.black)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .position(x: 195, y: -40)
    }
}


struct Register_Dash: View {
    
    @State var Firstname:String = ""
    @State var Lastname:String = ""
    @State var Email:String = ""
    @State var Password:String = ""
    @State var RePassword:String = ""
    
    func DoubleCheckPass() -> Bool {
        if(Password == RePassword) {
            return true
        }
        else {
            return false
        }
    }
    
    func CheckifFilled() -> Bool {
        if(Firstname == "" || Lastname == "" || Email == "" || Password == "" || RePassword == "") {
            return false
        }
        else {
            return true
        }
    }

    
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
                TextField("Firstname", text: $Firstname)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.white.opacity(0.8).cornerRadius(20))
                    .foregroundColor(Color.black)
                    .font(.headline)
                    .position(.init(x: 195, y: -180))
                TextField("Lastname", text: $Lastname)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.white.opacity(0.8).cornerRadius(20))
                    .foregroundColor(Color.black)
                    .font(.headline)
                    .position(.init(x: 195, y: -155))
                TextField("Email", text: $Email)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.white.opacity(0.8).cornerRadius(20))
                    .foregroundColor(Color.black)
                    .font(.headline)
                    .position(.init(x: 195, y: -130))
                TextField("Password", text: $Password)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.white.opacity(0.8).cornerRadius(20))
                    .foregroundColor(Color.black)
                    .font(.headline)
                    .position(.init(x: 195, y: -105))
                TextField("Re-Enter Password", text: $RePassword)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.white.opacity(0.8).cornerRadius(20))
                    .foregroundColor(Color.black)
                    .font(.headline)
                    .position(.init(x: 195, y: -80))
                Button("Register") {
                    var fillcheck:Bool = CheckifFilled()
                    var passcheck:Bool = DoubleCheckPass()
                    if(fillcheck == true && passcheck == true)
                    {
                        print("yessir")
                    }
                    else
                    {
                        print("error")
                    }
                }
                .buttonStyle(GrowingButton())
            }
            
        }
        .background(Color.gray)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Register_Dash()
        }
    }
}
