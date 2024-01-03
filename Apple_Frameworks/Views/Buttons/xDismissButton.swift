//
//  xDismissButton.swift
//  Apple_Frameworks
//
//  Created by Kuba on 03/01/2024.
//

import SwiftUI

struct xDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            }label:{
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }.padding()
    }
}

#Preview {
    xDismissButton(isShowingDetailView: .constant(false))
}
