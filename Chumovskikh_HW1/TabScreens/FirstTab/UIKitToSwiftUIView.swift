//
//  UIKitToSwiftUIView.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 06.09.2023.
//

import SwiftUI
import UIKit

struct UIKitToSwiftUIView: UIViewRepresentable {
    
    @Binding var isAnimating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let v = UIActivityIndicatorView()
        return v
        
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if isAnimating {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}
