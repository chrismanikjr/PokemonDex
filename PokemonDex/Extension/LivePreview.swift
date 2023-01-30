//
//  LivePreview.swift
//  PokemonDex
//
//  Created by Chrismanto Natanail Manik on 30/01/23.
//

import UIKit
import SwiftUI


struct ViewControllerPreviews: UIViewControllerRepresentable{
    let viewControllerBuilder: () -> UIViewController
    
    init(viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }
    func makeUIViewController(context: Context) -> some UIViewController {
        return viewControllerBuilder()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // Not needed
    }
}

struct ViewPreview: UIViewRepresentable {
    let viewBuilder: () -> UIView

    init(_ viewBuilder: @escaping () -> UIView) {
        self.viewBuilder = viewBuilder
    }

    func makeUIView(context: Context) -> some UIView {
        viewBuilder()
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        // Not needed
    }
}
