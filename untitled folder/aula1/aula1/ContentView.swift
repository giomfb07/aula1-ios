//
//  ContentView.swift
//  aula1
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI
struct ContentView: View {
    @State private var idade: String = ""
    @State private var resultado: String = ""
    var body: some View {
        VStack {
            Image(systemName: "cachorro")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Calculadora de Idade Canina")
            TextField(
                        "Digite a idade humana",
                    
                text: $idade            )

            Button(action:calculateDogAge){                    
                
                Text("Calcular")
                    .font(.title)
                
                Text($resultado)
            }.frame(width:300) 
                
                
                
                
                .frame(width: 270.0)
            .disableAutocorrection(true)}
        .padding()
        .textFieldStyle(.roundedBorder)
    }
}

func calculateDogAge(){
    
     if Int(idade)>0
        $resultado =    Int(idade*7)
    else
        $resultado = $idade * 7
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
