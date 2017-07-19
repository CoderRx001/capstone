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
    { category: "Fruit", item_name: "grapefruit", item_number: 2, expiration: "July 28",},
    { category: "Vegetable", item_name: "cucumber", item_number: 3, expiration: "July 29",},
    { category: "Vegetable", item_name: "asparagus", item_number: 5, expiration: "July 30",},
    { category: "dairy", item_name: "milk", item_number: 1, expiration: "July 29",},
    { category: "sweet", item_name: "chocolate syrup", item_number: 1, expiration: "August 29",},

  ])

recipe_1 = Recipe.create!(
          title: 'Buffalo Chicken with Blue Cheese', 
          image_url: 'http://images.meredith.com/content/dam/bhg/Images/recipe/37/R140178.jpg.rendition.largest.jpg' ,
          directions: "Place drumsticks in a 4- or 5-quart slow cooker. In a medium bowl, combine hot sauce, tomato paste, vinegar, and Worcestershire sauce. Pour over chicken in cooker.
          Cover and cook on low-heat setting for 6 to 8 hours or on high-heat setting for 3 to 4 hours.
          Meanwhile, in a small bowl, combine sour cream, mayonnaise, blue cheese, and cayenne pepper. Reserve half of the blue cheese dip (3/4 cup); store as directed below. Cover and chill the remaining dip until ready to serve. 
          Using a slotted spoon, remove drumsticks from cooker. Skim fat from cooking juices. Reserve eight of the drumsticks and 1 cup of the cooking juices; store as directed below. Serve remaining drumsticks with some of the remaining cooking juices, the remaining blue cheese dip, and celery sticks. Makes 4 servings and reserves.",
          prep_time: 30)

ingredients_names_1 = "16 chicken drumsticks (about 4 pounds), skinned,
  16 ounce bottle buffalo wing hot sauce (2 cups),
  1/4 cup tomato paste,
  2 tablespoons white or cider vinegar,
  2 tablespoons Worcestershire sauce,
  8 ounce carton dairy sour cream,
  1/2 cup mayonnaise,
  1/2 cup crumbled blue cheese (2 ounces),
  1/4 - 1/2 teaspoon cayenne pepper or bottled hot pepper sauce,
  Celery sticks".split(",")

ingredients_names_1.each do |name|
  recipe_1.ingredients.create(name: name.strip)
end

recipe_2 = Recipe.create!(
          title: "Chicken and Asparagus Skillet Supper", 
          image_url: "http://images.meredith.com/content/dam/bhg/Images/recipe/34/R115488.jpg.rendition.largest.jpg" ,
          directions: "Sprinkle chicken with salt and pepper. In 12-inch skillet cook chicken and bacon over medium-high heat 12 minutes, turning to brown evenly. Carefully add broth; cover and cook 3 to 5 minutes more or until chicken is tender and no longer pink (180 degrees F).
           Meanwhile, in microwave-safe 2-quart dish combine asparagus, squash, and 2 Tbsp. water. Sprinkle salt and pepper. Cover with vented plastic wrap. Cook on FULL power (high) 3 to 5 minutes, until vegetables are crisp-tender, stirring once. Transfer to plates. Drizzle cooking liquid; top with chicken, bacon, and onions. Makes 4 servings.",
          prep_time: 30)
ingredients_names_2 = "8 skinless, boneless chicken thighs,
  3 slices bacon (coarsely chopped),
  1/2 cup chicken broth,
  1 pound asparagus spears (trimmed),
  1 small yellow summer squash, halved crosswise and cut in 1/2-inch strips,
  4 green onions (cut in 2-inch pieces)".split(",")

ingredients_names_2.each do |name|
  recipe_2.ingredients.create(name: name.strip)
end 

recipe_3 = Recipe.create!(
          title: "Jalapeno Popper Deviled Eggs",
          image_url: "http://images.meredith.com/content/dam/bhg/Images/2017/3/6/RU290405.jpg.rendition.largest.jpg",
          directions: "  Preheat oven to 400F. Line a baking sheet with parchment paper. Place about 1 tablespoon of the shredded cheese on prepared sheet; pat into a 2-inch circle. Repeat with remaining cheese, allowing 2 inches between circles. Bake for 7 to 8 minutes or until bubbly and lightly golden. Let stand on baking sheet for 1 to 2 minutes or until cooled but still pliable. Carefully peel off paper. Place cheese crisps on a wire rack; cool completely. Once cool, break cheese crisps into smaller pieces.
            Halve hard-cooked eggs lengthwise and remove yolks. Set whites aside. Place yolks in a small bowl; mash with a fork. Add mayo, cream cheese, jalapeno, green onions; mix well Season to taste with salt and pepper. Fill the egg halves with the yolk mixture and top each egg half with a bit of crispy cheese and bacon. Sprinkle with chili powder.",
            prep_time: 20)
