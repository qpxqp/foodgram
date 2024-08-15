python manage.py shell -c "from recipies.models import Ingredient; Ingredient.objects.bulk_create([ \
Ingredient(name='соус песто', measurement_unit='г'),\
Ingredient(name='соус сацебели', measurement_unit='г'),\
Ingredient(name='соус табаско', measurement_unit='капля'),\
Ingredient(name='соус терияки', measurement_unit='г'),\
Ingredient(name='соус ткемали', measurement_unit='г'),\
Ingredient(name='соус ткемали благородный', measurement_unit='г'),\
Ingredient(name='соус ткемали ранний', measurement_unit='г'),\
Ingredient(name='соус устричный', measurement_unit='г'),\
Ingredient(name='соус чили', measurement_unit='г'),\
Ingredient(name='соус чили сладкий', measurement_unit='г'),\
Ingredient(name='соус экзотический', measurement_unit='г'),\
Ingredient(name='соя', measurement_unit='г'),\
Ingredient(name='спагетти', measurement_unit='г'),\
Ingredient(name='спагетти № 3', measurement_unit='г'),\
Ingredient(name='спагетти № 5', measurement_unit='г'),\
Ingredient(name='спагетти лунги', measurement_unit='г'),\
Ingredient(name='спаржа', measurement_unit='г'),\
Ingredient(name='спаржа белая', measurement_unit='г'),\
Ingredient(name='спаржа зеленая', measurement_unit='г'),\
Ingredient(name='спаржа молодая', measurement_unit='г'),\
Ingredient(name='спек', measurement_unit='г'),\
Ingredient(name='спельта', measurement_unit='г'),\
Ingredient(name='спельтовая (полбяная) мука', measurement_unit='г'),\
Ingredient(name='специи', measurement_unit='г'),\
Ingredient(name='спирт', measurement_unit='мл'),\
Ingredient(name='спирулина порошок', measurement_unit='г'),\
Ingredient(name='спред', measurement_unit='г'),\
Ingredient(name='ставрида', measurement_unit='г'),\
Ingredient(name='стейк семги', measurement_unit='г'),\
Ingredient(name='стеклянная лапша', measurement_unit='г'),\
Ingredient(name='страчателла', measurement_unit='г'),\
Ingredient(name='судак', measurement_unit='г'),\
Ingredient(name='судак филе', measurement_unit='г'),\
Ingredient(name='судак филе на коже', measurement_unit='г'),\
Ingredient(name='сулугуни', measurement_unit='г'),\
Ingredient(name='сулугуни копченый', measurement_unit='г'),\
Ingredient(name='сумах', measurement_unit='г'),\
Ingredient(name='суповой набор', measurement_unit='г'),\
Ingredient(name='сухари', measurement_unit='г'),\
Ingredient(name='сухари белые', measurement_unit='г'),\
Ingredient(name='сухари молотые', measurement_unit='г'),\
Ingredient(name='сухари панировочные', measurement_unit='г'),\
Ingredient(name='сухари ржаные', measurement_unit='г'),\
Ingredient(name='сухарная крошка', measurement_unit='г'),\
Ingredient(name='сухофрукты', measurement_unit='г'),\
Ingredient(name='сухофрукты тропические', measurement_unit='г'),\
Ingredient(name='сушки', measurement_unit='г'),\
Ingredient(name='сыворотка', measurement_unit='г'),\
Ingredient(name='сыр', measurement_unit='г'),\
Ingredient(name='сыр tete de moine', measurement_unit='г'),\
Ingredient(name='сыр Австрия блю', measurement_unit='г'),\
Ingredient(name='сыр адыгейский', measurement_unit='г'),\
Ingredient(name='сыр бри', measurement_unit='г'),\
Ingredient(name='сыр буко', measurement_unit='г'),\
Ingredient(name='сыр гауда', measurement_unit='г'),\
Ingredient(name='сыр гойя', measurement_unit='г'),\
Ingredient(name='сыр голландский', measurement_unit='г'),\
Ingredient(name='сыр голубой', measurement_unit='г'),\
Ingredient(name='сыр гравьера', measurement_unit='г'),\
Ingredient(name='сыр джугас', measurement_unit='г'),\
Ingredient(name='сыр домашний', measurement_unit='г'),\
Ingredient(name='сыр дорблю', measurement_unit='г'),\
Ingredient(name='сыр имеретинский', measurement_unit='г'),\
Ingredient(name='сыр кефалотири', measurement_unit='г'),\
Ingredient(name='сырки творожные', measurement_unit='г'),\
Ingredient(name='сыр козий мягкий', measurement_unit='г'),\
Ingredient(name='сыр козий твердый', measurement_unit='г'),\
Ingredient(name='сыр колбасный', measurement_unit='г'),\
Ingredient(name='сыр копченый', measurement_unit='г'),\
Ingredient(name='сыр коттедж', measurement_unit='г'),\
Ingredient(name='сыр Маскарпоне', measurement_unit='г'),\
Ingredient(name='сыр мраморный', measurement_unit='г'),\
Ingredient(name='сыр мягкий', measurement_unit='г'),\
Ingredient(name='сыр овечий', measurement_unit='г'),\
Ingredient(name='сыр панир', measurement_unit='г'),\
Ingredient(name='сыр пеше миньон', measurement_unit='г'),\
Ingredient(name='сыр плавленый', measurement_unit='г'),\
Ingredient(name='сыр плавленый шоколадный', measurement_unit='г'),\
Ingredient(name='сыр пластинками', measurement_unit='г'),\
Ingredient(name='сыр полутвердый', measurement_unit='г'),\
Ingredient(name='сыр провола', measurement_unit='г'),\
Ingredient(name='сыр российский', measurement_unit='г'),\
Ingredient(name='сыр скаморца', measurement_unit='г'),\
Ingredient(name='сыр скаморца копченый', measurement_unit='г'),\
Ingredient(name='сыр сливочный', measurement_unit='г'),\
Ingredient(name='сыр с плесенью', measurement_unit='г'),\
Ingredient(name='сыр с плесенью мягкий', measurement_unit='г'),\
Ingredient(name='сыр твердый', measurement_unit='г'),\
Ingredient(name='сыр филадельфия', measurement_unit='г'),\
Ingredient(name='сыр фонтина', measurement_unit='г'),\
Ingredient(name='сыр хаварти', measurement_unit='г'),\
Ingredient(name='сыр швейцарский', measurement_unit='г'),\
Ingredient(name='сычужный фермент', measurement_unit='ч. л.'),\
Ingredient(name='таледжо', measurement_unit='г'),\
Ingredient(name='тальолини', measurement_unit='г'),\
Ingredient(name='тальятелле', measurement_unit='г'),\
Ingredient(name='тальятелле-гнезда', measurement_unit='г'),\
Ingredient(name='тамаринд', measurement_unit='г'),\
Ingredient(name='тамариндовая паста', measurement_unit='г'),\
Ingredient(name='тапиока', measurement_unit='г'),\
Ingredient(name='тарталетки', measurement_unit='г'),\
Ingredient(name='тартар', measurement_unit='г'),\
Ingredient(name='тархун', measurement_unit='г'),\
Ingredient(name='творог', measurement_unit='г'),\
Ingredient(name='творог 18%', measurement_unit='г'),\
Ingredient(name='творог 2%', measurement_unit='г'),\
Ingredient(name='творог 5%', measurement_unit='г'),\
Ingredient(name='творог 9%', measurement_unit='г'),\
Ingredient(name='творог жирный', measurement_unit='г'),\
Ingredient(name='творог зерненый', measurement_unit='г'),\
Ingredient(name='творог обезжиренный', measurement_unit='г'),\
Ingredient(name='творожная масса', measurement_unit='г'),\
Ingredient(name='творожная паста', measurement_unit='г'),\
Ingredient(name='творожный сыр', measurement_unit='г'),\
Ingredient(name='творожный сыр соленый', measurement_unit='г'),\
Ingredient(name='творожок клубничный', measurement_unit='г'),\
Ingredient(name='текила', measurement_unit='мл'),\
Ingredient(name='телятина', measurement_unit='г'),\
Ingredient(name='телятина вареная', measurement_unit='г'),\
Ingredient(name='телячий фарш', measurement_unit='г'),\
Ingredient(name='телячьи отбивные на косточке', measurement_unit='шт.'),\
Ingredient(name='телячьи шницели', measurement_unit='г'),\
Ingredient(name='телячьи эскалопы', measurement_unit='г'),\
Ingredient(name='телячья вырезка', measurement_unit='г'),\
Ingredient(name='телячья печень', measurement_unit='г'),\
Ingredient(name='телячья щека', measurement_unit='г'),\
Ingredient(name='тесто бездрожжевое', measurement_unit='г'),\
Ingredient(name='тесто готовое', measurement_unit='г'),\
Ingredient(name='тесто для вонтонов', measurement_unit='г'),\
Ingredient(name='тесто для пиццы', measurement_unit='г'),\
Ingredient(name='тесто дрожжевое', measurement_unit='г'),\
Ingredient(name='тесто катаифи', measurement_unit='г'),\
Ingredient(name='тесто макаронное', measurement_unit='г'),\
Ingredient(name='тесто макаронное для лазаньи', measurement_unit='г'),\
Ingredient(name='тесто пельменное', measurement_unit='г'),\
Ingredient(name='тесто песочное', measurement_unit='г'),\
Ingredient(name='тесто пресное', measurement_unit='г'),\
Ingredient(name='тесто пряничное', measurement_unit='г'),\
Ingredient(name='тесто слоеное', measurement_unit='г'),\
Ingredient(name='тесто слоеное бездрожжевое', measurement_unit='г'),\
Ingredient(name='тесто слоеное дрожжевое', measurement_unit='г'),\
Ingredient(name='тесто фило', measurement_unit='г'),\
Ingredient(name='тилапия', measurement_unit='г'),\
Ingredient(name='тилапия филе', measurement_unit='г'),\
Ingredient(name='тильзитер', measurement_unit='г'),\
Ingredient(name='тимьян', measurement_unit='г'),\
Ingredient(name='тимьян лимонный', measurement_unit='г'),\
Ingredient(name='тимьян свежий', measurement_unit='г'),\
Ingredient(name='тимьян сушеный', measurement_unit='г'),\
Ingredient(name='ткемали', measurement_unit='г'),\
Ingredient(name='тмин', measurement_unit='г'),\
Ingredient(name='тмин молотый', measurement_unit='г'),\
Ingredient(name='томатная паста', measurement_unit='г'),\
Ingredient(name='томатное пюре', measurement_unit='г'),\
Ingredient(name='томатный концентрат', measurement_unit='г'),\
Ingredient(name='томатный порошок', measurement_unit='г'),\
Ingredient(name='томатный сок', measurement_unit='мл'),\
Ingredient(name='томатный соус', measurement_unit='г'),\
Ingredient(name='томатный соус итальянский', measurement_unit='г'),\
Ingredient(name='томатный соус острый', measurement_unit='г'),\
Ingredient(name='томатный соус с базиликом', measurement_unit='г'),\
Ingredient(name='тоник', measurement_unit='мл'),\
Ingredient(name='топинамбур', measurement_unit='г'),\
Ingredient(name='топленое масло', measurement_unit='г'),\
Ingredient(name='тортильи', measurement_unit='шт.'),\
Ingredient(name='тортильони', measurement_unit='г'),\
Ingredient(name='тофу', measurement_unit='г'),\
Ingredient(name='травы ароматные', measurement_unit='г'),\
Ingredient(name='травы пряные с перцем', measurement_unit='г'),\
Ingredient(name='травы сухие', measurement_unit='г'),\
Ingredient(name='треска', measurement_unit='г'),\
Ingredient(name='треска печень', measurement_unit='г'),\
Ingredient(name='треска филе', measurement_unit='г'),\
Ingredient(name='трюфель', measurement_unit='г'),\
Ingredient(name='трюфельная крошка', measurement_unit='г'),\
Ingredient(name='трюфельное масло', measurement_unit='г'),\
Ingredient(name='трюфель черный', measurement_unit='г'),\
Ingredient(name='тунец', measurement_unit='г'),\
Ingredient(name='тунец консервированный', measurement_unit='г'),\
Ingredient(name='тунец филе', measurement_unit='г'),\
Ingredient(name='тушенка', measurement_unit='г'),\
Ingredient(name='тыква', measurement_unit='г'),\
Ingredient(name='тыквенное масло', measurement_unit='г'),\
Ingredient(name='тыквенное пюре', measurement_unit='г'),\
Ingredient(name='тыквенные семечки', measurement_unit='г'),\
Ingredient(name='тюлька свежая', measurement_unit='г'),\
Ingredient(name='угорь', measurement_unit='г'),\
Ingredient(name='угорь копченый', measurement_unit='г'),\
Ingredient(name='угурт', measurement_unit='г'),\
Ingredient(name='укроп', measurement_unit='г'),\
Ingredient(name='укропное семя', measurement_unit='г'),\
Ingredient(name='укроп свежий', measurement_unit='г'),\
Ingredient(name='укроп сушеный', measurement_unit='г'),\
Ingredient(name='уксус', measurement_unit='мл'),\
Ingredient(name='уксус 9%', measurement_unit='мл'),\
Ingredient(name='уксус из сидра', measurement_unit='мл'),\
Ingredient(name='уксусная эссенция', measurement_unit='мл'),\
Ingredient(name='уксус столовый', measurement_unit='мл'),\
Ingredient(name='улитки', measurement_unit='г'),\
Ingredient(name='улитки виноградные', measurement_unit='г'),\
Ingredient(name='урюк', measurement_unit='г'),\
Ingredient(name='устрицы', measurement_unit='г'),\
Ingredient(name='утиная грудка', measurement_unit='г'),\
Ingredient(name='утиная печень', measurement_unit='г'),\
Ingredient(name='утиное филе', measurement_unit='г'),\
Ingredient(name='утиные бедрышки', measurement_unit='г'),\
Ingredient(name='утиные ножки', measurement_unit='г'),\
Ingredient(name='утка', measurement_unit='г'),\
Ingredient(name='утка печеная', measurement_unit='г'),\
Ingredient(name='утка тушка', measurement_unit='г'),\
Ingredient(name='уцхо-сунели', measurement_unit='г'),\
Ingredient(name='фазан', measurement_unit='г'),\
Ingredient(name='фарш (баранина и говядина)', measurement_unit='г'),\
Ingredient(name='фарш (свинина и курица)', measurement_unit='г'),\
Ingredient(name='фасоль', measurement_unit='г'),\
Ingredient(name='фасоль белая', measurement_unit='г'),\
Ingredient(name='фасоль белая консервированная', measurement_unit='г'),\
Ingredient(name='фасоль белая лима', measurement_unit='г'),\
Ingredient(name='фасоль зеленая стручковая', measurement_unit='г'),\
Ingredient(name='фасоль кенийская', measurement_unit='г'),\
Ingredient(name='фасоль кидни красная', measurement_unit='г'),\
Ingredient(name='фасоль консервированная', measurement_unit='г'),\
Ingredient(name='фасоль красная', measurement_unit='г'),\
Ingredient(name='фасоль красная вареная', measurement_unit='г'),\
Ingredient(name='фасоль красная консервированная', measurement_unit='г'),\
Ingredient(name='фасоль молодая замороженная', measurement_unit='г'),\
Ingredient(name='фасоль пинто', measurement_unit='г'),\
Ingredient(name='фасоль спаржевая вареная', measurement_unit='г'),\
Ingredient(name='фасоль стручковая', measurement_unit='г'),\
Ingredient(name='фасоль стручковая замороженная', measurement_unit='г'),\
Ingredient(name='фасоль стручковая консервированная', measurement_unit='г'),\
Ingredient(name='фасоль черный глаз', measurement_unit='г'),\
Ingredient(name='фейхоа', measurement_unit='г'),\
Ingredient(name='фенхель', measurement_unit='г'),\
Ingredient(name='фенхель семена', measurement_unit='г'),\
Ingredient(name='фенхель семена молотые', measurement_unit='г'),\
Ingredient(name='фестонате', measurement_unit='г'),\
Ingredient(name='фета', measurement_unit='г'),\
Ingredient(name='фетаки', measurement_unit='г'),\
Ingredient(name='фетакса', measurement_unit='г'),\
Ingredient(name='феттучине', measurement_unit='г'),\
Ingredient(name='фиалки засахаренные', measurement_unit='г'),\
Ingredient(name='фиалковый сироп', measurement_unit='мл'),\
Ingredient(name='физалис', measurement_unit='г'),\
Ingredient(name='филе красного окуня', measurement_unit='г'),\
Ingredient(name='филе лосося', measurement_unit='г'),\
Ingredient(name='филе палтуса', measurement_unit='г'),\
Ingredient(name='финики', measurement_unit='г'),\
Ingredient(name='финики без косточек', measurement_unit='г'),\
Ingredient(name='финики иранские', measurement_unit='г'),\
Ingredient(name='финики иранские без косточек', measurement_unit='г'),\
Ingredient(name='фисташки', measurement_unit='г'),\
Ingredient(name='фисташки очищенные', measurement_unit='г'),\
Ingredient(name='фисташки очищенные несоленые', measurement_unit='г'),\
Ingredient(name='фисташки рубленые', measurement_unit='г'),\
Ingredient(name='фисташковая мука', measurement_unit='г'),\
Ingredient(name='фисташковая паста', measurement_unit='г'),\
Ingredient(name='фисташковое масло', measurement_unit='г'),\
Ingredient(name='фокачча', measurement_unit='г'),\
Ingredient(name='форель', measurement_unit='г'),\
Ingredient(name='форель вареная', measurement_unit='г'),\
Ingredient(name='форель горячего копчения', measurement_unit='г'),\
Ingredient(name='форель озерная свежая', measurement_unit='г'),\
Ingredient(name='форель слабосоленая', measurement_unit='г'),\
Ingredient(name='форель стейки', measurement_unit='г'),\
Ingredient(name='форель филе', measurement_unit='г'),\
Ingredient(name='форель холодного копчения', measurement_unit='г'),\
Ingredient(name='фрикадельки', measurement_unit='г'),\
Ingredient(name='фрукт дракона', measurement_unit='г'),\
Ingredient(name='фруктовый сироп', measurement_unit='мл'),\
Ingredient(name='фруктовый сок', measurement_unit='мл'),\
Ingredient(name='фруктовый сок без сахара', measurement_unit='мл'),\
Ingredient(name='фруктоза', measurement_unit='г'),\
Ingredient(name='фрукты', measurement_unit='г'),\
Ingredient(name='фрукты консервированные', measurement_unit='г'),\
Ingredient(name='фундук', measurement_unit='г'),\
Ingredient(name='фундучная мука', measurement_unit='г'),\
Ingredient(name='фунчоза', measurement_unit='г'),\
Ingredient(name='халва', measurement_unit='г'),\
Ingredient(name='халва ванильная', measurement_unit='г'),\
Ingredient(name='халва подсолнечная', measurement_unit='г'),\
Ingredient(name='халуми', measurement_unit='г'),\
Ingredient(name='хамон', measurement_unit='г'),\
Ingredient(name='хек', measurement_unit='г'),\
Ingredient(name='хек филе', measurement_unit='г'),\
Ingredient(name='херес', measurement_unit='мл'),\
Ingredient(name='хересный уксус', measurement_unit='мл'),\
Ingredient(name='хлеб', measurement_unit='г'),\
Ingredient(name='хлеб 7 злаков', measurement_unit='батон'),\
Ingredient(name='хлеб белый', measurement_unit='г'),\
Ingredient(name='хлеб белый сухой', measurement_unit='г'),\
Ingredient(name='хлеб бородинский', measurement_unit='г'),\
Ingredient(name='хлеб датский ржаной', measurement_unit='г'),\
Ingredient(name='хлеб для сэндвичей', measurement_unit='г'),\
Ingredient(name='хлебная крошка', measurement_unit='г'),\
Ingredient(name='хлеб ржаной', measurement_unit='г'),\
Ingredient(name='хлеб серый', measurement_unit='г'),\
Ingredient(name='хлеб с кунжутом', measurement_unit='г'),\
Ingredient(name='хлеб цельнозерновой', measurement_unit='г'),\
Ingredient(name='хлебцы пшенично-ржаные цельнозерновые', measurement_unit='г'),\
Ingredient(name='хлопья 4 злака', measurement_unit='г'),\
Ingredient(name='хлопья 5 злаков', measurement_unit='г'),\
Ingredient(name='хлопья 7 злаков', measurement_unit='ст. л.'),\
Ingredient(name='хлопья быстрого приготовления', measurement_unit='г'),\
Ingredient(name='хлорид кальция', measurement_unit='г'),\
Ingredient(name='хмели-сунели', measurement_unit='г'),\
Ingredient(name='хмель', measurement_unit='г'),\
Ingredient(name='хрен', measurement_unit='г'),\
Ingredient(name='хрен протертый', measurement_unit='г'),\
Ingredient(name='хрен со сливками', measurement_unit='г'),\
Ingredient(name='хурма', measurement_unit='г'),\
Ingredient(name='хурма спелая', measurement_unit='г'),\
Ingredient(name='цесарка тушка', measurement_unit='г'),\
Ingredient(name='цикорий', measurement_unit='г'),\
Ingredient(name='цитроновые цукаты', measurement_unit='г'),\
Ingredient(name='цитрусовые цукаты', measurement_unit='г'),\
Ingredient(name='цитрусовый свежевыжатый сок', measurement_unit='мл'),\
Ingredient(name='цукаты', measurement_unit='г'),\
Ingredient(name='цукини', measurement_unit='г'),\
Ingredient(name='цукини цветы', measurement_unit='г'),\
Ingredient(name='цыплята', measurement_unit='г'),\
Ingredient(name='цыплята-корнишоны', measurement_unit='шт.'),\
Ingredient(name='чабер', measurement_unit='г'),\
Ingredient(name='чабрец', measurement_unit='г'),\
Ingredient(name='чабрец сушеный', measurement_unit='г'),\
Ingredient(name='чай дарджилинг', measurement_unit='г'),\
Ingredient(name='чай жасминовый', measurement_unit='г'),\
Ingredient(name='чай зеленый', measurement_unit='г'),\
Ingredient(name='чай копченый лапсанг сушонг', measurement_unit='г'),\
Ingredient(name='чай красный', measurement_unit='г'),\
Ingredient(name='чай ройбуш', measurement_unit='г'),\
Ingredient(name='чай черный', measurement_unit='г'),\
Ingredient(name='чай черный крупнолистовой', measurement_unit='г'),\
Ingredient(name='чай черный со специями', measurement_unit='г'),\
Ingredient(name='чай эрл грей', measurement_unit='г'),\
Ingredient(name='чатни манго', measurement_unit='г'),\
Ingredient(name='чеддер', measurement_unit='г'),\
Ingredient(name='черемуха', measurement_unit='г'),\
Ingredient(name='черемуховая мука', measurement_unit='г'),\
Ingredient(name='черемша', measurement_unit='г'),\
Ingredient(name='черешневый джем', measurement_unit='г'),\
Ingredient(name='черешня', measurement_unit='г'),\
Ingredient(name='черешня консервированная без косточек', measurement_unit='г'),\
Ingredient(name='черная смородина', measurement_unit='г'),\
Ingredient(name='черника', measurement_unit='г'),\
Ingredient(name='черника замороженная', measurement_unit='г'),\
Ingredient(name='чернила каракатицы', measurement_unit='г'),\
Ingredient(name='черничный джем', measurement_unit='г'),\
Ingredient(name='чернослив', measurement_unit='г'),\
Ingredient(name='чернослив без косточек', measurement_unit='г'),\
Ingredient(name='чернослив вяленый', measurement_unit='г'),\
Ingredient(name='чернослив копченый без косточек', measurement_unit='г'),\
Ingredient(name='черносмородиновое варенье', measurement_unit='г'),\
Ingredient(name='черносмородиновый джем', measurement_unit='г'),\
Ingredient(name='чеснок', measurement_unit='г'),\
Ingredient(name='чеснок молодой', measurement_unit='г'),\
Ingredient(name='чеснок сушеный', measurement_unit='г'),\
Ingredient(name='чесночная соль', measurement_unit='г'),\
Ingredient(name='чесночное масло', measurement_unit='мл'),\
Ingredient(name='чесночный порошок', measurement_unit='г'),\
Ingredient(name='чечевица', measurement_unit='г'),\
Ingredient(name='чечевица вареная', measurement_unit='г'),\
Ingredient(name='чечевица зеленая', measurement_unit='г'),\
Ingredient(name='чечевица красная', measurement_unit='г'),\
Ingredient(name='чечил спагетти', measurement_unit='г'),\
Ingredient(name='чиабатта', measurement_unit='г'),\
Ingredient(name='чиа семена', measurement_unit='г'),\
Ingredient(name='чипотле молотый', measurement_unit='г'),\
Ingredient(name='чипсы', measurement_unit='г'),\
Ingredient(name='чоризо', measurement_unit='г'),\
Ingredient(name='шалфей', measurement_unit='г'),\
Ingredient(name='шалфей свежий', measurement_unit='г'),\
Ingredient(name='шалфей сушеный', measurement_unit='г'),\
Ingredient(name='шампанское', measurement_unit='г'),\
Ingredient(name='шампанское советское', measurement_unit='мл'),\
Ingredient(name='шампанское сухое', measurement_unit='мл'),\
Ingredient(name='шампиньоны', measurement_unit='г'),\
Ingredient(name='шампиньоны замороженные', measurement_unit='г'),\
Ingredient(name='шампиньоны консервированные', measurement_unit='г'),\
Ingredient(name='шампиньоны маринованные', measurement_unit='г'),\
Ingredient(name='шампиньоны свежие', measurement_unit='г'),\
Ingredient(name='шафран', measurement_unit='г'),\
Ingredient(name='шафран имеретинский', measurement_unit='г'),\
Ingredient(name='шафран молотый', measurement_unit='ч. л.'),\
Ingredient(name='шафран нити', measurement_unit='шт.'),\
Ingredient(name='шелковица', measurement_unit='г'),\
Ingredient(name='шелковица сушеная', measurement_unit='г'),\
Ingredient(name='шиповник', measurement_unit='г'),\
Ingredient(name='шиповниковый сироп', measurement_unit='мл'),\
Ingredient(name='шнапс', measurement_unit='мл'),\
Ingredient(name='шнитт-лук', measurement_unit='г'),\
Ingredient(name='шоколад', measurement_unit='г'),\
Ingredient(name='шоколад белый', measurement_unit='г'),\
Ingredient(name='шоколад горький с апельсиновой цедрой', measurement_unit='г'),\
Ingredient(name='шоколад молочный', measurement_unit='г'),\
Ingredient(name='шоколад мятный', measurement_unit='г'),\
Ingredient(name='шоколадная паста', measurement_unit='г'),\
Ingredient(name='шоколадная стружка', measurement_unit='г'),\
Ingredient(name='шоколадное масло', measurement_unit='г'),\
Ingredient(name='шоколадно-ореховая паста', measurement_unit='г'),\
])"