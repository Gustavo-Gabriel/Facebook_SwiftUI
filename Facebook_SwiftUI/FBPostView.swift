//
//  FBPostView.swift
//  Facebook_SwiftUI
//
//  Created by Gustavo Anjos on 18/01/21.
//

import Foundation
import SwiftUI

struct FBPost: View{
    
    @State var isLiked: Bool = false
    
    let model: FBPostModel
    
    var body: some View {
    
        VStack{
            HStack{
                Image(model.imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25)
                
                VStack{
                    
                    HStack{
                        Text(model.name)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    
                    HStack{
                        Text("12 minutes ago")
                            .foregroundColor(Color(.secondaryLabel))
                        Spacer()
                    }
                    
                }
                
                Spacer()
            }
            
            Spacer()
            
            HStack{
                Text(model.post)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            
            Spacer()
            
            HStack{
                Button(action: {
                    isLiked.toggle()
                }, label: {
                    Text(isLiked ? "Liked" : "Like")
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Comment")
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Share")
                })
            }
            .padding()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(7)
        
    }
}
