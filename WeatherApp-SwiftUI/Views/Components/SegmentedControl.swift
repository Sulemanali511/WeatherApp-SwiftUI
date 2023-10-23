//
//  SegmentedControl.swift
//  WeatherApp-SwiftUI
//
//  Created by Suleman Ali on 23/10/2023.
//

import SwiftUI

struct SegmentedControl: View {
    @Binding var selection:Int
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                Button{
                    selection = 0
                } label: {
                    Text("Hourly Forecast")
                }
                .frame(minWidth: 0,maxWidth: .infinity)
                Button{
                    selection = 1
                } label: {
                    Text("Weekly Forecast")
                }
                .frame(minWidth: 0,maxWidth: .infinity)
            }
            .font(.subheadline.weight(.semibold))
            .foregroundColor(.secondary)
        }
    }
}

#Preview {
    SegmentedControl(selection: Binding<Int>.constant(0))
}
