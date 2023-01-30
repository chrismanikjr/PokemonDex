//
//  ReusableImageView.swift
//  PokemonDex
//
//  Created by Chrismanto Natanail Manik on 31/01/23.
//

import UIKit

class ReusableImageView: UIImageView{
    enum typeImgViewStyle{
        case pokeIcon
        case pokeElement
    }
    
    public private(set) var style: typeImgViewStyle
    public private(set) var imgName: String?
    public private(set) var imgUrl: String?
    
    init(style: typeImgViewStyle, imgName: String? = nil, imgUrl: String? = nil) {
        self.style = style
        self.imgName = imgName
        self.imgUrl = imgUrl
        
        super.init(frame: .zero)
        configureImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureImageView(){
        if let name = imgName{
            self.image = UIImage(named: name)
        }
        configureImgStyle()
    }
    
    func configureImgStyle(){
        self.translatesAutoresizingMaskIntoConstraints = false
        switch style{
        case .pokeIcon:
            self.widthAnchor.constraint(equalToConstant: 50).isActive = true
            self.heightAnchor.constraint(equalToConstant: 50).isActive = true
        case .pokeElement:
            self.widthAnchor.constraint(equalToConstant: 40).isActive = true
            self.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
        self.contentMode = .scaleAspectFit
    }
}
