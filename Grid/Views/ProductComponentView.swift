//
//  ProductComponentView.swift
//  Grid
//
//  Created by Tekla on 12/18/23.
//

import SwiftUI

struct ProductComponentView: View {
    @EnvironmentObject var viewModel: ProductViewModel
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(product.thumbnail)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .cornerRadius(8)
            
            Text(product.title)
                .font(.headline)
                .foregroundColor(.primary)
            
            Text("Price: $\(product.price)")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        
        Button(action: {
            viewModel.addToCart(item: product)
        }) {
            Label("Add to Cart", systemImage: "plus.circle")
                .padding(8)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
        
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}
