//
//  FrameworkTitleView.swift
//  Apple_Frameworks
//
//  Created by Kuba on 03/01/2024.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View{
    
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .tint(Color(.label))
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }.padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
