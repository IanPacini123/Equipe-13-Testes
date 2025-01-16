//
//  LembreteModel.swift
//  TesteEquipe13
//
//  Created by Ian Pacini on 13/01/25.
//

import Foundation

struct LembreteModel: Identifiable {
    var id: UUID = UUID()
    
    var nome: String
    var data: Date
}
