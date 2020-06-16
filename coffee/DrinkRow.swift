//
//  DrinkRow.swift
//  coffee
//
//  Created by Isha Pomal on 6/10/20.
//  Copyright © 2020 Isha Pomal. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName:String
    var drinks:[Drink]
    
    var body: some View{ 
        VStack(alignment: .leading){
            
            Text(self.categoryName)
            .font(.title)
            
        
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack(alignment: .top) {
                                
                                ForEach(self.drinks, id: \.name, content: { drink in
                                    NavigationLink(destination: DrinkDetail(drink: drink)) {
                                    
                                        DrinkItem(drink: drink)
                                            .frame(width: 300)
                                            .padding(.trailing, 30)
                                    }
                                    
                                })
                            
                            }
                        })
                
                    }
                    
                    
                    
                }
            }

            #if DEBUG
            struct DrinkRow_Previews : PreviewProvider {
                static var previews: some View {
                    DrinkRow(categoryName: "HOT DRINKS", drinks: drinkData)
                }
            }
            #endif
