//
//  ReusableLabel.swift
//  PokemonDex
//
//  Created by Chrismanto Natanail Manik on 30/01/23.
//

import UIKit
class ReusableLabel: UILabel{
    enum typeLabelEnum {
        case medium
        case desc
    }
    
    public private(set) var labelType: typeLabelEnum
    public private(set) var labelText: String
    
    init(labelType: typeLabelEnum, labelText: String) {
        self.labelType = labelType
        self.labelText = labelText
        
        super.init(frame: .zero)
        self.configureLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureLabel(){
        self.text = labelText
        configureLabelStyle()
    }
    
    func configureLabelStyle(){
        switch labelType{
        case .medium:
            self.font = .systemFont(ofSize: 19, weight: .medium)
            self.textColor = .black
        case .desc:
            self.font = .systemFont(ofSize: 15, weight: .medium)
            self.textColor = .gray
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.numberOfLines = 0
        self.textAlignment = .left
    }
}
