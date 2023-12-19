//
//  CategoriesView.swift
//  Grid
//
//  Created by Tekla on 12/18/23.
//

import SwiftUI

struct CategoriesView: View {
    @EnvironmentObject var viewModel: ProductViewModel
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 5) {
                ForEach(viewModel.allCategories, id: \.self) { category in
                    CategoriesComponentView(category: category)
                }
            }
            .padding()
        }
    }
}