ingredients_names_3 = "1/2 cup shredded pepper jack cheese,
  12 hard cooked eggs,
  3 tablespoons mayonnaise,
  3 tablespoons cream cheese softened,
  1 jalapeno, seeded and finely chopped,
  3 tablespoons sliced green onions,
  Salt and pepper,
  3 slices bacon (crisp cooked and finely crumbled Chili powder)".split(",")
ingredients_names_3.each do |name|
  recipe_3.ingredients.create(name: name.strip)
end 


    
recipe_4 = Recipe.create!(
          title: "Sparkling Rose Blueberry Floats",
          image_url: "http://images.meredith.com/content/dam/bhg/Images/2016/6/7/RU282309.jpg.rendition.largest.jpg",
          directions: "Prepare and freeze Blueberry Granita.Scoop granita and gelato into six 10- to 12-oz. glasses. Top each with a drizzle of honey and some blueberries. Pour rose over each. Garnish with basil and serve immediately.",
          prep_time: 15)
ingredients_names_4 = "3 cups recipe Blueberry Granita
  1 pint purchased coconut gelato (2 cups),
  2 tablespoons honey,
  2 cups fresh blueberries,
  1 750-ml bottle sparkling rose or club soda chilled,
  1/2 cup very thinly sliced fresh basil leaves".split(",")
ingredients_names_4.each do |name|
  recipe_4.ingredients.create(name: name.strip)
end 



recipe_5 = Recipe.create!(
          title: "Roasted Asparagus & Salmon",
          image_url: "http://images.meredith.com/content/dam/bhg/Images/2017/3/6/RU291984.jpg.rendition.largest.jpg",
          directions: "Preheat oven to 425 degrees F. Arrange asparagus in a foil-lined shallow baking pan. In a small bowl whisk together olive oil, lemon zest and juice, honey, caraway seeds, salt, and black pepper. Drizzle over asparagus; toss to coat. Scatter salmon slices on top. Roast 15 minutes; remove. Cool 5 minutes.
            Meanwhile, in a small bowl stir together yogurt, capers and brine, and dill weed. Arrange egg halves over asparagus; spoon on yogurt mixture in mounds. Top with red onion slices and additional dill weed.",
          prep_time: 40)
ingredients_names_5 = "3 bunches asparagus (1 1/2 lb. washed and trimmed),
  1/4 cup olive oil,
  1 lemon (about 1 Tbsp. zest 1/4 cup juice),
  1 tablespoon honey,
  1 tablespoon caraway seeds,
  1/4 teaspoon cracked black pepper,
  1/2 teaspoon kosher salt,
  4 - 6 ounces thinly sliced smoked salmon (lox-style),
  1 5.3 ounce container plain whole milk Greek yogurt,
  1 tablespoon capers (chopped, plus 1 Tbsp. brine),
  2 tablespoons chopped fresh dill weed (plus more for garnish),
  6 eggs (soft- or hard-cooked peeled and halved),
  Thinly sliced red onion".split(",")
ingredients_names_5.each do |name|
  recipe_5.ingredients.create(name: name.strip)
end




  recipe_6 = Recipe.create!(
            title: "Guinness Float",
            image_url: "http://images.meredith.com/content/dam/bhg/Images/2014/4/10/RU224845.jpg.rendition.largest.jpg",
            directions: "Scoop ice cream into a tall glass. Add Irish Cream and slowly pour in beer (mixture will foam).",
            prep_time: 5)
ingredients_names_6 = "1 cup vanilla ice cream,
  3 - 4 tablespoons Baileys Irish Cream Liqueur,
  1/2 12 ounce bottle Guinness stout beer chilled".split(",")
ingredients_names_6.each do |name|
  recipe_6.ingredients.create(name: name.strip)
end 



