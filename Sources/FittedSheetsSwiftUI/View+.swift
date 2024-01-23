//
//  View+.swift
//
//
//  Created by 이전희 on 2023/08/17.
//

#if canImport(UIKit)
import FittedSheets
import SwiftUI
import UIKit

public extension View {
    func fittedSheet<SheetView: View>(isPresented: Binding<Bool>,
                                      configuration: SheetConfiguration = .init(),
                                      @ViewBuilder sheetView: @escaping () -> SheetView) -> some View {
        self.background(FittedSheetPresenter(isPresented: isPresented,
                                             configuration: configuration,
                                             destination: sheetView()))
    }
}
#endif