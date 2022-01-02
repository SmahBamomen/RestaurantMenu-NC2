//
//  main.swift
//  RestaurantMenu-NC2
//
//  Created by samah on 23/05/1443 AH.
//

import Foundation
class Restaurant {
   var restaurantName: String
   var foodNameAndPrice = [String : Double]()
   var type:String
   
    
    init(restaurantName: String,foodNameAndPrice :[String: Double] ,type: String) {
      self.restaurantName = restaurantName
      self.foodNameAndPrice = foodNameAndPrice
        self.type = type
   }
}
var userReservation : [reservation] = []
var allUserReservation: [String] = []
var userName : String = ""

func printSeprator(){
    print("\n..\u{2665} __________________________________________________ \u{2665}..\n")

}
runMyApp()

func runMyApp(){
    print("\n\n\t\t\t\tWelcome to Ristorante \u{2665} \n\nPlease enter your name: ")
    userName = readLine()!
    getMainMenu(userName)
}


func getMainMenu(_ userName:String){
   
    let printMainMenu : String = """
        \nHi \(userName) \u{2665} ..
        Please select from the following:
        1. View all Restaurants
        2. Make an Reservation
        3. View all of your Reservation
        4. Lets the chosen on us 🤩 \n
        Please enter your option:
    """
    print(printMainMenu)
    guard let userOption = readLine() else {
        return
    }
    takeUserOption(userOption)
}


func takeUserOption(_ userOption:String){
 
    switch userOption{
    case "1" :
        getAllRestaurantsMenu()
    case "2" :
        makeReservation()
    case "3" :
        getAllReservationFunc()
    case "4" :
        getLetsChosen()
    default:
        print("Sorry you didn't choose ! :) ")
        getMainMenu(userName)
       
    }

}

func getAllRestaurantsMenu(){
    print("⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕ View all Restaurants ⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕\n")
    let printMainMenu : String = """
        1. Breakfast
        2. Lunch And Dinner
        3. Coffee And Dessert
        Please enter your option:
    """
    print(printMainMenu)
    let  userMenuOption = readLine()
    getAllRestaurantsFunc(userMenuOption!)
}
func getAllRestaurantsFunc(_ userMenuOption:String){
    switch userMenuOption{
    case "1" :
        getAllBreakfastRestaurant()
    case "2" :
        getAllLunchAndDinnerRestaurant()
    case "3" :
        getAllCoffeeAndDessertRestaurant()
  
    default:
        print("Sorry you didn't choose ! :) ")
        getMainMenu(userName)
       
    }
}

