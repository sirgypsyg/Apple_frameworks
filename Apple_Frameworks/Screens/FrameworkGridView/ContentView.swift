//
//  ContentView.swift
//  Apple_Frameworks
//
//  Created by Kuba on 02/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                 }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self){ framework in
                FrameworkDetailView(framework: framework);
            }
        }
    }
}

#Preview {
    ContentView()
}



