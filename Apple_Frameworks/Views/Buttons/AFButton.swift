//
//  AFButton.swift
//  Apple_Frameworks
//
//  Created by Kuba on 03/01/2024.
//

import SwiftUI

struct AFButton: View {
    
    
    var title: String
    @Binding var isShowingSafariView: Bool
    
    
    var body: some View {
        Button{
            isShowingSafariView = true
        }label:{
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .frame (width: 200, height: 50)
                .background(Color.red)
                .foregroundColor(Color.black)
                .cornerRadius(20)
            
        }
    }
}

#Preview {
    AFButton(title: MockData.sampleFramework.name,
             isShowingSafariView: .constant(false))
}
