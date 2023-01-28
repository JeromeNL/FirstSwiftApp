//
//  EnvironmentobjectBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 28/01/2023.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject{
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "Apple Watch"])
    }
}


struct EnvironmentobjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self){ item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        })
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View{
    
    let selectedItem: String
   
    
    var body: some View{
        ZStack{
            // background
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(30)
                }
            )
        }
    }
}


struct FinalView: View{
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    
    var body: some View{
        ZStack{
            // background
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.pink]),
                           startPoint: .topLeading, endPoint: .bottomLeading)
            .ignoresSafeArea()
            
            // foreground
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
    
}

struct EnvironmentobjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentobjectBootcamp()
        //DetailView(selectedItem: "iPhone")
        //FinalView()
    }
}
