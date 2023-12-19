//
//  TabView.swift
//  Grid
//
//  Created by Tekla on 12/18/23.
//

import SwiftUI

struct StoreTabView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("Main Page", systemImage: "barcode")
                }
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "cart.fill")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        StoreTabView()
    }
}
