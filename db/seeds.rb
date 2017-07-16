# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

  Food.create!([
    { category: "Vegetable", item_name: "carrots", item_number: 2, expiration: "July 29",}, 
    { category: "Vegetable", item_name: "tomatoes", item_number: 8, expiration: "July 30",},
    { category: "Grains", item_name: "loaf of bread", item_number: 1, expiration: "July 28",},
    { category: "Grains", item_name: "rice", item_number: 2, expiration: "July 29",},
    { category: "Fruit", item_name: "starberries", item_number: 12, expiration: "July 25",},
    { category: "Fruit", item_name: "grapes", item_number: 40, expiration: "July 25",},
    { category: "Meat", item_name: "NY strip steak", item_number: 4, expiration: "July 29",},
    { category: "Meat", item_name: "chicken legs", item_number: 6, expiration: "July 30",},
    { category: "Fruit", item_name: "grapefruit", item_number: 2, expiration: "June 28",},
    { category: "Vegetable", item_name: "cucumber", item_number: 3, expiration: "June 29",},
  ])

Recipe.create!([

 { title: "Buffalo Chicken with Blue Cheese", image_url: "http://images.meredith.com/content/dam/bhg/Images/recipe/37/R140178.jpg.rendition.largest.jpg" , ingredients: "16 chicken drumsticks (about 4 pounds), skinned,
16 ounce bottle buffalo wing hot sauce (2 cups)
1/4 cup tomato paste
2 tablespoons white or cider vinegar
2 tablespoons Worcestershire sauce
8 ounce carton dairy sour cream
1/2 cup mayonnaise
1/2 cup crumbled blue cheese (2 ounces)
1/4 - 1/2 teaspoon cayenne pepper or bottled hot pepper sauce
Celery sticks" , directions: 
"Place drumsticks in a 4- or 5-quart slow cooker. In a medium bowl, combine hot sauce, tomato paste, vinegar, and Worcestershire sauce. Pour over chicken in cooker.
Cover and cook on low-heat setting for 6 to 8 hours or on high-heat setting for 3 to 4 hours.
Meanwhile, in a small bowl, combine sour cream, mayonnaise, blue cheese, and cayenne pepper. Reserve half of the blue cheese dip (3/4 cup); store as directed below. Cover and chill the remaining dip until ready to serve.
Using a slotted spoon, remove drumsticks from cooker. Skim fat from cooking juices. Reserve eight of the drumsticks and 1 cup of the cooking juices; store as directed below. Serve remaining drumsticks with some of the remaining cooking juices, the remaining blue cheese dip, and celery sticks. Makes 4 servings and reserves.", prep_time: 30 },

     { title: "Chicken and Asparagus Skillet Supper", image_url: "http://images.meredith.com/content/dam/bhg/Images/recipe/34/R115488.jpg.rendition.largest.jpg" , ingredients: "8 skinless, boneless chicken thighs
3 slices bacon, coarsely chopped
1/2 cup chicken broth
1 pound asparagus spears, trimmed
1 small yellow summer squash, halved crosswise and cut in 1/2-inch strips
4 green onions, cut in 2-inch pieces" , directions: 
"Sprinkle chicken with salt and pepper. In 12-inch skillet cook chicken and bacon over medium-high heat 12 minutes, turning to brown evenly. Carefully add broth; cover and cook 3 to 5 minutes more or until chicken is tender and no longer pink (180 degrees F).
Meanwhile, in microwave-safe 2-quart dish combine asparagus, squash, and 2 Tbsp. water. Sprinkle salt and pepper. Cover with vented plastic wrap. Cook on FULL power (high) 3 to 5 minutes, until vegetables are crisp-tender, stirring once. Transfer to plates. Drizzle cooking liquid; top with chicken, bacon, and onions. Makes 4 servings.", prep_time: 30 }
    

])
