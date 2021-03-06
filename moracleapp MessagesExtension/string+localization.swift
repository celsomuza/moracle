//
//  string+localization.swift
//  moracleapp MessagesExtension
//
//  Created by Celso Eduardo Muza Ferreira on 11/02/22.
//

import Foundation
import func Foundation.NSLocalizedString


extension String {
        // Nova função:
    func localized() -> String {       // Vai retornar uma string
        return NSLocalizedString(
            self,                      // Pega a própria strig em que a função foi chamada
            tableName: "Localization", // Nome do arquivo .string (vai ser criado)
            bundle: .main,
            value: self,               // Caso não tenha um valor á aquela string vai ser usada ela mesmo
            comment: self
        )
    }
}