func getAllBreakfastRestaurant(){
    let allBreakfastMenu  = ["Tamees 09", "Hide Out","Faris Breakfast"]
    printSeprator()
    print("\t\t\t\t..Breakfast Restaurants..")
    for (index, value) in allBreakfastMenu.enumerated() {
        print("\n\(index + 1): \(value)")
    }
    printSeprator()
    print("Enter the number of resurant you want :")
    let  breakfastResurantNumber = readLine()
    getBreakfastRestaurantUserOption(breakfastResurantNumber!)

    
}
func getBreakfastRestaurantUserOption(_ breakfastResurantNumber:String){
    switch breakfastResurantNumber{
    case "1" :
        getBreakfastRestaurantsMenu("1")
    case "2" :
        getBreakfastRestaurantsMenu("2")
    case "3" :
        getBreakfastRestaurantsMenu("3")
  
    default:
        print("Sorry you didn't choose ! :) ")
        getAllRestaurantsMenu()
    }
    
}
func getBreakfastRestaurantsMenu(_ breakfastResurantNumber:String){
    printSeprator()
    if(breakfastResurantNumber == "1"){
        
        
        
        let firstMCMenu = Restaurant(restaurantName: "Tamees 09", foodNameAndPrice: ["Foul                " : 18.40,"Two cheese Shakshoka" : 29.90, "09 Chakshoka        " : 33.35,   "Muqalqal            " : 46.00, "Liver Plate         " : 40.25],type: "Main Courses")
        print("\t\t\t.. \(firstMCMenu.restaurantName) Restaurants Menu ..\n")
   
      
        let firstDrinkMenu = Restaurant(restaurantName: "Tamees 09", foodNameAndPrice: [  "Karak Tea Pot       " : 26.40,"Red Tea Pot         " : 20.70,  "Karak Tea Cup       " : 5.75,  "Red Tea Cup         " :  5.75,  "Water               ": 3],type: "Drink")
        var main_courses_index = 1
        print(firstMCMenu.type)
        for (key, value) in firstMCMenu.foodNameAndPrice {
           
            print("\n\(main_courses_index): \(key) \t\t\t\t\t \(value) SR")
            
           
            main_courses_index += 1
            
        }

        printSeprator()
        print(firstDrinkMenu.type)
        var drinkIndex = 1
        for (key, value) in firstDrinkMenu.foodNameAndPrice {
            print("\n\(drinkIndex): \(key) \t\t\t\t\t \(value) SR")
            drinkIndex += 1
            
        }

    }
    if(breakfastResurantNumber == "2"){
      let secondMCMenu = Restaurant(restaurantName: "Hide Out", foodNameAndPrice: ["EGG & Cheese Croissant   " : 33.00,"Crilled Cheese Croissant" : 24.00,"Classic Pancake          " : 28.00,"The Original Frence Toast" : 36.00,"Hideout Omelet             " : 27.00],type: "Main Courses")
        print("\t\t\t.. \(secondMCMenu.restaurantName) Restaurants Menu ..\n")
        
       
      
       
       
       
        let secondDrinkMenu = Restaurant(restaurantName: "Hide Out", foodNameAndPrice: [ "Karak Tea Pot           " : 26.00, "Red Tea Pot             " : 20.00,  "Karak Tea Cup           " : 5.00, "Red Tea Cup             " :  5.00, "Water                   " : 2.00],type: "Drink")
        var mainCoursesIndex = 1
        print(secondMCMenu.type)
        for (key, value) in secondMCMenu.foodNameAndPrice {
           
            print("\n\(mainCoursesIndex): \(key) \t\t\t\t\t \(value) SR")
            
           
            mainCoursesIndex += 1
            
        }

        printSeprator()
        print(secondDrinkMenu.type)
        var drink_index = 1
        for (key, value) in secondDrinkMenu.foodNameAndPrice {
            print("\n\(drink_index): \(key) \t\t\t\t\t \(value) SR")
            drink_index += 1
            
        }
    }
    else if(breakfastResurantNumber == "3"){
         let thirdMCMenu = Restaurant(restaurantName: "Faris Breakfast", foodNameAndPrice: ["Scrambled Eggs      ": 18.00, "Shakshoka           ": 24.00, "My Father's Masoub  ": 28.00, "Three Cheese        " : 36.00, "Nizak Egg           " : 42.00],type: "Main Courses")
          print("\t\t\t.. \(thirdMCMenu.restaurantName) Restaurants Menu ..\n")
          
        
          let thirdDrinkMenu = Restaurant(restaurantName: "Faris Breakfast", foodNameAndPrice: [ "Karak Tea Pot       " : 26.00, "Red Tea Pot         " : 24.00,  "Karak Tea Cup       " : 7.00,  "Red Tea Cup         " :  7.00,"Water               " : 2.00],type: "Drink")
          var mainCoursesIndex = 1
          print(thirdMCMenu.type)
          for (key, value) in thirdMCMenu.foodNameAndPrice {
             
              print("\n\(mainCoursesIndex): \(key) \t\t\t\t\t \(value) SR")
              
             
              mainCoursesIndex += 1
              
          }

          printSeprator()
          print(thirdDrinkMenu.type)
          var drinkIndex = 1
          for (key, value) in thirdDrinkMenu.foodNameAndPrice {
              print("\n\(drinkIndex): \(key) \t\t\t\t\t \(value) SR")
              drinkIndex += 1
              
          }
    }
    
    getMainMenu(userName)
  
}


