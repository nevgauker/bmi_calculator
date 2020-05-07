import 'dart:math';

//BMI Categories:
//Underweight = <18.5
//Normal weight = 18.5–24.9
//Overweight = 25–29.9
//Obesity = BMI of 30 or greater

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;
  double _bmi;

  List<String> _tips = [
    'The Only Way to Lose Weight is to Eat Fewer Calories Than You Burn in a Day',
    'Eating Fewer Calories Doesn’t Necessarily Mean Eating Less Food',
    'Eating 5 Smaller Meals Might Work Better Than Eating 3 Larger Ones',
    'Eat Less Cholesterol and Less Fat – Especially Less Saturated Fat, and Almost No Trans-Fat',
    'Eat More Fruits, Vegetables, Whole Grains, and Low- or No-Fat Dairy Products Every Day',
    'Exercise Does More Than Burn Calories',
    'Staying Healthy is a Life-Long Proposition',
    'Don’t Waste Your Time, Energy, and Money on “Quick Fix” Solutions',
  ];
  List<String> _tipsInfo = [
    'Simply increasing your activity level might be enough if you only need to lose a few pounds to get your BMI into a healthy range.  Most of the time, however, eating fewer calories is also going to be needed.  The calories and fat in the foods we eat add up quickly!  For example, have you eaten at a fast food chain recently?  To work off the calories from a double cheeseburger, extra large fries and a 24 ounce soft drink – about 1500 calories – you would have to run for two and half hours at a ten minute mile pace! ',
    'The trick to dieting without being hungry is to choose foods that contain fewer calories and also fill you up. An example of this would be having a piece of fruit instead of fries with lunch.  It helps to remember that not all foods are created equal!  Some foods, such as nuts, are high in nutrients and essential vitamins, while others lack nutritional substance, such as products containing added sugars. “Nutrient-dense food” provides substantial amounts of vitamins and minerals and relatively few calories, but leaves you feeling fuller while also supplying valuable fuel for your body.  A person is more likely to stick to a diet-while feeling better and healthier-if calories are nutrition-dense.  Empty calories from simple carbohydrates found in foods with processed and refined sugars, such as candy, pasta and bread made from white flour, and foods with corn syrup, leave you hungry again soon after, craving more food.  This is because simple carbohydrates quickly turn into useless sugar, whereas complex carbohydrates, such as vegetables, whole-grain breads and cereals, and low-fat yogurt and milk, provide long-lasting nutrients, improve digestion, help stabilize blood sugar, and keep your energy at an even level.  Although foods such as fruit are also considered simple carbohydrates, they contain vitamins and nutrients that occur naturally, unlike those found in processed and refined foods.A 2011 study in the respected New England Journal of Medicine found that certain foods were linked to weight change more than others. After following participants for an average of 17 years, researchers found that weight increase was most strongly linked to foods such as potato chips, sugar-sweetened beverages, and unprocessed red meats.  Foods such as vegetables, whole grains, nuts, fruits, and yogurts were closely linked to preventing weight-gain.',
    'Most people are surprised to learn that eating 5 or 6 times a day can be a better way to lose weight than eating only 3 times a day! This only works, however, if you take care to control not only the calorie content but also the amount of food you’re eating.  The goal is to eat a small amount of food – like a cup of no-fat yoghurt, for example – every 3 hours or so.  Eat only enough so that you don’t feel hungry, but never so much that you feel stuffed. Some people recommend eating your meals off of smaller plates, because research has shown that people have a tendency to try to eat all of what is served to them. Unfortunately, portion sizes for restaurant meals and other prepared foods, and even in our homes – everything from breakfast muffins to a plate of spaghetti – have grown to very unhealthy proportions in the last two decades.',
    'Most people have heard that cholesterol is bad, and eating less of it is important.  But our bodies also make cholesterol from the fats that we eat. Fats are also very high in calories. So cutting down on total fat intake is helpful.All fats, however, are not alike, and that’s why it’s important to check food labels to be sure that you’re eating the smallest amount of saturated fat and of trans fat possible. These tend to be the kinds of fat that are found in milk and milk products, those that are solid at room temperature – like the fat in meat products, butter, margarine, shortening and lard – and the fats that come from baked goods and fried foods. The fats you do eat should be mostly “unsaturated” or “polyunsaturated” fats. Although there are some exceptions, these tend to be liquid at room temperature, like canola oil, olive oil and some of the other vegetable oils.',
    'There are many good resources to help you learn about healthy eating. For example, the US Department of Agriculture website at My Plate helps you tailor the government’s dietary recommendations to your nutritional needs. Nutritionists at the Harvard School of Public Health have similar (but not identical) healthy food guidelines. What these diets have in common includes recommendations to:Aim for at least five servings of fruits and vegetables a day. Usually, the more colorful the fruit or vegetable, the more nutritious. For example, dark green spinach has more nutrients than light green iceberg lettuce.Try and choose whole grain cereal, pasta, rice, and bread. Many foods that claim “whole wheat” or “whole grain” on the front of the package are really made with mostly white, processed flour – which isn’t nearly as nutritious. Always check the ingredients to see if “whole wheat” or “whole grain” is thefirstingredient listed. And don’t be fooled by how a food looks. For example, some dark brown breads are colored with coffee or other dyes, not whole grains. And remember, whole grain rice is brown, not white rice.Avoid food that is high in sugar, like pastries, sweetened cereal, and soda or fruit-flavored drinks.Reduced-fat or no-fat (skim) milk, reduced-fat cheese, and low-fat or no-fat yoghurt are good sources of the protein and calcium we need. Try to eat 2-4 servings of low-fat or no-fat dairy products each day.',
    'Increasing the amount of exercise you do each day means you burn more calories to help you lose weight.  And, research has shown very clearly that 30 minutes of moderately strenuous daily exercise is also one of the most important requirements for disease prevention – even for people who are already at an ideal weight.  The exercise you choose doesn’t need to be elaborate, or to take place in a gym.  Walking, biking, swimming, or gardening can do the trick, and getting a friend or family member to exercise with you can turn this into a valued part of your daily routine.  Learn more about the health benefits of physical activity and how to get started from the CDC.',
    'When we think about dieting, most of us think about setting a weight-loss goal that will determine how long we watch what we’re eating.  A better way to think about it might be to ask yourself the question: How long do I want to try to avoid developing chronic disease? Put in those terms, it’s easy to see that getting control of BMI and eating foods that contribute to continuing good health (or that don’t directly contribute to the development of dangerous disease conditions) is not a short-term goal.  For many of us, doing what it takes to get our BMI into a healthy range and to keep it there means learning to live our lives in a new way. Scientists have found that one of the keys to success is to think about these goals every day. For example, people who get on a scale and check their weight daily are more successful at keeping their weight under control than people who don’t.',
    'For some people, there may be faster ways to lose weight than following the diet suggestions listed here.  But the important thing to remember is that weight loss is not the only goal.  The more important goal is to keep your risk of developing chronic disease and dying younger as low as possible.  Fad diets, diet pills, protein powders, liposuction, and even intestinal or gastric bypass surgery might provide a leaner profile, but they don’t provide the nutrients needed to keep you as healthy as you could be.',
  ];

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  double getBMI() {
    return _bmi;
  }

  String getResult() {
    if (_bmi < 18.5) {
      return ('Underweight');
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return ('Normal');
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return ('Overweight');
    } else {
      return ('Obesity');
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return ('You should moderate what you eat');
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return ('Your weight is within normal range. keep doing what you are doing');
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return ('You should moderate what you eat');
    } else {
      return ('Seek professional assistant');
    }
  }

  List<String> tipsForBetterBmi() {
    return _tips;
  }

  String infoForTip(int index) {
    return _tipsInfo[index];
  }
}
