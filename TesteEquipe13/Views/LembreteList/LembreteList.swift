//
//  LembreteList.swift
//  TesteEquipe13
//
//  Created by Ian Pacini on 13/01/25.
//

import SwiftUI

struct LembreteList: View {
    var lembreteViewModel: LembreteViewModel = .init()
    
    @State var texto: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Spacer()
                
                List {
                    ForEach(lembreteViewModel.lembretes) { lembrete in
                        Section {
                            LembreteCard(lembrete: lembrete)
                                .padding(.horizontal)
                        } header: {
                            Text(lembrete.nome)
                        }
                    }
                }
                
                Spacer()
                
                Button {
                    lembreteViewModel.addLembrete(nome: "Teste", data: .now)
                } label: {
                    Image(systemName: "plus.app")
                        .font(.system(size: 64))
                }
            }
            
//            .toolbar {
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button {
//                        lembretes.append(LembreteModel(nome: "Teste", data: .now))
//                    } label: {
//                        Image(systemName: "plus.app")
//                            .bold()
//                    }
//                    .foregroundStyle(.appBlue)
//                }
//            }
        }
    }
}

#Preview {
    LembreteList()
}