func getAllLunchAndDinnerRestaurant(){
    let allLunchAndDinnerMenu  = ["KABANA", "Dar Zaid","Meez"]
    printSeprator()
    print("\t\t\t\t..Lunch And Dinner Restaurants..")
    for (index, value) in allLunchAndDinnerMenu.enumerated() {
        print("\n\(index + 1): \(value)")
    }
    printSeprator()
    print("Enter the number of resurant you want :")
    let  lunchAndDinnerResurantNumber = readLine()
    getAllLunchAndDinnerRestaurantUserOption(lunchAndDinnerResurantNumber!)
}
func getAllLunchAndDinnerRestaurantUserOption(_ lunchAndDinnerResurantNumber:String){
    switch lunchAndDinnerResurantNumber{
    case "1" :
        getAllLunchAndDinnerMenu("1")
    case "2" :
        getAllLunchAndDinnerMenu("2")
    case "3" :
        getAllLunchAndDinnerMenu("3")
  
    default:
        print("Sorry you didn't choose ! :) ")
        getAllRestaurantsMenu()
    }
}
func getAllLunchAndDinnerMenu(_ lunchAndDinnerNumber:String){
    printSeprator()
    if(lunchAndDinnerNumber == "1"){
        let first_MC_menu = Restaurant(restaurantName: "KABANA", foodNameAndPrice: [ "Chicken Pizza       " : 74.00, "Pepperoni           " : 76.00,"Penne Arabiatta     " : 72.00, "Bolani Gandana      " : 46.00, "Shami Kebab         " : 118.00],type: "Main Courses")
        print("\t\t\t.. \(first_MC_menu.restaurantName) Restaurants Menu ..\n")
       
    
        let first_drink_menu = Restaurant(restaurantName: "KABANA", foodNameAndPrice: [ "Lilac               " : 28.00,"Orange              " : 24.00,"Pepsi/7up/diet Pepsi" : 9.00, "Lemon & Mint        " :  20.00,"Water               " : 7.00],type: "Drink")
        var main_courses_index = 1
        print(first_MC_menu.type)
        for (key, value) in first_MC_menu.foodNameAndPrice {
           
            print("\n\(main_courses_index): \(key) \t\t\t\t\t \(value) SR")
            
           
            main_courses_index += 1
            
        }

        printSeprator()
        print(first_drink_menu.type)
        var drink_index = 1
        for (key, value) in first_drink_menu.foodNameAndPrice {
            print("\n\(drink_index): \(key) \t\t\t\t\t \(value) SR")
            drink_index += 1
            
        }

    }
    if(lunchAndDinnerNumber == "2"){
      let second_MC_menu = Restaurant(restaurantName: "Dar Zaid", foodNameAndPrice: ["Alforno Pasta       " : 86.00, "Lobster Pasta       " : 172.00,  "Bresaola Pizza      " : 92.00,"Agnello             " : 142.00,"Salmon              " : 124.00],type: "Main Courses")
        print("\t\t\t.. \(second_MC_menu.restaurantName) Restaurants Menu ..\n")
      

        let second_drink_menu = Restaurant(restaurantName: "Dar Zaid", foodNameAndPrice: [  "Lilac               " : 28.00,"Orange               " : 24.00,"Pepsi/7up/diet Pepsi" : 9.00,"Lemon & Mint        " :  20.00, "Water               " : 7.00],type: "Drink")
        var main_courses_index = 1
        print(second_MC_menu.type)
        for (key, value) in second_MC_menu.foodNameAndPrice {
           
            print("\n\(main_courses_index): \(key) \t\t\t\t\t \(value) SR")
            
           
            main_courses_index += 1
            
        }

        printSeprator()
        print(second_drink_menu.type)
        var drink_index = 1
        for (key, value) in second_drink_menu.foodNameAndPrice {
            print("\n\(drink_index): \(key) \t\t\t\t\t \(value) SR")
            drink_index += 1
            
        }
    }
    else if(lunchAndDinnerNumber == "3"){
       
   
        let third_MC_menu = Restaurant(restaurantName: "Meez", foodNameAndPrice: ["Cranberry Vine Rolls" : 34.00,"Shawerma Ribs Fries " : 65.00,"Shrimps Barak       " : 69.00,"Khoshari            " : 45.00, "Crispy Chicken      ": 42.00],type: "Main Courses")
          print("\t\t\t.. \(third_MC_menu.restaurantName) Restaurants Menu ..\n")
          
          let third_drink_menu = Restaurant(restaurantName: "Meez", foodNameAndPrice: ["Lilac               " : 28.00,  "Orange              " : 24.00,"Pepsi/7up/diet Pepsi" : 9.00,  "Lemon & Min         " :  20.00, "Water               " : 7.00],type: "Drink")
          var main_courses_index = 1
          print(third_MC_menu.type)
          for (key, value) in third_MC_menu.foodNameAndPrice {
             
              print("\n\(main_courses_index): \(key) \t\t\t\t\t \(value) SR")
              
             
              main_courses_index += 1
              
          }

          printSeprator()
          print(third_drink_menu.type)
          var drink_index = 1
          for (key, value) in third_drink_menu.foodNameAndPrice {
              print("\n\(drink_index): \(key) \t\t\t\t\t \(value) SR")
              drink_index += 1
              
          }
    }
    getMainMenu(userName)
}

