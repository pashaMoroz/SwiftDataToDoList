//
//  MainView.swift
//  SwiftDataToDoList
//
//  Created by Moroz Pavlo on 2023-06-16.
//

import SwiftUI
import SwiftData

struct MainView: View {
    
    //create context variable from Environment
    @Environment(\.modelContext) var context
    
    @State private var showCreate = false
    @State private var productEdit: Product?
    //Mark your model like @Query
    @Query private var products: [Product]
 
    let emodji = Emodji()
    
    var body: some View {
        NavigationStack {

            List {
                ForEach(products) { product in
                    HStack {
                        HStack {
                            
                            let emodjiImage = emodji.setupName(product.title )
                            Image("\(emodjiImage.lowercased())")
                                  
                            VStack(alignment: .leading) {
                                Text(product.title)
                                    .font(.largeTitle)
                                    .bold()
                                Text("Price:" + String(product.price))
                                    .bold()
                            }
                        }
                        Spacer()
                        
                        Button {
                            // change a value for variable from model - is all what you need to do for updating your model
                            product.isBought.toggle()
                        } label: {
                            Image(systemName: "checkmark")
                                .symbolVariant(.circle.fill)
                                .foregroundStyle(product.isBought ? .green : .gray)
                                .font(.largeTitle)
                        }
                        .buttonStyle(.plain)
                    }
                    .swipeActions {
                        Button(role: .destructive) {
                            
                            withAnimation {
                                
                                context.delete(product)
                            }
                            
                        } label: {
                            Label("Delete", systemImage: "trash")
                                .symbolVariant(.fill)
                        }
                        
                        Button(role: .destructive) {
                            
                            productEdit = product
                        } label: {
                            Label("Edit", systemImage: "pencil")
                                .symbolVariant(.fill)
                        }
                        .tint(.orange)
                    }
                }
            }
            .navigationTitle("My List")
            .toolbar {
                    ToolbarItem {
                        Button(action: {
                            showCreate.toggle()
                        }, label: {
                            Label("Add Item", systemImage: "plus")
                        })
                    }
                }
        }
        .sheet(isPresented: $showCreate,
               content: {
            NavigationStack {
                CreateProductView()
            }
            .presentationDetents([.large])
        })
        .sheet(item: $productEdit) {
            productEdit = nil
        } content: { editProduct in
            UpdateProductView(product: editProduct)
        }

    }
}

#Preview {
    MainView()
}
