//
//  CharactersView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI

struct CharactersView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    
                }
            }
        }
    }
    
    var grid: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 200), spacing: 4)], spacing: 34) {
            ForEach(0..<27) { _ in
                CharactersView()
            }
        }
        
        .padding(.horizontal, 5)
        .padding(.vertical, 30)
    }
    
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView().previewLayout(.fixed(width: 130, height: 150))
    }
}
