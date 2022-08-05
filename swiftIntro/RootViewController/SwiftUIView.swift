//
//  SwiftUIView.swift
//  swiftIntro
//
//  Created by Tallon Covell on 8/5/22.
//


import SwiftUI
import UIKit


struct SwiftUIView: View {
    var body: some View {
        Text(" ")
    }
}

struct FontPicker: UIViewControllerRepresentable {
    func makeCoordinator() -> FontPicker.Coordinator {
        return Coordinator(self)
    }
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var font: UIFontDescriptor?
   
    func makeUIViewController(context: Context) -> UIFontPickerViewController {
        return UIFontPickerViewController()
    }
    func updateUIViewController(_ uiViewController: UIFontPickerViewController, context: Context) {
    }
}

func makeUIViewController(context: UIViewControllerRepresentableContext<FontPicker>) -> UIFontPickerViewController {
    let picker = UIFontPickerViewController()
    picker.delegate = context.coordinator
    return picker
}

extension FontPicker {
    class Coordinator: NSObject, UIFontPickerViewControllerDelegate {
        var parent: FontPicker
        init(_ parent: FontPicker) {
            self.parent = parent
        }
        func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController) {
            parent.font = viewController.selectedFontDescriptor
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContView: View {
    @State private var isPresented = false
    @State private var font: UIFontDescriptor?
    
    var body: some View {
        VStack(spacing: 30) {
            Text(font?.postscriptName ?? "")
        }
        Button("Pick a font") {
            self.isPresented = true
        }.sheet(isPresented: $isPresented) {
            FontPicker(font: self.$font)
        }
    }
}




struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
