USE [cookBook]
GO

INSERT INTO [dbo].[CookingSteps]
           ([Name]
           ,[Step]
           ,[IdRecipe])
VALUES
	('Melt butter and beat with sugar and vanilla sugar.',1,1),
	('Add eggs, beat.',2,1),
	('Pour in kefir, mix.',3,1),
	('Gradually add flour and baking powder and beat until smooth.',4,1),
	('Divide the dough into two parts, add cocoa to one part, mix thoroughly.',5,1),
	('In a baking dish (I have a silicone one), spread the dough with tablespoons alternately dark and light, in random order, without stirring. Bake Zebra cake at 190 degrees for 40-45 minutes. Willingness to check with a wooden stick.',6,1),
	('Sprinkle the finished Zebra cake with powdered sugar. Bon appetit, please your loved ones!',7,1),
	('Mix all ingredients.',1,3),
	('Put butter to the baking muffin cups.',2,3),
	('Bake for 30 minutes at 350 �F (175 �C).',3,3),
	('Let cool. Enjoy.',4,3),
	('Preheat oven to 425�F.',1,4),
	('In a medium bowl whisk together flour, baking powder, and salt. Cut butter into chunks and cut into flour using fingers or a pastry cutter until the size of small peas.',2,4),
	('Add sugar and slowly mix in kefir until a dough forms. The dough should just hold together and not be too sticky. Knead briefly to bring the dough together and turn out onto a floured surface.',3,4),
	('Roll out into a 1 1/2-inch thick round or rectangle. Use a 2-inch biscuit cutter to cut out the scones and transfer to a baking sheet. Knead together scraps and cut into more scones until all of the dough is used up.',4,4),
	('Bake 10-15 minutes. Transfer to a cooling rack and serve warm with cultured butter, clotted or whipped cream, and jam.',5,4),
	('Pre-heat oven to 350� F (175� C). Grease 8" square baking pan.',1,5),
	('Combine flour, cocoa and salt in small bowl. Beat butter, granulated sugar and brown sugar in large mixer bowl until creamy. Add 2 eggs, one at a time, beating well after each addition. Add vanilla extract; mix well.',2,5),
	('Gradually beat in flour mixture. Reserve 3/4 cup batter. Spread remaining batter into prepared baking pan. Sprinkle nuts and white morsels over batter. Drizzle caramel topping over top.',3,5),
	('Beat remaining egg and reserved batter in same large bowl until light in color.',4,5),
	('Stir in semi-sweet morsels (like Toll House brand). Spread evenly over caramel topping.',5,5),
	('Bake for 30 to 35 minutes or until center is set.',6,5),
	('Cool completely in pan on wire rack. Cut into squares.',7,5),
	('Note: based on Nestle Toll House recipe.',8,5),
	('Heat the oil in a deep frying pan and add the onion. Cook over a medium heat for 5 mins until starting to soften. Add the chorizo and cook for another few mins to release the oil. Coat the onion in the chorizo oil, then tip in the tomatoes. Fill the can with water and tip that in too. Season and bring to the boil.',1,6),
	('Once boiling, season the cod fillets and nestle into the pan. Reduce the heat and gently simmer for about 7 mins. Gently mix in the butter beans and cook for 1-2 mins more until hot. Scatter with parsley and serve in bowls.',2,6),
	('In a medium saucepan, bring water to a boil. Add rice and stir. Reduce heat, cover and simmer for 20 minutes.',1,7),
	('Bring a large, wide saucepan of lightly salted water to a boil. Add cabbage leaves and cook for 2 to 4 minutes or until softened; drain.',2,7),
	('In a medium mixing bowl, combine the ground beef, 1 cup cooked rice, onion, egg, salt and pepper, along with 2 tablespoons of tomato soup. Mix thoroughly.',3,7),
	('Divide the beef mixture evenly among the cabbage leaves. Roll and secure them with toothpicks or string.',4,7),
	('In a large skillet over medium heat, place the cabbage rolls and pour the remaining tomato soup over the top. Cover and bring to a boil. Reduce heat to low and simmer for about 40 minutes, stirring and basting with the liquid often.',5,7),
	('In a deep dish skillet with a small amount of oil, brown ground beef, and onion. Drain.',1,8),
	('Add the minced garlic to the ground beef with onions and give it a quick saute.',2,8),
	('Add in water, diced tomatoes and tomato sauce. Season with salt and pepper. Toss in the uncooked rice at this point if using.',3,8),
	('Place chopped cabbage in pan, and toss to combine all ingredients.',4,8),
	('Cover the pan with lid and simmer for 30 minutes or until cabbage has cooked.',5,8),
	('Before marinating, you need to prepare the carcass: remove the remnants of feathers and down, if necessary, burn with a gas burner, wash and dry. I cut off the outer wing phalanges, which contain almost no meat and burn when baked. I also removed the sebaceous gland from the tail, which gives off an unpleasant odor when baked. The neck can be cut off or left as you wish.',1,9),
	('For the marinade, I combined in a small bowl: soy sauce, honey, grated ginger, salt, pepper, lemon juice, and garlic, passed through a press (you can use granulated). She whisked all the ingredients with a whisk to completely dissolve the honey and salt.',2,9),
	('The resulting fragrant mixture rubbed the carcass outside and inside.',3,9),
	('Packed it into a baking sleeve, poured the remaining sauce there. Left to marinate for at least 4-6 hours (preferably overnight) in the refrigerator.',4,9),
	('Then she sent the duck to the oven, heated to 160-180 degrees - the bird should lie breast down. Baked for 2 hours. After the indicated time, she carefully cut the sleeve and pierced a large joint with a knife to make sure the meat was ready. If a clear liquid flows out, you can turn off the oven.',5,9),
	('Duck baked in a sleeve in the oven is very tasty, soft and juicy, ruddy, smells like ginger and honey. It remains to be divided into portions and can be served at the table. Buckwheat with mushrooms, mashed potatoes, sauerkraut and other pickles are suitable for garnish. Do not rush to pour out the melted duck fat, it is perfect for frying potatoes.',6,9),
	('Separate the yolks from the whites and beat with half the butter, cinnamon and sugar until the crystals are completely dissolved. Beat the whites to form a dense foam.',1,10),
	('Heat the remaining oil in a skillet over medium heat. Fry the oatmeal for 8-10 minutes, stirring constantly. Cool it down.',2,10),
	('Combine the oatmeal with the egg-sugar mixture and flour. Then add the proteins and stir.',3,10),
	('Line a baking sheet with parchment paper and spoon the mixture onto it. Bake for about 15 minutes at 180 � C.',4,10),
	('Grind the raisins in a blender. Then whisk with sugar, vanilla and room temperature butter to make a lump-free mixture.',1,11),
	('Dissolve the salt in water, add together with cinnamon and oat flour to the resulting mass. Stir and, gradually adding wheat flour, knead the dough.',2,11),
	('Roll it out so that the thickness of the layer is about 7-8 mm. Use a glass or a special cookie cutter to make round cookies. Transfer the pieces to a baking sheet lined with parchment paper. Bake for 10-12 minutes at 200 � C.',3,11),
	('Grind the oatmeal in a blender. Combine flour with baking soda.',1,12),
	('Mash butter at room temperature with sugar. Add honey, sour cream, egg and beat with a mixer. Then stir in the oatmeal. Add the flour and baking soda mixture little by little and knead the dough.',2,12),
	('Line a baking sheet with parchment paper and spoon over the cookies. Bake for 10-15 minutes at 200 � C.',3,12),
	('Divide the eggs into whites and yolks.',1,13),
	('Beat the yolks with sugar.',2,13),
	('Beat the yolks with sugar.',3,13),
	('Then add soda, extinguish with vinegar.',4,13),
	('Gradually add the sifted flour.',5,13),
	('Beat the whites separately with a pinch of salt until stable peaks.',6,13),
	('Add whites to yolks, mix gently. Divide the dough into 2 unequal parts.',7,13),
	('Pour the larger one into a mold covered with paper. Bake at 180 degrees for 20-30 minutes.',8,13),
	('Add cocoa to a small part, mix. Bake the same way.',9,13),
	('Cut the chocolate part into figures.',10,13),
	('Cut the white part into 2 cakes.',11,13),
	('For cream, mix sour cream and powdered sugar. Dip each chocolate figurine in sour cream.',12,13),
	('Gently fold the figures, pour the remaining sour cream to make a full-fledged cake. You can also use jam or chocolate paste for the filling.',13,13),
	('Prepare foods for semolina pie.',1,14),
	('How to make a pie with kefir with semolina: Pour kefir',2,14),
	('Add a glass of semolina, stir and leave for 40 minutes (so that the semolina swells).',3,14),
	('Prepare a mold (a miracle, or a cake pan - with a hole in the middle), grease it with oil and sprinkle with flour (1 tbsp. Spoon). Pour excess flour.',4,14),
	('Pour a glass of granulated sugar into the dough, stir.',5,14),
	('Stir 3-4 tablespoons of wheat flour with 1 teaspoon of soda (no top), add to the dough.',6,14),
	('Mix quickly and thoroughly, without wasting a second, gently pour the dough into the mold.',7,14),
	('Place in a preheated oven. Bake the manna until tender for about 35-40 minutes.',8,14),
	('The semolina pie is ready. Enjoy your meal!',9,14),
	('Combine eggs with sugar, stir for a minute with a whisk.',1,15),
	('We send the cup to the "water bath" so that the bottom does not touch the water (moderate heating). Stirring constantly, wait for the sugar to completely dissolve. With this amount of sugar, eggs will not boil, do not worry.',2,15),
	('Then everything is as usual.',3,15),
	('Add baking powder to the flour, mix well.',4,15),
	('In another bowl, mix cocoa with a small amount of dough.',5,15),
	('Thus, mix half of the dough with cocoa.',6,15),
	('We turn on the oven to heat up to 180 degrees.',7,15),
	('Alternating white and chocolate dough, pour two to three tablespoons into the center. When all the dough has been poured, carefully remove the film.',8,15),
	('We bake Zebra cake on kefir and vegetable oil in a preheated oven for 40 minutes, temperature - 170-180 degrees. Focus on your oven.',9,15),
	('This "Zebra" cake never falls off, the dough does not crumble, it is moderately moist. Very tasty and there is always a uniform pattern in every piece of the pie. Try it, bake to your health!',10,15),
	('Dough for khychins: 0.5 l of sour milk, do not extinguish soda, a little salt, flour.',1,16),
	('We knead the hard dough, let it rest.',2,16),
	('Filling: boil potatoes, make mashed potatoes, grate cheese separately, mix with potatoes. We take a little dough, knead it with our hands and make a small cake. Put the filling on the cakes. It is very important: the amount of filling by volume must be equal (not less) to the volume of the dough. Then we pinch the cakes into a bundle. It turns out a kind of donuts.',3,16),
	('We take each donut in our hands and begin to form a flat cake out of it with our fingers, "flatten" it. The most important stage comes: carefully, gently, so as not to tear the dough, we begin to roll the cake into a very thin (about 5 mm, the thinner - the better!) Pancake. In size, it should be just the size of the pan.',4,16),
	('Next, you need to thoroughly warm up the pan (dry, completely without oil!). Khychins on kefir with cheese and potatoes are baked easily and quickly, sometimes they bubble up in a frying pan (from the fact that air remains in the filling when pinching), you just need to pierce them.',5,16),
	('After baking, each khychin should be liberally greased with butter on both sides and put into a beautiful pile. The khychins "soften" and become very tender.',6,16),
	('Enjoy your meal!',7,16),
	('Cooking kefir cupcakes with raisins. Pour the raisins with tea, water or cognac. We leave for 20-30 minutes to soften the raisins.',1,17),
	('We put the soft raisins on a sieve. We get rid of unnecessary liquid.',2,17),
	('We add soda to kefir.',3,17),
	('Beat the egg with sugar for 2-3 minutes, until smooth.',4,17),
	('Add melted butter and kefir with soda to the egg mixture. Mix with a mixer.',5,17),
	('Gradually add flour to the mixture. Stir on a slow mixer speed until smooth.',6,17),
	('Add raisins to the dough and stir in with a spatula.',7,17),
	('Insert paper cupcake cups into metal molds. We spread the dough into molds. The specified amount of ingredients is enough for 10 molds with a diameter of 5 cm.',8,17),
	('We put the molds with dough not in a hot, but in a warm oven preheated to 50-80 degrees. We bake the muffins for 30 minutes at 180 degrees. This will help the cupcakes rise more evenly. If you are baking another batch of muffins, let the oven cool down before baking and then bake the second batch. We check the readiness of the cupcakes with a wooden stick. Keep the stick dry when piercing the muffins.',9,17),
	('Cool the finished muffins and sprinkle with powdered sugar. How delicious!',10,17),
	('The products required for the manna recipe are in front of you.',1,18),
	('How to cook a manna in butter: Melt the butter over the lowest heat.',2,18),
	('Pour sugar into a bowl, beat in chicken eggs.',3,18),
	('Grind eggs with sugar.',4,18),
	('Pour semolina into another bowl.',5,18),
	('Mix semolina with melted butter. Add kefir. Mix.',6,18),
	('Add eggs, ground with sugar, salt, soda with vinegar, vanilla to semolina.',7,18),
	('Mix everything well.',8,18),
	('You can leave it for 1 hour to swell the semolina.',9,18),
	('Turn on the oven. Grease the form with oil (you can also sprinkle with semolina). Put the prepared mass in a greased form. Place the dish on the middle shelf.',10,18),
	('Bake the mannik in the oven at 175 degrees until golden brown (about 30-40 minutes).',11,18),
	('Butter mannik is ready.',12,18),
	('Serve mannik with sour cream, jam or jam. Enjoy your meal!',13,18),
	('Let''s prepare the ingredients. Let''s measure out 650 g of flour (5 glasses with a capacity of 200 ml). During the cooking process, you will need parchment paper.',1,19),
	('Combine sugar, honey, egg and yolk in a bowl, and set aside the white of the second egg in a separate bowl for now.',2,19),
	('Beat the mass with a mixer until smooth.',3,19),
	('Pour kefir and butter into another bowl. Let''s mix.',4,19),
	('In a deep bowl, combine the egg mixture and the kefir. Mix them with a whisk.',5,19),
	('Sift flour and baking soda to this liquid mixture.',6,19),
	('Knead a soft dough that sticks a little to your hands. Add a little more flour if necessary. Turn on the oven to heat up to 180 degrees.',7,19),
	('Dust the working surface with flour, lay out the dough, roll out a layer 1 cm thick.Cut circles out of the dough with a round cutting or glass.',8,19),
	('Cover the baking sheet with parchment, lay out the blanks-circles and send them to bake in an oven preheated to 180 degrees for 25 minutes.',9,19),
	('During this time, we will prepare the fondant. To do this, put the egg white set aside earlier in a deep bowl, add sugar.',10,19),
	('Whisk the ingredients until the sugar dissolves.',11,19),
	('After the time has elapsed, remove the baking sheet with gingerbread from the oven. Cover each gingerbread with fondant using a pastry brush. Return the gingerbread baking sheet to the oven for another 10 minutes.',12,19),
	('Put the finished gingerbread cookies in a basket or on a plate. They turn out to be very soft, their porous texture is clearly visible at the fracture. Have a nice tea!',13,19);

GO


