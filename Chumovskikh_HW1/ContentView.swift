//
//  ContentView.swift
//  Chumovskikh_HW1
//
//  Created by Сергей Чумовских  on 31.08.2023.
//

/*
 Добавить TabView
 
 1 - На первом табе должна быть кнопка открывающая второй таб и один из пунктов там
 
 2 - На втором табе сделать List обернутый в NavigationView
 
 Из листа должны быть переходы с NavigationLink
 
 3 - На третьем табе должна быть кнопка открывающая модальное окно
 
 Протестировать на iPad/iPhone симуляторах, со сменой ориентации девайса
 
 Добавить один UIKit компонент через UIViewRepresantable
 */


import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            FavoritesTabView()
                .tag(0)
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
            RecipeListTabView()
                .tag(1)
                .tabItem {
                    Label("Receipt", systemImage: "frying.pan")
                }
            SettingsTabView()
                .tag(2)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
