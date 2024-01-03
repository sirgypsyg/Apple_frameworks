//
//  FrameworkGradeViewModel.swift
//  Apple_Frameworks
//
//  Created by Kuba on 03/01/2024.
//
import SwiftUI



final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
        //colums
    let columns: [GridItem] = [GridItem(.flexible()),
       GridItem(.flexible()),
       GridItem(.flexible())
                ]

    
    @Published var isShowingDetailView = false;
}
