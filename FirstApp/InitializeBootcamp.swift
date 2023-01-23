//
//  InitializeBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 23/01/2023.
//

import SwiftUI

struct InitializeBootcamp: View {
    
    let backgroundColor: Color;
    let number: Int;
    let fruitText: String;
    let fruit: Fruit
    
    
    init(number: Int, fruit: Fruit) {
        self.number = number
        self.fruit = fruit
        
        if fruit == Fruit.apple{
            self.backgroundColor = .red
            self.fruitText = "Apples"
           
        }else{
            self.backgroundColor = .orange
            self.fruitText = "Oranges"
        }
    }
    
    enum Fruit{
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(number)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(fruitText)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        .shadow(color: Color.black, radius: 10,
                x: 5, y: 10)
    }
}

struct InitializeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        InitializeBootcamp(number: 66, fruit: .orange)
    }
}
