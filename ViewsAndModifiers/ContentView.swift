//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Pedro Remedios on 16/02/2020.
//  Copyright © 2020 Pedro Remedios. All rights reserved.
//

import SwiftUI

struct BigTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 50))
    }
    
}

extension View {
    func bigTitleStyle() -> some View {
        self.modifier(BigTitle())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .bigTitleStyle()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
