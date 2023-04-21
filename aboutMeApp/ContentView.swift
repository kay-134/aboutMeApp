//
//  ContentView.swift
//  aboutMeApp
//
//  Created by Kayley Chery on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    let peach = Color("Color")
    let bblue = Color("Color1")
    @State private var fact = "Press buttons to learn more about me!!"
    @State private var title = "I'm Kayley Chery!"
    @State private var image = "Kayley"
    
    var body: some View {
        ZStack {
            peach
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20.0) {
               
                Text(title)
                    .font(.largeTitle)
                    .padding(10)
                    .fontWeight(.semibold)
                    .tint(Color("Color 1"))
                    .background(Rectangle()
                        .foregroundColor(.white))
                            .cornerRadius(5)
                            .shadow(radius: 15)
                    
             
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(radius: 15)
                    
                HStack(spacing: 20){
                    Button("hobbies") {
                        title = "My Hobbies"
                        fact = "I have a lot of hobbies, but one includes circuitry, wiring & soldering! \n \n Currently working on my final and want to out this pattern of LEDs on an earring!"
                        image = "hobby"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Color 1"))
                    .fontWeight(.bold)
                    
                        
                    Button("favorite color") {
                        title = "My Favorite Color"
                        fact = "My favorite color is and has always been purple! \n \n More specifically I gravitate towards lavendars, lilacs & periwinkles!"
                        image = "purple"
                       
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Color 1"))
                    .fontWeight(.bold)
                    
                    
                    Button("family") {
                        title = "My Family"
                        fact = "I'm an older sister! \n \n I absolutely love my younger brother and will miss him when he goes away to college!"
                        image = "family"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Color 1"))
                    .fontWeight(.bold)
                        
                }
                    
                    
                HStack(spacing: 20){
                    Button("major") {
                        title = "My Major"
                        fact = "I'm a freshman at NYU studying Interactive Media Arts. \n \n Think computer science meets visual arts and I absolutely love it there!"
                        image = "major"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Color 1"))
                    .fontWeight(.bold)
                
                            
                    Button("plants") {
                        title = "My Love for Plants"
                        fact = "I absolutely love plants! \n \n Funny enough I really love nature despite living in the city."
                        image = "plants"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Color 1"))
                    .fontWeight(.bold)
                        
                    Button("me") {
                        title = "3 more fun facts:"
                        fact = "-I'm a Capricorn \n\n -My favorite food is pizza \n\n -I like to upcyle my clothes "
                        image = "me"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Color 1"))
                    .fontWeight(.bold)
                        
                        
                    }
                
                Text(fact)
                    .font(.title2)
                    .padding(5)
                    .multilineTextAlignment(.center)
                    .background(Rectangle()
                        .foregroundColor(.white))
                            .cornerRadius(5)
                            .shadow(radius: 15)
                   
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
