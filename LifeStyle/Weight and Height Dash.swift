//
//  Weight and Height Dash.swift
//  test database
//
//  Created by issd on 16/12/2022.
//

import SwiftUI

struct Weight_and_Height_Dash: View {
    
    @State var Height:String = ""
    @State var Weight:String = ""
    
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
                TextField("Email...", text: $Height)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.white.opacity(0.8).cornerRadius(20))
                    .foregroundColor(Color.black)
                    .font(.headline)
                    .position(.init(x: 195, y: -180))
                TextField("Password...", text: $Weight)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.white.opacity(0.8).cornerRadius(20))
                    .foregroundColor(Color.black)
                    .font(.headline)
                    .position(.init(x: 195, y: -185))
                
                Picker(selection: .constant(1), label: Text("Lengte")) {
                        Text("140").tag(1)
                        Text("145").tag(2)
                        Text("150").tag(3)
                        Text("155").tag(4)
                        Text("160").tag(5)
                        Text("165").tag(6)
                        Text("170").tag(7)
                        Text("175").tag(8)
                        Text("180").tag(9)
                        Text("185").tag(10)
                }
                .padding()
                
                
                Button("Login") {
                    
                }
                .buttonStyle(GrowingButton2())
            }
            
        }
        .background(Color.gray)
    }
}

struct Weight_and_Height_Dash_Previews: PreviewProvider {
    static var previews: some View {
        Weight_and_Height_Dash()
    }
}
