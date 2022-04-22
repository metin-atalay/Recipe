//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Metin Atalay on 21.04.2022.
//

import SwiftUI

struct RipeningStagesView: View {
    
    // MARK: - PROPS
    
    var ripeningStages: [Ripening] = ripeningData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack (alignment: .center, spacing: 25) {
                    ForEach(ripeningStages){ item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
