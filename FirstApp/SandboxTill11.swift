//
//  SandboxTill11.swift
//  FirstApp
//
//  Created by Joram Kwetters on 22/01/2023.
//

import SwiftUI

struct SandboxTill11: View {
    var body: some View {
        VStack(spacing: 40){
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .overlay(Image(systemName: "airtag.radiowaves.forward")
                    .font(.system(size: 50))
                )
                .background(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                        .cornerRadius(20)
                )
            HStack(){
                Text("Welcome to Kliek.io")
                    .multilineTextAlignment(.center)
                Text("The nice way of saving food and money")
                    .multilineTextAlignment(.center)
            }
            ZStack(){
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 300, height: 300)
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 200, height: 200)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
            }
            ZStack {
                Rectangle()
                    .fill(Color("Avansrood"))
                    .frame(width: 300, height: 100)
                    .cornerRadius(25)
                    .shadow(color: Color.gray, radius: 20,
                            x: 5, y: 10)
                .border(Color.blue)
                VStack {
                    Text("Avans")
                        .font(.system(size: 50, weight: .bold))
                        .italic()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 30, alignment: .leading)
                       
                    Text("Hogeschool")
                        .font(.system(size: 25, weight: .bold))
                        .italic()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 30, alignment: .trailing)
                    
                }
            }
           
        }
    }
}

struct SandboxTill11_Previews: PreviewProvider {
    static var previews: some View {
        SandboxTill11()
    }
}
