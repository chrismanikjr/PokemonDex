//
//  ViewController.swift
//  PokemonDex
//
//  Created by Chrismanto Natanail Manik on 30/01/23.
//

import UIKit
import SwiftUI


class ViewController: UIViewController {
    
    private lazy var pokeImg = ReusableImageView(style: .pokeIcon, imgName: "Chamander")
    
    private lazy var pokeNameLabel = ReusableLabel(labelType: .medium, labelText: "Chamander")
    private lazy var pokeDescLabel = ReusableLabel(labelType: .desc, labelText: "#004")
    
    private lazy var pokeStackView = ReusableStackView(type: .horizontal, alignmentStack: .center, distributionStack: .fill, spacingStack: 10)
    private lazy var descStackView = ReusableStackView(type: .vertical, alignmentStack: .fill, distributionStack: .fill, spacingStack: 0)
    
    private lazy var elementImgView = ReusableImageView(style: .pokeElement, imgName: "ElementBug")
    private lazy var elementImgView2 = ReusableImageView(style: .pokeElement, imgName: "ElementDark")

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        [pokeNameLabel, pokeDescLabel].forEach{ descStackView.addArrangedSubview($0)}

        [pokeImg, descStackView, elementImgView, elementImgView2].forEach{ pokeStackView.addArrangedSubview($0)}
        

        pokeStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(pokeStackView)

        NSLayoutConstraint.activate([
            pokeStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            pokeStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        setupNavBar()
    }
    
    func setupNavBar(){
        navigationItem.title = "Pokemon"
    }
}

struct ViewControllerPreview: PreviewProvider{
    static var previews: some View{
        ViewControllerPreviews{
            ViewController()
        }
        .previewDevice("iPhone 14 Pro")
    }
}
