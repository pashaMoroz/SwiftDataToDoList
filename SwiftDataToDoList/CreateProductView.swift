//
//  CreateProductView.swift
//  SwiftDataToDoList
//
//  Created by Moroz Pavlo on 2023-06-16.
//

import SwiftUI

struct CreateProductView: View {
    @Environment(\.dismiss) var dismiss
    
    //create context variable from Environment
    @Environment(\.modelContext) var context
    
    @State private var product = Product()
    
    var body: some View {
        List {
            TextField("Name", text: $product.title)
            TextField("Price", text: Binding<String>(
                get: { String(product.price) },
                set: { product.price = Int($0) ?? 0 }
            ))
                .keyboardType(.numberPad)
            Button("Create") {
                withAnimation {
                    //we don't need manually called "save", it's automatically saved every time when data changing
                    context.insert(product)
                }
                dismiss()
            }
        }
        .navigationTitle("Add Product")
    }
}


#Preview {
    CreateProductView()
        .modelContainer(for: Product.self)
}
