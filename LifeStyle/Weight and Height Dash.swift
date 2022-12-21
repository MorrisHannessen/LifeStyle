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
                TextField("enter Height...", text: $Height)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.white.opacity(0.8).cornerRadius(20))
                    .foregroundColor(Color.black)
                    .font(.headline)
                    .position(.init(x: 195, y: -180))
                Text("CM")
                    .position(x: 330, y: -230)
                TextField("Enter Weight...", text: $Weight)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.white.opacity(0.8).cornerRadius(20))
                    .foregroundColor(Color.black)
                    .font(.headline)
                    .position(.init(x: 195, y: -185))
                Text("KG")
                    .position(x: 330, y: -235)
                Button("Enter") {
                    
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
