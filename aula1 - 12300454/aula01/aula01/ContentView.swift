//
//  ContentView.swift
//  aula01 - 12300454
//
//  Created by COTEMIG on 10/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var idadeHumana : String = ""
    @State private var idadeCao : String = ""
    
    var body: some View {
            
            VStack(spacing: 20) {
                Image("1")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .foregroundColor(.accentColor)
                
                Text("Calculadora De Idade Canina")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                    
                
                TextField("Digite a idade humana", text: $idadeHumana)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .frame(width:250)
                
                Button(action: calculateDogAge)   {
                    Text("Calcular")
                        .padding()
                        .frame(width: 150)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: clean)   {
                    Text("Limpar")
                        .padding()
                        .frame(width: 150)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                }
                
                if !idadeCao.isEmpty {
                    Text("Idade em anos caninos: \(idadeCao)")
                        .font(.headline)
                        .padding()
                }
            }
    }
    
    func calculateDogAge() {
        if let age = Int(idadeHumana) {
            let result = age * 7
            idadeCao = "\(result) anos"
        } else {
            idadeCao = "Digite um número válido"
        }
    }
    
    func clean(){
        idadeHumana = ""
        idadeCao = ""
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
