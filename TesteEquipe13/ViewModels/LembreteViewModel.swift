//
//  LembreteViewModel.swift
//  TesteEquipe13
//
//  Created by Ian Pacini on 13/01/25.
//

import SwiftUI

@Observable
class LembreteViewModel {
    var lembretes: [LembreteModel]
    
    init(lembretes: [LembreteModel] = [LembreteModel(nome: "Teste", data: .now)]) {
        self.lembretes = lembretes
    }
    
    func addLembrete(nome: String, data: Date) {
        let newLembrete = LembreteModel(nome: nome, data: data)
        
        self.lembretes.append(newLembrete)
    }
}
