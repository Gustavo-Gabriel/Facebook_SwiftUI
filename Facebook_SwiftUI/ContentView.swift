//
//  ContentView.swift
//  Facebook_SwiftUI
//
//  Created by Gustavo Anjos on 18/01/21.
//

import SwiftUI

struct ContentView: View {
    
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
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
