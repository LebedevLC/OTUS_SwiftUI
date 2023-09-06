//
//  SettingsScreen.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 31.08.2023.
//

import SwiftUI

struct SettingsScreen: View {
    
    /// Переменная  для отслеживания отображения модального окна
    @State private var isModalPresented = false

    var body: some View {
        Button("About app") {
            isModalPresented = true
        }
        .buttonStyle(.borderedProminent)
        .sheet(isPresented: $isModalPresented) {
            ModalView()
        }
    }
}

struct ModalView: View {
    var body: some View {
        Text("Made by Sergey Chumovskikh")
    }
}


struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