recipe_7 = Recipe.create!(
title: "Spaghetti with Seared Asparagus",
image_url: "http://images.meredith.com/content/dam/bhg/Images/2017/3/6/RU292020.jpg.rendition.largest.jpg",
directions: "Cook pasta according to package directions. Drain, reserving 1 cup cooking liquid; set aside.
  In a deep 12-inch skillet heat oil and butter over medium-high heat. Add asparagus; cook 5 minutes or until almost tender and beginning to blister, stirring occasionally. (Butter will turn golden brown.) Add garlic; cook 1 to 2 minutes, until garlic is golden and asparagus is blistered.
  Meanwhile, heat a small skillet over medium heat. Add hazelnuts and panko. Cook 8 minutes or until golden, stirring occasionally. Remove from heat; transfer to a bowl. Stir in cheese.
  Add spaghetti, lemon juice, peppercorns, and salt to skillet with asparagus; toss to combine. Add enough reserved cooking liquid to reach desired consistency. Sprinkle with half the panko mixture; toss again. Top with remaining panko mixture. If desired, drizzle with hazelnut oil. Sprinkle with parsley. Makes 6 servings. *Tip: To toast nuts, preheat oven to 350 degrees F. Spread nuts in a single layer in a shallow baking pan. Bake 10 minutes or until golden, stirring once. Transfer to a kitchen towel. Rub to remove skins.",
prep_time: 45)
ingredients_names_7 = "8 ounces dried spaghetti,
  2 tablespoons olive oil,
  2 tablespoons butter,
  1 1/2 bunches asparagus (12 oz. washed trimmed and cut into 2-inch pieces),
  6 cloves garlic (minced),
  1/3 cup hazelnuts or almonds (toasted and coarsely chopped),
  1/3 cup panko bread crumbs,
  1/3 cup finely shredded Asiago or Parmesan cheese (1 oz.),
  3 tablespoons lemon juice,
  1/2 teaspoon kosher salt,
  1/2 teaspoon cracked green or black peppercorns,
  1 tablespoon hazelnut oil (optional),
  1 tablespoon chopped Italian parsley".split(",")
ingredients_names_7.each do |name|
  recipe_7.ingredients.create(name: name.strip)
end 



recipe_8 = Recipe.create!(
title: "Chickpea and Freekah Salad",
image_url: "http://images.meredith.com/content/dam/bhg/Images/2016/12/13/RU289794.jpg.rendition.largest.jpg",
directions: "In a medium saucepan bring 1 1/4 cups water to boiling; stir in freekah. Return to boiling; reduce heat. Cook, covered, 20 minutes or until most of the liquid is absorbed and freekah is tender. Drain any excess liquid. Meanwhile, in a large bowl combine the next seven ingredients (through garlic). Drizzle with oil and toss lightly to coat.Place freekah in a sieve and run under cold water to cool quickly. Drain well. Stir into chickpea mixture. Season to taste with salt and pepper. Serve immediately or cover and chill up to 4 hours.",
prep_time: 20)
ingredients_names_8 = "1/2 cup uncooked freekah,
  1 15 ounce can chickpeas (garbanzo beans rinsed and drained),
  1 avocado (halved seeded peeled and cubed),
  3 ounces feta cheese (cubed),
  2 ounces salami (chopped),
  1/2 cup chopped fresh mint,
  1/2 cup chopped fresh Italian parsley,
  1 clove garlic (minced),
  1 tablespoon olive oil,
  Salt and black pepper".split(",")
ingredients_names_8.each do |name|
  recipe_8.ingredients.create(name: name.strip)
end 



recipe_9 = Recipe.create!(
title: "Honey-Sriracha Grilled Chicken Thighs",
image_url: "http://images.meredith.com/content/dam/bhg/Images/2015/7/22/RU259122.jpg.rendition.largest.jpg",
directions: "Whisk together 2 tablespoons of the Sriracha sauce and the honey; set aside. Place the chicken in a resealable plastic bag and add remaining Sriracha sauce and the lime juice. Seal; turn bag to coat chicken. Let stand 15 minutes.
  Grill chicken on the greased rack of a covered gas or charcoal grill directly over medium heat for 30 to 35 minutes or until done (at least 175 degrees F), turning 3 or 4 times.
  Remove chicken to a platter; brush with honey mixture. Cover and let stand 5 minutes. Sprinkle with cilantro.",
prep_time: 35)
ingredients_names_9 = "6 tablespoons Sriracha sauce,
  2 tablespoons honey,
  8 bone-in chicken thighs (skinned),
  2 tablespoons fresh lime juice,
  2 tablespoons chopped fresh cilantro".split(",")
ingredients_names_9.each do |name|
  recipe_9.ingredients.create(name: name.strip)
end 