func getAllCoffeeAndDessertRestaurant(){
    let allCoffeeAndDessertMenu  = ["66 Cups", "Brew 92","Caffeine Lab"]
    printSeprator()
    print("\t\t\t\t..Coffee And Dessert Restaurants..")
    for (index, value) in allCoffeeAndDessertMenu.enumerated() {
        print("\n\(index + 1): \(value)")
    }
    printSeprator()
    print("Enter the number of resurant you want :")
    let  CoffeeAndDessert_resurant_number = readLine()
    getAllCoffeeAndDessertRestaurantUserOption(CoffeeAndDessert_resurant_number!)
}
func getAllCoffeeAndDessertRestaurantUserOption(_ CoffeeAndDessert_resurant_number:String){
    switch CoffeeAndDessert_resurant_number{
    case "1" :
        getAllCoffeeAndDessertMenu("1")
    case "2" :
        getAllCoffeeAndDessertMenu("2")
    case "3" :
        getAllCoffeeAndDessertMenu("3")
  
    default:
        print("Sorry you didn't choose ! :) ")
        getAllCoffeeAndDessertRestaurant()
    }
}
func getAllCoffeeAndDessertMenu(_ CoffeeAndDessert_resurant_number:String){
    
    printSeprator()
    if(CoffeeAndDessert_resurant_number == "1"){
            let first_MC_menu = Restaurant(restaurantName: "66 Cups", foodNameAndPrice: ["Caramel Tiramisu    " : 19.00,"Huniani             " : 22.00,"Chocolate Coconut   " : 25.00,"Mango Cheesecake    " : 18.00,"Raspberry Cheesecake" : 23.00],type: "Dessert")
        print("\t\t\t.. \(first_MC_menu.restaurantName) Restaurants Menu ..\n")
         let first_drink_menu = Restaurant(restaurantName: "66 Cups", foodNameAndPrice: [ "66 Latte            " : 22.00, "Flat White          " : 18.00, "Espresso            " : 8.00,  "Cortado             " :  16.00, "Hot Chocolate       " : 14.00],type: "Coffee")
        var main_courses_index = 1
        print(first_MC_menu.type)
        for (key, value) in first_MC_menu.foodNameAndPrice {
           
            print("\n\(main_courses_index): \(key) \t\t\t\t\t \(value) SR")
            
           
            main_courses_index += 1
            
        }

        printSeprator()
        print(first_drink_menu.type)
        var drink_index = 1
        for (key, value) in first_drink_menu.foodNameAndPrice {
            print("\n\(drink_index): \(key) \t\t\t\t\t \(value) SR")
            drink_index += 1
            
        }

    }
    if(CoffeeAndDessert_resurant_number == "2"){
      
      let second_MC_menu = Restaurant(restaurantName: "Brew 92", foodNameAndPrice: [ "Banana & Nutella             " : 29.00,"Salted Cow With Whipped Cream" : 36.00,"Fried Chicken & Waffle       " : 37.00],type: "Dessert")
        print("\t\t\t.. \(second_MC_menu.restaurantName) Restaurants Menu ..\n")
       
        let second_drink_menu = Restaurant(restaurantName: "Brew 92", foodNameAndPrice: ["Latte                        " : 19.00,"Flat White                   " : 16.00, "Espresso                     " : 15.00,"Spanish Latte                " :  20.00, "Hot Chocolate                " : 14.00],type: "Coffee")
        var main_courses_index = 1
        print(second_MC_menu.type)
        for (key, value) in second_MC_menu.foodNameAndPrice {
           
            print("\n\(main_courses_index): \(key) \t\t\t\t \(value) SR")
            
           
            main_courses_index += 1
            
        }

        printSeprator()
        print(second_drink_menu.type)
        var drink_index = 1
        for (key, value) in second_drink_menu.foodNameAndPrice {
            print("\n\(drink_index): \(key) \t\t\t\t \(value) SR")
            drink_index += 1
            
        }
    }
    else if(CoffeeAndDessert_resurant_number == "3"){
        
        let third_MC_menu = Restaurant(restaurantName: "Caffeine Lab", foodNameAndPrice: ["Blueberry Waffle             " : 34.00,"American Pancake             " : 30.00,"Cinnamon Chocolate Waffle    " : 25.00,"Carrot & Date hot cake       " : 28.00,"Mixed Berries Waffle         " : 42.00],type: "Desset")
          print("\t\t\t.. \(third_MC_menu.restaurantName) Restaurants Menu ..\n")
         
          let third_drink_menu = Restaurant(restaurantName: "Caffeine Lab", foodNameAndPrice: ["Latte                        " : 28.00,"Flat White                   " : 24.00,"Espresso                     ": 9.00,"Cortado                      " :  20.00,"Hot Chocolate                " : 7.00],type: "Coffee")
          var main_courses_index = 1
          print(third_MC_menu.type)
          for (key, value) in third_MC_menu.foodNameAndPrice {
             
              print("\n\(main_courses_index): \(key) \t\t\t\t \(value) SR")
              
             
              main_courses_index += 1
              
          }

          printSeprator()
          print(third_drink_menu.type)
          var drink_index = 1
          for (key, value) in third_drink_menu.foodNameAndPrice {
              print("\n\(drink_index): \(key) \t\t\t\t \(value) SR")
              drink_index += 1
              
          }
    }
    getMainMenu(userName)
}

