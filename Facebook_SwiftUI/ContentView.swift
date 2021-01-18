//
//  ContentView.swift
//  Facebook_SwiftUI
//
//  Created by Gustavo Anjos on 18/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var text: String
    
    let stories = ["story1", "story2", "story3", "story1", "story2", "story3"]
    
    // Cor do Texto do Facebook
    let facebookBlue = UIColor(red: 23/255.0, green: 120/255.0, blue: 242/255.0, alpha: 1)
    
    var body: some View {
        
        // A Pilha no Swift UI pode ser utilizada tanto na Vertical, Horizontal e no Eixo Z
        VStack{
            // Alinhamento
            HStack{
                Text("facebook") // Propriedades que modificam o Text
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(Color(facebookBlue))
                
                // Separar Views
                Spacer()
                
                Image(systemName: "person.circle")
                    // Preencher todo o espacao da View
                    .resizable()
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(.secondary)
            }
            .padding() // Espaco nas Margens
            
            TextField("Search...", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(13)
                .padding(.horizontal, 15)
            
            ZStack{
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical){
                    VStack{
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 3){
                                ForEach(stories, id: \.self) { name in
                                    Image(name)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 140, height: 200, alignment: .center)
                                        .background(Color.red)
                                        .clipped()
                                }
                            }
                        }
                        .padding()
                        
                        FBPost(name: "Mark Zuckerberg",
                               post: "Hey guys I made this cool website called thefacebook to see if Im cool or not",
                               imageName: "person1")
                        Spacer()
                        
                        FBPost(name: "Jeff Bezos",
                               post: "You'll see once I take over the world with Amazon",
                               imageName: "person2")
                        Spacer()
                        
                        FBPost(name: "Bill Gates",
                               post: "Who cares - I made Windows!",
                               imageName: "person3")
                        Spacer()
                        
                    }
                }
            }
                
            
            Spacer()
        }
        
    }
}

struct FBPost: View{
    
    let name: String
    let post: String
    let imageName: String
    
    var body: some View {
    
        VStack{
            HStack{
                Image(imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25)
                
                VStack{
                    
                    HStack{
                        Text(name)
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
                Text(post)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            
            Spacer()
            
            HStack{
                Button(action: {
                    
                }, label: {
                    Text("Like")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}
