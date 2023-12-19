//
//  CategoriesComponentView.swift
//  Grid
//
//  Created by Tekla on 12/18/23.
//
import SwiftUI

struct CategoriesComponentView: View {
    let category: String

    var body: some View {
        VStack {
            Image(systemName: "folder.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .foregroundColor(.blue)
                .padding(10)
                .background(Color(.systemBackground))
                .cornerRadius(10)

            Text(category)
                .font(.headline)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .padding([.top, .leading, .trailing], 8)
                .padding(.bottom, 16)
        }
        .frame(maxWidth: .infinity)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}
