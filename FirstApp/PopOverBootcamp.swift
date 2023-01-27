//
//  PopOverBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 25/01/2023.
//

import SwiftUI

struct PopOverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("BUTTON"){
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
        }
        // METHOD 1 - SHEET
//        .sheet(isPresented: $showNewScreen, content: {
//            NewScreen();
//        })
        // METHOD 2 - TRANSITION
//        if(showNewScreen){
//            NewScreen(showNewScreen: $showNewScreen)
//                .padding(.top, 100)
//                .transition(.move(edge: .bottom))
//                .animation(.spring(), value: showNewScreen)
//        }
        // METHOD 3 - ANIMATION OFFSET
        NewScreen(showNewScreen: $showNewScreen)
            .padding(.top, 100)
            .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
    }
}

struct NewScreen: View{
    
    @Environment (\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                //presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.all, 20)
            })
            
            
        }
    }
}

struct PopOverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopOverBootcamp()
    }
}
