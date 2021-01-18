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
                        
                    }
                }
            }
                
            
            Spacer()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}