recipe_10 = Recipe.create!(
title: "Chocolate Chocolate_Poke_Cake",
image_url: "http://www.lifeloveandsugar.com/wp-content/uploads/2015/05/Chocolate_Poke_Cake7.jpg",
directions: "1. Bake cake according to box directions in a 9x13 cake pan,
  2. Once cake comes out of the oven, poke holes all over the top of the cake,
  3. Place sweetened condensed milk and chocolate chips in a microwave safe bowl. Microwave for about 30 seconds to 1 minute,
  4. Whisk chocolate and milk until smooth, microwaving more, if needed to melt the chocolate,
  5. Pour chocolate mixture over the cake and spread to fill in holes,
  6. Set cake aside to cool, about an hour, then refrigerate until completely cooled,
  7. To make whipped topping, whip heavy cream until it begins to thicken,
  8. Add powdered sugar, cocoa and vanilla extract and whip until stiff peaks form,
  9. Spread whipped topping evenly over cooled cake,
  10.Sprinkle mini chocolate chips over cake and drizzle with chocolate sauce. Refrigerate until ready to serve.",
prep_time: 35)

ingredients_names_10 = "Chocolate Cake,
  15.25 oz box Devils Food Chocolate Cake Mix (plus ingredients listed on box),
  14 oz sweetened condensed milk,
  1 cup semi sweet chocolate chips,

  Chocolate Whipped Cream Topping,
  2 cups heavy whipping cream,
  1/2 cup powdered sugar,
  1/4 cup + 2 tbsp cocoa,
  1/2 tsp vanilla extract,
  mini chocolate chips,
  chocolate sauce".split(",")
ingredients_names_10.each do |name|
  recipe_10.ingredients.create(name: name.strip)
end 



recipe_11 = Recipe.create!(
title: "Banana-Almond Energy Bars",
image_url: "http://images.meredith.com/content/dam/bhg/Images/2016/8/26/RU285459.jpg.rendition.largest.jpg",
directions: "Preheat oven to 350 degrees F. Line a 9-inch square baking pan with foil, extending the foil over the edges of the pan. Spread oats and almonds in a 15x10-inch baking pan. Bake about 8 minutes or until lightly toasted. Let cool on wire rack.
  In a large bowl lightly whisk egg. Add the next eight ingredients (through salt); whisk until well mixed. Add the cereal, dried fruit, and cooled oats and almonds to banana mixture; stir until combined. Spoon into the prepared pan, spreading evenly.
  Bake about 20 minutes or until browned around edges. Cool completely in pan on a wire rack. Use edges of foil to lift uncut bars from the pan. Cut into 16 bars.",
prep_time: 30)
ingredients_names_11 = "1 1/2 cups regular rolled oats,
  1/3 cup sliced almonds (crushed),
  1 egg,
  1/2 cup mashed banana,
  1/3 cup almond butter or peanut butter,
  1/3 cup honey,
  1/4 cup whole wheat flour,
  1 teaspoon baking powder,
  1 teaspoon apple pie spice,
  1/2 teaspoon vanilla,
  1/4 teaspoon salt,
  1 1/2 cups wheat and sweet potato flake cereal (Kashi or whole grain flakes bran flakes),
  3/4 cup dried apples, snipped into small pieces".split(",")
ingredients_names_11.each do |name|
  recipe_11.ingredients.create(name: name.strip)
end 



recipe_12 = Recipe.create!(
title: "Huevos en Salsa",
image_url: "http://images.meredith.com/content/dam/bhg/Images/2014/10/15/RU234571.jpg.rendition.largest.jpg",
directions: "In a large skillet bring salsa just to boiling over medium heat; reduce heat to simmering.
  Break an egg into a cup and slip egg into the simmering salsa. Repeat with the remaining three eggs, allowing each egg an equal amount of space in the salsa. Simmer, covered, for 3 to 5 minutes or until egg whites are completely set and yolks begin to thicken but are not hard. Remove from heat.
  Sprinkle with queso fresco and, if desired, cilantro. If desired, serve with warmed tortillas.",
prep_time: 15)
ingredients_names_12 = "3 cups salsa,
  4 eggs,
  1/2 cup crumbled queso fresco or shredded cheddar cheese (2 ounces),
  Fresh cilantro (optional),
  Corn tortillas, warmed (optional)".split(",")
ingredients_names_12.each do |name|
  recipe_12.ingredients.create(name: name.strip)
end 



