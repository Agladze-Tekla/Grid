//
//  ContentView.swift
//  Grid
//
//  Created by Tekla on 12/18/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var viewModel: ProductViewModel
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5)
    ]
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 5) {
                    ForEach(viewModel.allItems) {
                        item in
                        VStack {
                            ProductComponentView(product: item)
                        }
                    }
                }
            }
            .onAppear {
                viewModel.setupInitialData()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