func makeReservation(){
    
    let allResturants  = ["Tamees 09", "Hide Out","Faris Breakfast","KABANA", "Dar Zaid","Meez","66 Cups","Brew 92","Caffeine Lab"]
    print("⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕ Make an Reservation ⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕\n")
    for (index,key) in allResturants.enumerated(){
        print("\(index): \(key).")
    }
    print("Please enter the number of restaurant you want to make a reservation :")
    let returant_reservation = readLine()
    let value_returant_reservation = Int(returant_reservation!)
    
    print("Enter the day : ")
    let day_for_reservation = readLine()?.uppercased()
    
    print("Enter the date : ")
    let date_for_reservation = readLine()
    
    print("Enter the number of persons : ")
    let number_of_persons = readLine()
    
    print("Enter the time : ")
    let time_for_reservation = readLine()?.uppercased()
 print("\n⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕ Your Reservation for ⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕")
    let resturant_name : String = allResturants[value_returant_reservation!].uppercased()
    print("\n\t\t\t\(resturant_name) Restaurant has been confirmed  \n\t\t\t\tOn \(day_for_reservation!) ( \(date_for_reservation!) ) \n\t\t\t\t At \(time_for_reservation!) for \(number_of_persons!) people ")
 
 print("\n⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕ THANK YOU ⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕\n")
   let reservation = reservation(resturantName: resturant_name , date: date_for_reservation!, day: day_for_reservation!, personNum: number_of_persons!, time: time_for_reservation!)
    
    userReservation.append(reservation)

    getMainMenu(userName)
}
func getAllReservationFunc(){
    if(userReservation.isEmpty){
        print("Sorry you didn't have reservations ! :)  ")
    }
    else {

  
    print("\n\n⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕ All Reservations ⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕\n")
        var index = 1
        for reservation in userReservation {
            print("\(index) Reservation :")
            reservation.printAllReservation()
            index += 1
            
        }
       
}
  
    getMainMenu(userName)
    
}

