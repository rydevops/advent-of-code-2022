def main():
    calories_carried = list()
    total_calories = 0
    
    input_file = "DAY1/elf_calories.txt"
    with open(input_file) as elf_calories:
        input_lines = elf_calories.readlines()
    
    for index, value in enumerate(input_lines):
        if len(value.strip()) == 0:
            calories_carried.append(total_calories)
            total_calories = 0
            continue

        total_calories += int(value)

        if index == len(input_lines)-1:
            calories_carried.append(total_calories)

    calories_carried = sorted(calories_carried, reverse=True)
    
    print(f"The elf with the most calories has {calories_carried[0]} calories!")

        


if __name__ == "__main__":
    main()

