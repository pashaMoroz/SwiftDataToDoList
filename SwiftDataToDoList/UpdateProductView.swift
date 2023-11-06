//
//  UpdateProductView.swift
//  SwiftDataToDoList
//
//  Created by Moroz Pavlo on 2023-06-16.
//

import SwiftUI

struct UpdateProductView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Bindable var product: Product
    
    var body: some View {
        List {
            TextField("Name", text: $product.title)
            TextField("Price", text: Binding<String>(
                get: { String(product.price) },
                set: { product.price = Int($0) ?? 0 }
            ))
                .keyboardType(.numberPad)
            Button("Update") {
               
                dismiss()
            }
        }
        .navigationTitle("Add Product")
    }
}
