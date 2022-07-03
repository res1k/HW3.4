//
//  SliderView.swift
//  HW3.4
//
//  Created by Andrey Zhivotov on 02.07.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var currentValue: Double
    
    let targetValue: Int
    let color: UIColor
    let alpha: Int
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            HStack {
                Text("0")
                Slider(value: $currentValue, alpha: alpha, color: color)
                Text("100")
            }
            .padding()
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(currentValue: .constant(50), targetValue: 100, color: .red, alpha: 100)
    }
}
