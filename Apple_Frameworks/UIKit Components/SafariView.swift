//
//  SafariView.swift
//  Apple_Frameworks
//
//  Created by Kuba on 03/01/2024.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{

    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
    SFSafariViewController{
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>){}
}
