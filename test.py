name="jugnu"
print(f"Hello {name}")

fruits=["apple", "mango"]
print(type(fruits))

for fruit in fruits:
    print(f"this is my favourite {fruit}")


meal={"breakfast": "yougurt", "brunch":"roti", "lunch":"two rotis"}
print(meal.keys())
print(meal.values())

for meal_name, meal_item in meal.items():
    print(f"Meal time is {meal_name} and the meal is {meal_item}")