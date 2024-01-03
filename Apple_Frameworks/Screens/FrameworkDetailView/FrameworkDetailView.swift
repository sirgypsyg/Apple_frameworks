//
//  FrameworkDetailView.swift
//  Apple_Frameworks
//
//  Created by Kuba on 02/01/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    
    var body: some View {
        VStack{
            
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .padding()
            
            Spacer()
            AFButton(title: "Learn More",
                     isShowingSafariView: $isShowingSafariView)
            Spacer()
        }.sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}
    #Preview {
        FrameworkDetailView(framework: MockData.sampleFramework) .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
    }

