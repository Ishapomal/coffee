//
//  Home.swift
//  coffee
//
//  Created by Isha Pomal on 6/10/20.
//  Copyright © 2020 Isha Pomal. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    
    var categories:[String:[Drink]] {
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue}
        )
    }
    
    
    var body: some View {
        NavigationView{
            List (categories.keys.sorted(), id:\.self) {key in
                DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key]!)
                    .frame(height: 320)
                .padding(.top)
                .padding(.bottom)
            }
            .navigationBarTitle(Text("COFFEE"))
        }
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
