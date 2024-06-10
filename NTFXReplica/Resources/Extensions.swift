//
//  Extensions.swift
//  NTFXReplica
//
//  Created by Maziar Layeghkar on 10.06.24.
//

import Foundation

extension String {
    
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
