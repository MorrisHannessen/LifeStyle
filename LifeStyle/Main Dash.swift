//
//  Main Dash.swift
//  test database
//
//  Created by issd on 20/12/2022.
//

import SwiftUI


struct Main_Dash: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 56.0))
                    .position(x: 45)
                Spacer()
                Button("@USER@") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .padding()
                .frame(minWidth: 190, maxHeight: 55)
                .font(.system(size: 25))
                .background(.black)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .position(x: 63, y: 30)
                Spacer()
                Image(systemName: "gear")
                    .font(.system(size: 45.0))
                    .position(x: 80)
                Spacer()
            }
                .background(Color.gray)
            GroupBox(label: Label("Calories", systemImage: "flame")) {
                HStack {
                    
                    VStack {
                        Text("Calorie Goal:")
                        Text("Allergic-Reactions this month:")
                        Text("How you felt yesterday:")
                    }
                    .padding()
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray))
            Spacer()
                HStack {
                    GroupBox(label: Label("Steps", systemImage: "shoeprints.fill")) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray))
                    GroupBox(label: Label("Activity", systemImage: "figure.run")) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray))
                }
            Spacer()
            GroupBox(label: Label("Quote", systemImage: "quote.bubble.fill")) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
            .padding()
            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray))
            Spacer()
            GroupBox(label: Label("How are u feeling today?", systemImage: "brain.head.profile")) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
            .padding()
            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray))
            Spacer()
            }
            .background(Color.gray)
        }
    }

struct Main_Dash_Previews: PreviewProvider {
    static var previews: some View {
        Main_Dash()
    }
}
