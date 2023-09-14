//
//  UIKitHearthView.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 06.09.2023.
//

import SwiftUI
import UIKit

struct UIKitHearthView: UIViewRepresentable {
    
    @Binding var isAnimating: Bool
    
    func makeUIView(context: Context) -> AnimateHeartView {
        return AnimateHeartView()
    }
    
    func updateUIView(_ uiView: AnimateHeartView, context: Context) {
        if isAnimating {
            uiView.startAnimations()
        } else {
            uiView.stopAnimations()
        }
    }
}

final class AnimateHeartView: UIView {
    private var heartImage: UIImageView = {
        let heartImage = UIImageView()
        heartImage.image = UIImage(systemName: "heart.fill")
        heartImage.tintColor = .red
        heartImage.backgroundColor = UIColor.clear
        heartImage.alpha = 0.9
        heartImage.translatesAutoresizingMaskIntoConstraints = false
       return heartImage
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        addSubview(heartImage)
        NSLayoutConstraint.activate([
            heartImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            heartImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            heartImage.heightAnchor.constraint(equalTo: heightAnchor),
            heartImage.widthAnchor.constraint(equalTo: widthAnchor)
        ])
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        startAnimations()
    }
    
    func stopAnimations() {
        layer.removeAllAnimations()
        heartImage.alpha = 0
    }
    
    func startAnimations() {
        UIView.animateKeyframes(
            withDuration: 2.5,
            delay: 0,
            options: [.repeat, .autoreverse],
            animations: {
                UIView.addKeyframe(
                    withRelativeStartTime: 0,
                    relativeDuration: 2/5,
                    animations: {
                        self.heartImage.alpha = 0.6
                    }
                )
                UIView.addKeyframe(
                    withRelativeStartTime: 2/5,
                    relativeDuration: 1/5,
                    animations: {
                        self.heartImage.alpha = 1
                    }
                )
                UIView.addKeyframe(
                    withRelativeStartTime: 3/5,
                    relativeDuration: 1/6,
                    animations: {
                        self.heartImage.alpha = 0.6
                    }
                )
                UIView.addKeyframe(
                    withRelativeStartTime: 4/5,
                    relativeDuration: 1/5,
                    animations: {
                        self.heartImage.alpha = 1
                    }
                )
            }
        )
    }
}
