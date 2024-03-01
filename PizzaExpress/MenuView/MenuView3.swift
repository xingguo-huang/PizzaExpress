//
//  MenuView3.swift
//  PizzaExpress
//
//  Created by Xingguo Huang on 3/1/24.
//

import SwiftUI

struct MenuView3: View {
    var menu:[MenuItem]
    @State private var selectedItem:MenuItem? = nil
    @State private var selectedCategory:MenuCategory? = .originals
   
    var categoryItems:[MenuItem]{
        if selectedCategory == nil{return[]}
        let categoryMenu = menu.filter({$0.category == selectedCategory!})
            return categoryMenu
    }
    
    var body: some View {
        NavigationSplitView {
            List(MenuCategory.allCases, id:\.self,selection: $selectedCategory ){ category in
                Text(category.rawValue)
            }
            .navigationTitle("Pizza Categories")
        } content: {
            List(categoryItems,selection: $selectedItem){ item in
                NavigationLink(value:item){
                    MenuRowView(item: item)
                }
            }
        } detail: {
            MenuDetailView(item: $selectedItem)
        }

    }
}

struct MenuView3_Previews: PreviewProvider {
    static var previews: some View {
        MenuView3(menu:MenuModel().menu)
    }
}
