//
//  ExtractedFunctionsBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 24/01/2023.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var bgColor: Color = Color.gray
    
    var body: some View {
        ZStack{
            //background
            bgColor.edgesIgnoringSafeArea(.all)
            
            // content
            contentLayer
            
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }
                   , label:    {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    
            })
        }
    }
    
    func buttonPressed(){
        if(bgColor != .blue){
            bgColor = .blue
        }
        else{
            bgColor = .indigo
        }
        
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
