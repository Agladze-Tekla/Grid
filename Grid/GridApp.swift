//
//  GridApp.swift
//  Grid
//
//  Created by Tekla on 12/18/23.
//

import SwiftUI

@main
struct GridApp: App {
    
    @StateObject var viewModel = ProductViewModel()
    
    var body: some Scene {
        WindowGroup {
            StoreTabView()
                .environmentObject(viewModel)
        }
    }
}
