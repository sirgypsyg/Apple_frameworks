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
                List{
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink(destination:FrameworkDetailView(framework: framework,
                                                            isShowingDetailView: $viewModel.isShowingDetailView)){
                            FrameworkTitleView(framework: framework)
                                
                        }
                    }
                 }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    ContentView()
}



