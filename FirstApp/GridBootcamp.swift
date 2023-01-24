//
//  GridBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 24/01/2023.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil,
                 alignment: nil),
        GridItem(.flexible(), spacing: nil,
                 alignment: nil),
        GridItem(.flexible(), spacing: nil,
                 alignment: nil)
    ]
    
    var body: some View {
        ScrollView{
                        Rectangle()
                            .fill(Color.orange)
                            .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders],
                content:
                    {
                        Section(header:
                                    Text("Section 1")
                            .foregroundColor(Color.white)
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                        ){
                            ForEach(0..<20){ index in
                                Rectangle()
                                    .frame(height: 150)
                            }
                        }
                        Section(header:
                                    Text("Section 2")
                            .foregroundColor(Color.white)
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color.red)
                        ){
                            ForEach(0..<20){ index in
                                Rectangle()
                                    .frame(height: 150)
                            }
                        }
                    })
        }
        
    
            
            
            
            
            
            //            LazyVGrid(columns: columns){
            //                ForEach(0..<50){ index in
            //                    Rectangle()
            //                        .frame(height: 150)
            //                }
            //            }
        }
    }
    
    struct GridBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            GridBootcamp()
        }
    }

