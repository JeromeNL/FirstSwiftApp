//
//  PracticeScreen1.swift
//  FirstApp
//
//  Created by Joram Kwetters on 22/01/2023.
//

import SwiftUI

struct PracticeScreen1: View {
    var body: some View {
        VStack{
            HStack(){
                Text("VANDAAG")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 160, height: 50)
                
                Spacer()
                    .frame(width: 150, height: 100)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .overlay(){
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                    }
                    .overlay(alignment: .topTrailing){
                        ZStack {
                            Circle()
                                .fill(Color("Avansrood"))
                                .frame(width: 20, height: 20)
                        }
                        Text("15")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundColor(Color.white)
                    }
            }
            .frame(width: 375, height: 50)
            HStack(){
                VStack(alignment: .leading) {
                    Text("Hi Joram, je volgende les is ")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color.black)
                    Text("morgen om 08.45 uur")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color("Avansrood"))
                }
                Spacer()
                    .frame(width: 50, height: 50)
                
                Image(systemName: "info.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    
            }
            Divider()
                .frame(height: 1)
                .overlay(Color.gray)
            HStack{
                VStack{
                    Text("08.45")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(Color.black)
                    Spacer()
                        .frame(width: 0, height: 5)
                    Text("17.15")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(Color.black)
                }
                VStack{
                    Text("PROG6 - Assessment (online)")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(Color.black)
                    Spacer()
                        .frame(width: 0, height: 5)
                    HStack{
                        Image(systemName: "person")
                        Text("Ger Saris, Stijn Smulde..")
                    }
                }
                VStack{
                    Text("Online")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(Color.black)
                    Spacer()
                        .frame(width: 0, height: 5)
                    ZStack {
                        Rectangle()
                            .fill(Color.indigo)
                            .frame(width: 70, height: 20)
                        .cornerRadius(5)
                        Text("290IN3SOD")
                            .font(.system(size: 11))
                            .foregroundColor(Color.white)
                    }
                }
            }
            Spacer()
                .frame(width: 300, height: 75)
            Text("JOUW OPDRACHTEN")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color("Avansrood"))
                .frame(width: 350, height: 30, alignment: .leading)
            Divider()
                .frame(height: 1)
                .overlay(Color.gray)
            VStack{
                HStack(spacing: 15) {
                    Image(systemName: "list.clipboard")
                        .resizable()
                    .frame(width: 30, height: 40)
                    VStack(alignment: .leading){
                        Text("Eindopdracht Inleverlink")
                            .font(.system(size: 15) )
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        Text("ATD - Programmeren 6 (C#)")
                            .font(.system(size: 15) )
                            .foregroundColor(Color.black)
                    }
                    Text("Verlopen")
                        .font(.system(size: 15) )
                        .foregroundColor(Color("Avansrood"))
                        .fontWeight(.bold)
                        .frame(width: 100, height: 20, alignment: .top)
                }
                
                
                
                HStack(spacing: 15) {
                    Image(systemName: "list.clipboard")
                        .resizable()
                    .frame(width: 30, height: 40)
                    VStack(alignment: .leading){
                        Text("Inleverlink herkansing         ")
                            .font(.system(size: 15) )
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        Text("ATD - Algoritmiek")
                            .font(.system(size: 15) )
                            .foregroundColor(Color.black)
                    }
                    Text("Verlopen")
                        .font(.system(size: 15) )
                        .foregroundColor(Color("Avansrood"))
                        .fontWeight(.bold)
                        .frame(width: 100, height: 20, alignment: .top)
                }
                
                HStack(spacing: 15) {
                    Image(systemName: "list.clipboard")
                        .resizable()
                    .frame(width: 30, height: 40)
                    VStack(alignment: .leading){
                        Text("Inleverlink herkansing")
                            .font(.system(size: 15) )
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        Text("ATD - Interaction Design      ")
                            .font(.system(size: 15) )
                            .foregroundColor(Color.black)
                    }
                    Text("Verlopen")
                        .font(.system(size: 15) )
                        .foregroundColor(Color("Avansrood"))
                        .fontWeight(.bold)
                        .frame(width: 100, height: 20, alignment: .top)
                }
                Divider()
                    .frame(height: 1)
                    .overlay(Color.gray)
                HStack {
                    Text("Alle opdrachten")
                        .font(.system(size: 15))
                    Spacer()
                        .frame(width: 220)
                    Image(systemName: "arrow.forward")
                }.padding(.top, 5)
                
                Spacer()
                    .frame(width: 300, height: 40)
                Text("NIEUWS")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(Color("Avansrood"))
                    .frame(width: 350, height: 30, alignment: .leading)
                Divider()
                VStack{
                    HStack{
                        Image("Zermatt")
                            .resizable()
                            .frame(width: 112, height: 63)
                            .cornerRadius(5)
                        VStack(alignment: .leading) {
                            Text("Dit is een willekeurige titel voor een nieuws artikel")
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(Color.black)
                                .padding(.bottom, 3)
                
                            HStack {
                                Text("Bron: ")
                                    .font(.system(size: 15, weight: .bold))
                                .foregroundColor(Color.gray)
                                Text("Punt nieuws")
                                    .font(.system(size: 15, weight: .bold))
                                .foregroundColor(Color("Avansrood"))
                            }
                            
                        }
                    }.padding(.leading, 5)
                    HStack{
                        Image("Zermatt")
                            .resizable()
                            .frame(width: 112, height: 63)
                            .cornerRadius(5)
                        VStack(alignment: .leading) {
                            Text("Dit is een willekeurige titel voor een nieuws artikel")
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(Color.black)
                                .padding(.bottom, 3)
                
                            HStack {
                                Text("Bron: ")
                                    .font(.system(size: 15, weight: .bold))
                                .foregroundColor(Color.gray)
                                Text("Punt nieuws")
                                    .font(.system(size: 15, weight: .bold))
                                .foregroundColor(Color("Avansrood"))
                            }
                        }
                        
                    }.padding(.leading, 5)
                    HStack{
                        Image("Zermatt")
                            .resizable()
                            .frame(width: 112, height: 63)
                            .cornerRadius(5)
                        VStack(alignment: .leading) {
                            Text("Dit is een willekeurige titel voor een nieuws artikel")
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(Color.black)
                                .padding(.bottom, 3)
                
                            HStack {
                                Text("Bron: ")
                                    .font(.system(size: 15, weight: .bold))
                                .foregroundColor(Color.gray)
                                Text("Punt nieuws")
                                    .font(.system(size: 15, weight: .bold))
                                .foregroundColor(Color("Avansrood"))
                            }
                            
                        }
                        
                    }.padding(.leading, 5)
                    
                }
            }
            
            
            
        }
        }
    }

struct PracticeScreen1_Previews: PreviewProvider {
    static var previews: some View {
        PracticeScreen1()
    }
}