recipe_13 = Recipe.create!(
title: "Winter Bulgur Salad with Olive Dressing",
image_url: "http://images.meredith.com/content/dam/bhg/Images/2016/12/1/RU289408.jpg.rendition.largest.jpg",
directions: "Place bulgur in a large heat-proof bowl. Pour the boiling water over bulgur; cover. Let stand 15 minutes.
  Meanwhile, place cauliflower in a food processor. Pulse three to five times, until just finely chopped.
  For Olive Dressing: In a small bowl stir together olives, lemon juice, olive oil, and garlic. Season with black pepper to taste.
  Drain bulgur; return to bowl. Stir in cauliflower. Arrange the bulgur mixture, chicories, celery, and cheese on a platter. Serve with Olive Dressing.",
prep_time: 30)
ingredients_names_13 = "1 cup bulgur,
  2 cups boiling water,
  1/2 medium head cauliflower, chopped (2 cups),
  1/2 cup pitted kalamata and/or green olives (coarsely chopped),
  3 tablespoons fresh lemon juice,
  3 tablespoons extra-virgin olive oil,
  1 clove garlic, minced,
  Freshly ground black pepper,
  4 cups torn chicories like escarole, radicchio, and/or endive,
  6 celery stalks, thinly bias sliced,
  4 ounces feta cheese (crumbled)".split(",")
ingredients_names_13.each do |name|
  recipe_13.ingredients.create(name: name.strip)
end



recipe_14 = Recipe.create!(
title: "Easy Pumpkin-Roasted Red Pepper Mac and Cheese",
image_url: "http://images.meredith.com/content/dam/bhg/Images/2016/8/3/RU284630.jpg.rendition.largest.jpg",
directions: "Preheat oven to 375 degrees F. Grease a 3-qt. rectangular baking dish.
  In a large pot cook pasta in boiling salted water according to package directions; drain. Return to pot. Stir in next six ingredients (through black pepper). Stir in 1/2 cup of the cheese. Transfer to prepared dish.
  Bake, covered, 25 minutes. Sprinkle with remaining 1 cup cheese. Bake, uncovered, 5 minutes more or until heated through and cheese is melted. Let stand 5 minutes before serving. Top with additional black pepper.",
prep_time: 20)

ingredients_names_14 = "1 14 1/2 ounce pkg. dried multigrain rotini or penne pasta,
  1 15 ounce jar Alfredo pasta sauce,
  1 15 ounce can pumpkin,
  1/2 cup chopped roasted red sweet peppers,
  1/2 cup water,
  1/4 teaspoon salt,
  1/8 teaspoon cracked black pepper,
  1 1/2 cups shredded fontina cheese (6 oz.)".split(",")
ingredients_names_14.each do |name|
  recipe_14.ingredients.create(name: name.strip)
end



recipe_15 = Recipe.create!(
title: "Battered Asparagus & Ham Hoagies",
image_url: "http://images.meredith.com/content/dam/bhg/Images/2017/3/6/RU292005.jpg.rendition.largest.jpg",
directions: "Preheat oven to 425 degrees F. In a shallow dish combine panko, lemon-pepper seasoning, and garlic powder. Place cornstarch in a second shallow dish. Place eggs in a third shallow dish.
  Place 2 Tbsp. oil in a 15 x 10 x 1-inch baking pan. Place pan in oven. Meanwhile, dip asparagus spears, one at a time, in eggs to moisten. Dip in cornstarch to coat. Dip in eggs again; dip in panko mixture to coat. Place on a tray while coating remaining spears.
  Transfer all spears to hot pan. Drizzle with remaining oil. Bake 10 minutes or until golden, turning once.
  Meanwhile, spread cut sides of rolls with mayonnaise. Place on a baking sheet. Broil, spread sides up, 5 minutes or until toasted. Cool slightly.
  To assemble: Spread buns with half the Lemon Aioli. Arrange prosciutto and asparagus on buns. Top with mint and chives. If desired, serve with remaining Lemon Aioli.",
prep_time: 45)
ingredients_names_15 = "1 1/2 cups panko bread crumbs,
  2 tablespoons lemon-pepper seasoning,
  1 teaspoon garlic powder,
  3/4 cup cornstarch,
  3 eggs (lightly beaten),
  3 tablespoons olive oil,
  20 asparagus spears (about 12 oz. washed and trimmed),
  4 hoagie rolls split,
  1/3 cup mayonnaise,
  Lemon Aioli,
  4 slices prosciutto or serrano ham,
  12 - 16 fresh mint leaves,
  2 tablespoons coarsely chopped chives".split(",")
ingredients_names_15.each do |name|
  recipe_15.ingredients.create(name: name.strip)
end 

