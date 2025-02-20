#define COOKING_HEAT_ANY      0
#define COOKING_HEAT_DIRECT   1
#define COOKING_HEAT_INDIRECT 2

#define FOOD_RAW             -1
#define FOOD_PREPARED         0
#define FOOD_COOKED           1

#define ALLERGEN_NONE      0
#define ALLERGEN_MEAT      BITFLAG(0)
#define ALLERGEN_FISH      BITFLAG(1)
#define ALLERGEN_VEGETABLE BITFLAG(2)
#define ALLERGEN_DAIRY     BITFLAG(3)
#define ALLERGEN_EGG       BITFLAG(4)
#define ALLERGEN_FRUIT     BITFLAG(5)
#define ALLERGEN_GLUTEN    BITFLAG(6)
#define ALLERGEN_SOY       BITFLAG(7)
#define ALLERGEN_CAFFEINE  BITFLAG(8)
#define ALLERGEN_FUNGI     BITFLAG(9)
#define ALLERGEN_NUTS      BITFLAG(10)
#define ALLERGEN_ALLIUM    BITFLAG(11)
#define ALLERGEN_STIMULANT BITFLAG(12)

#define INGREDIENT_FLAGS_ALL      (ALLERGEN_MEAT|ALLERGEN_FISH|ALLERGEN_VEGETABLE|ALLERGEN_DAIRY|ALLERGEN_EGG|ALLERGEN_FRUIT|ALLERGEN_GLUTEN|ALLERGEN_SOY|ALLERGEN_CAFFEINE|ALLERGEN_NUTS|ALLERGEN_ALLIUM|ALLERGEN_STIMULANT)