func getLetsChosen(){
    print("\n⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕ Lets the chosen on us 🤩 ⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕\n")
    let printLetsChosen : String = """
       Please select from the following what the food you want :
    1. Breakfast
    2. Lunch and Dinner
    3. Coffee and Desserts \n
    Please enter your option:
    """
    print(printLetsChosen)
    guard let userLetsChosen = readLine() else {
        return
    }
    
    switch userLetsChosen{
    case "1" :
        breakfastLetsChosen()
    case "2" :
        print("Sorry try it another time ☹️")
        getMainMenu(userName)
    case "3" :
        print("Sorry try it another time ☹️")
        getMainMenu(userName)
    default:
        print("Sorry you didn't choose ! :) ")
        getMainMenu(userName)
       
    }
  
}

func breakfastLetsChosen(){
    print("\n⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕ Breakfast 🤩 ⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕\n")
    let printSuggestionsBreakfast : String = """
       What the type of breakfast you prefer ?
    1. Muqalqal , Foul , Chakshoka , etc.\n
                       OR
    \n2. Croissant , Frence Toast , Pancake , etc.
    Please enter your option:
    """
    print(printSuggestionsBreakfast)

    guard let userSuggestionsBreakfast = readLine() else {
        return
    }
   
    
    if (userSuggestionsBreakfast == "1"){
        print("You prefer a restaurant specialized in these meals only?")
        print("Enter 1 for yes OR 2 for no ")
        guard let userSuggestionsBreakfast2 = readLine() else {
            return
        }
        switch userSuggestionsBreakfast2{
        case "1" :
            print("\n⁕⁕⁕⁕⁕⁕⁕⁕⁕ We suggest to you Tamees 09 restaurant 🤩 ⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕\n")
            getMainMenu(userName)
        case "2" :
            
            print("\n⁕⁕⁕⁕⁕⁕ We suggest to you Faris Breakfast restaurant 🤩 ⁕⁕⁕⁕⁕⁕⁕\n")
            getMainMenu(userName)
    
        default:
            print("Sorry you didn't choose ! :) ")
            getMainMenu(userName)
           
        }
        
    }
    else if (userSuggestionsBreakfast == "2"){
        
        print("\n⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕ We suggest to you Hideout restaurant 🤩 ⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕⁕\n")
        getMainMenu(userName)
    }
    else{
        getMainMenu(userName)
    }
    
}






struct reservation {
    var resturantName : String
    var date : String
    var day : String
    var personNum : String
    var time : String
    
    
    func printAllReservation()
    {
        
        print("\t\t\t\tThe Resturant Name :", resturantName)
        print("\t\t\t\tDay :", day)
        print("\t\t\t\tDate :", date)
        print("\t\t\t\tTime :", time)
        print("\t\t\t\tNumber of person :", personNum)
      
        printSeprator()
    }
}



//func getMakeOrderFunc(){
//    print("Do you want to make order ? Plese enter 1 for yes or 2 for no \n ")
//    let  make_order_or_not = readLine()
//    switch make_order_or_not{
//    case "1" :
//        print("Enter the number of main courses or drink you want ..")
//        let  order = readLine()
//
//        var ordres = [order]
//        print(ordres)
//
//        print("How many ?")
//        print("Do you want another thing or finsh the order ?")
//        print("Enter 1 for more and 2 for finsh")
//    case "2" :
//        print("Do you want to go Main Restaurants or Home ? \n  ( Enter 1 for Main Restaurants or 2 for Home )")
//        let  main_restaurants_or_home = readLine()
//        switch main_restaurants_or_home{
//        case "1" :
//            getAllRestaurantsMenu()
//        case "2" :
//            runMyApp()
//
//        default:
//            print("Sorry you didn't choose ! :) ")
//            getMakeOrderFunc()
//
//        }
//
//
//    default:
//        print("Sorry you didn't choose ! :) ")
//        getMakeOrderFunc()
//
//    }
//}
