python manage.py shell -c "from recipies.models import Ingredient; Ingredient.objects.bulk_create([ \
Ingredient(name='абрикосовое варенье', measurement_unit='г'),\
Ingredient(name='абрикосовое пюре', measurement_unit='г'),\
Ingredient(name='абрикосовый джем', measurement_unit='г'),\
Ingredient(name='абрикосовый сок', measurement_unit='мл'),\
Ingredient(name='абрикосы', measurement_unit='г'),\
Ingredient(name='абрикосы консервированные', measurement_unit='г'),\
Ingredient(name='авокадо', measurement_unit='г'),\
Ingredient(name='агава сироп', measurement_unit='мл'),\
Ingredient(name='агар-агар', measurement_unit='г'),\
Ingredient(name='аграм', measurement_unit='г'),\
Ingredient(name='аджика', measurement_unit='г'),\
Ingredient(name='аджика зеленая', measurement_unit='г'),\
Ingredient(name='айва', measurement_unit='г'),\
Ingredient(name='айвовое пюре', measurement_unit='г'),\
Ingredient(name='айран', measurement_unit='г'),\
Ingredient(name='айсинг', measurement_unit='г'),\
Ingredient(name='акула стейки', measurement_unit='г'),\
Ingredient(name='алкоголь', measurement_unit='мл'),\
Ingredient(name='алкоголь крепкий', measurement_unit='мл'),\
Ingredient(name='алыча', measurement_unit='г'),\
Ingredient(name='альбухара', measurement_unit='шт.'),\
Ingredient(name='альмехи', measurement_unit='г'),\
Ingredient(name='амарантовая мука', measurement_unit='г'),\
Ingredient(name='ананасовый сироп', measurement_unit='мл'),\
Ingredient(name='ананасовый сок', measurement_unit='мл'),\
Ingredient(name='ананасы', measurement_unit='г'),\
Ingredient(name='ананасы вяленые', measurement_unit='г'),\
Ingredient(name='ананасы консервированные', measurement_unit='г'),\
Ingredient(name='анис', measurement_unit='г'),\
Ingredient(name='анис звездочки', measurement_unit='г'),\
Ingredient(name='анисовый ликер', measurement_unit='мл'),\
Ingredient(name='анис семена', measurement_unit='г'),\
Ingredient(name='анчоусы', measurement_unit='г'),\
Ingredient(name='апельсиновая вода', measurement_unit='мл'),\
Ingredient(name='апельсиновая цедра', measurement_unit='г'),\
Ingredient(name='апельсиновая эссенция', measurement_unit='ч. л.'),\
Ingredient(name='апельсиновое варенье', measurement_unit='г'),\
Ingredient(name='апельсиновые цукаты', measurement_unit='г'),\
Ingredient(name='апельсиновый джем', measurement_unit='г'),\
Ingredient(name='апельсиновый джем с имбирем', measurement_unit='г'),\
Ingredient(name='апельсиновый ликер', measurement_unit='мл'),\
Ingredient(name='апельсиновый сироп', measurement_unit='мл'),\
Ingredient(name='апельсиновый сок', measurement_unit='мл'),\
Ingredient(name='апельсиновый сок свежевыжатый', measurement_unit='мл'),\
Ingredient(name='апельсиновый уксус', measurement_unit='мл'),\
Ingredient(name='апельсиновый экстракт', measurement_unit='ч. л.'),\
Ingredient(name='апельсины', measurement_unit='г'),\
Ingredient(name='апельсины красные', measurement_unit='шт.'),\
Ingredient(name='апельсины крупные', measurement_unit='шт.'),\
Ingredient(name='арахис', measurement_unit='г'),\
Ingredient(name='арахис жареный', measurement_unit='г'),\
Ingredient(name='арахисовая паста', measurement_unit='г'),\
Ingredient(name='арахисовое масло', measurement_unit='г'),\
Ingredient(name='арахис соленый', measurement_unit='г'),\
Ingredient(name='арбузная мякоть', measurement_unit='г'),\
Ingredient(name='арбузы', measurement_unit='г'),\
Ingredient(name='аргановое масло', measurement_unit='г'),\
Ingredient(name='аришта', measurement_unit='г'),\
Ingredient(name='ароматизатор', measurement_unit='г'),\
Ingredient(name='ароматизатор ананас', measurement_unit='капля'),\
Ingredient(name='ароматизатор вишня', measurement_unit='капля'),\
Ingredient(name='ароматизатор малина', measurement_unit='капля'),\
Ingredient(name='ароматизатор ром', measurement_unit='капля'),\
Ingredient(name='артишоки', measurement_unit='г'),\
Ingredient(name='артишоки в масле', measurement_unit='г'),\
Ingredient(name='артишоки маринованные', measurement_unit='г'),\
Ingredient(name='аспирин', measurement_unit='шт.'),\
Ingredient(name='ассорти мясное', measurement_unit='г'),\
Ingredient(name='ассорти овощное', measurement_unit='г'),\
Ingredient(name='ассорти фруктовое', measurement_unit='г'),\
Ingredient(name='ассорти ягодное', measurement_unit='г'),\
Ingredient(name='аши', measurement_unit='г'),\
Ingredient(name='багет', measurement_unit='г'),\
Ingredient(name='багет вчерашний', measurement_unit='г'),\
Ingredient(name='багет мини', measurement_unit='г'),\
Ingredient(name='бадан', measurement_unit='г'),\
Ingredient(name='бадьян', measurement_unit='г'),\
Ingredient(name='базилик лимонный', measurement_unit='г'),\
Ingredient(name='базилик свежий', measurement_unit='г'),\
Ingredient(name='базилик сушеный', measurement_unit='г'),\
Ingredient(name='базилик тайский', measurement_unit='г'),\
Ingredient(name='базилик фиолетовый', measurement_unit='г'),\
Ingredient(name='баклажаны', measurement_unit='г'),\
Ingredient(name='баклажаны мини', measurement_unit='г'),\
Ingredient(name='баклажаны тайские', measurement_unit='г'),\
Ingredient(name='балык', measurement_unit='г'),\
Ingredient(name='бальзам', measurement_unit='г'),\
Ingredient(name='бальзамический крем', measurement_unit='г'),\
Ingredient(name='бальзамический соус', measurement_unit='мл'),\
Ingredient(name='бальзамический уксус', measurement_unit='мл'),\
Ingredient(name='бальзам рижский черный', measurement_unit='мл'),\
Ingredient(name='бамия', measurement_unit='г'),\
Ingredient(name='банановое пюре', measurement_unit='г'),\
Ingredient(name='банановые чипсы', measurement_unit='г'),\
Ingredient(name='банановый зеленый сироп', measurement_unit='мл'),\
Ingredient(name='банановый ликер', measurement_unit='мл'),\
Ingredient(name='бананы', measurement_unit='г'),\
Ingredient(name='бананы мини', measurement_unit='г'),\
Ingredient(name='барабулька', measurement_unit='г'),\
Ingredient(name='бараний ливер', measurement_unit='г'),\
Ingredient(name='бараний окорок на косточке', measurement_unit='г'),\
Ingredient(name='бараний фарш', measurement_unit='г'),\
Ingredient(name='баранина', measurement_unit='г'),\
Ingredient(name='баранки', measurement_unit='г'),\
Ingredient(name='бараньи антрекоты', measurement_unit='г'),\
Ingredient(name='бараньи голяшки', measurement_unit='шт.'),\
Ingredient(name='бараньи потроха', measurement_unit='г'),\
Ingredient(name='бараньи ребрышки', measurement_unit='шт.'),\
Ingredient(name='баранья лопатка', measurement_unit='г'),\
Ingredient(name='баранья нога', measurement_unit='г'),\
Ingredient(name='баранья печень', measurement_unit='г'),\
Ingredient(name='барбарис', measurement_unit='г'),\
Ingredient(name='барбарис вяленый', measurement_unit='ст. л.'),\
Ingredient(name='барбарис молотый', measurement_unit='г'),\
Ingredient(name='бастурма', measurement_unit='г'),\
Ingredient(name='батат', measurement_unit='г'),\
Ingredient(name='батон', measurement_unit='г'),\
Ingredient(name='батончики шоколадные', measurement_unit='г'),\
Ingredient(name='безе', measurement_unit='г'),\
Ingredient(name='бекон', measurement_unit='г'),\
Ingredient(name='бекон варено-копченый', measurement_unit='г'),\
Ingredient(name='бекон сырокопченый', measurement_unit='г'),\
Ingredient(name='белорыбица', measurement_unit='г'),\
Ingredient(name='бирнель', measurement_unit='мл'),\
Ingredient(name='бисквик смесь готовая', measurement_unit='г'),\
Ingredient(name='бисквит', measurement_unit='г'),\
Ingredient(name='бисквитная крошка', measurement_unit='г'),\
Ingredient(name='бисквитный корж', measurement_unit='г'),\
Ingredient(name='бисквитный рулет', measurement_unit='г'),\
Ingredient(name='бисквит шоколадный', measurement_unit='г'),\
Ingredient(name='бифштекс', measurement_unit='шт.'),\
Ingredient(name='блинная мука', measurement_unit='г'),\
Ingredient(name='блины готовые', measurement_unit='г'),\
Ingredient(name='блины овсяные', measurement_unit='шт.'),\
Ingredient(name='бобовые ростки', measurement_unit='г'),\
Ingredient(name='бобы', measurement_unit='г'),\
Ingredient(name='бобы мунг пророщенные', measurement_unit='г'),\
Ingredient(name='бобы тонка', measurement_unit='шт.'),\
Ingredient(name='ботарга', measurement_unit='г'),\
Ingredient(name='брезаола', measurement_unit='г'),\
Ingredient(name='бренди', measurement_unit='г'),\
Ingredient(name='брокколи замороженная', measurement_unit='г'),\
Ingredient(name='брокколи свежая', measurement_unit='г'),\
Ingredient(name='брусника замороженная', measurement_unit='г'),\
Ingredient(name='брусника свежая', measurement_unit='г'),\
Ingredient(name='брусника сушеная', measurement_unit='г'),\
Ingredient(name='брусничное варенье', measurement_unit='г'),\
Ingredient(name='брусничный соус', measurement_unit='г'),\
Ingredient(name='брынза', measurement_unit='г'),\
Ingredient(name='брынза сербская', measurement_unit='г'),\
Ingredient(name='брюква', measurement_unit='г'),\
Ingredient(name='буженина', measurement_unit='г'),\
Ingredient(name='бузина сироп', measurement_unit='мл'),\
Ingredient(name='букет гарни', measurement_unit='г'),\
Ingredient(name='булгур', measurement_unit='г'),\
Ingredient(name='булка', measurement_unit='г'),\
Ingredient(name='булка белая', measurement_unit='г'),\
Ingredient(name='булка сдобная', measurement_unit='г'),\
Ingredient(name='булочки', measurement_unit='г'),\
Ingredient(name='булочки белые черствые', measurement_unit='г'),\
Ingredient(name='булочки бриошь', measurement_unit='шт.'),\
Ingredient(name='булочки вчерашние', measurement_unit='шт.'),\
Ingredient(name='булочки для гамбургеров', measurement_unit='шт.'),\
Ingredient(name='булочки зерновые', measurement_unit='шт.'),\
Ingredient(name='булочки ржаные', measurement_unit='кусок'),\
Ingredient(name='булочки с кунжутом', measurement_unit='шт.'),\
Ingredient(name='бульон', measurement_unit='мл'),\
Ingredient(name='бульонные кубики', measurement_unit='г'),\
Ingredient(name='бурбон', measurement_unit='мл'),\
Ingredient(name='Буррата', measurement_unit='г'),\
Ingredient(name='буряк', measurement_unit='г'),\
Ingredient(name='бусинки кондитерские', measurement_unit='ч. л.'),\
Ingredient(name='бусинки кондитерские серебряные', measurement_unit='г'),\
Ingredient(name='бычий хвост', measurement_unit='г'),\
Ingredient(name='ванилин', measurement_unit='г'),\
Ingredient(name='ваниль в стручках', measurement_unit='г'),\
Ingredient(name='ванильная настойка', measurement_unit='мл'),\
Ingredient(name='ванильная эссенция', measurement_unit='г'),\
Ingredient(name='ванильный порошок', measurement_unit='г'),\
Ingredient(name='ванильный сироп', measurement_unit='мл'),\
Ingredient(name='ванильный экстракт', measurement_unit='г'),\
Ingredient(name='варенье', measurement_unit='г'),\
Ingredient(name='васаби', measurement_unit='г'),\
Ingredient(name='вафельная крошка', measurement_unit='г'),\
Ingredient(name='вафельные коржи', measurement_unit='г'),\
Ingredient(name='вафельные трубочки', measurement_unit='г'),\
Ingredient(name='вафли', measurement_unit='г'),\
Ingredient(name='вафли шоколадные', measurement_unit='г'),\
Ingredient(name='вермишель', measurement_unit='г'),\
Ingredient(name='вермишель яичная', measurement_unit='г'),\
Ingredient(name='вермут', measurement_unit='мл'),\
Ingredient(name='вермут белый', measurement_unit='мл'),\
Ingredient(name='вермут сухой', measurement_unit='мл'),\
Ingredient(name='ветчина', measurement_unit='г'),\
Ingredient(name='ветчина вареная', measurement_unit='г'),\
Ingredient(name='ветчина варено-копченая', measurement_unit='г'),\
Ingredient(name='ветчина копченая', measurement_unit='г'),\
Ingredient(name='ветчина пармская', measurement_unit='г'),\
Ingredient(name='ветчина сырокопченая', measurement_unit='г'),\
Ingredient(name='вешенки', measurement_unit='г'),\
Ingredient(name='винегрет', measurement_unit='г'),\
Ingredient(name='винный камень', measurement_unit='г'),\
Ingredient(name='винный уксус', measurement_unit='мл'),\
Ingredient(name='винный уксус белый', measurement_unit='мл'),\
Ingredient(name='винный уксус красный', measurement_unit='мл'),\
Ingredient(name='винный уксус на чесноке', measurement_unit='мл'),\
Ingredient(name='винный уксус на эстрагоне', measurement_unit='мл'),\
Ingredient(name='вино белое', measurement_unit='мл'),\
Ingredient(name='вино белое полусладкое', measurement_unit='мл'),\
Ingredient(name='вино белое полусухое', measurement_unit='мл'),\
Ingredient(name='вино белое сладкое', measurement_unit='мл'),\
Ingredient(name='вино белое столовое', measurement_unit='мл'),\
Ingredient(name='вино белое сухое', measurement_unit='мл'),\
Ingredient(name='виноград', measurement_unit='г'),\
Ingredient(name='виноград без косточек', measurement_unit='г'),\
Ingredient(name='виноград белый', measurement_unit='г'),\
Ingredient(name='виноград изабелла', measurement_unit='г'),\
Ingredient(name='виноградное желе', measurement_unit='г'),\
Ingredient(name='виноградные листья', measurement_unit='г'),\
Ingredient(name='виноградные листья маринованные', measurement_unit='г'),\
Ingredient(name='виноградные листья молодые', measurement_unit='шт.'),\
Ingredient(name='виноградный сок', measurement_unit='мл'),\
Ingredient(name='виноградный сок осветленный', measurement_unit='мл'),\
Ingredient(name='виноград синий', measurement_unit='г'),\
Ingredient(name='виноград черный', measurement_unit='г'),\
Ingredient(name='вино десертное', measurement_unit='мл'),\
Ingredient(name='вино игристое сухое', measurement_unit='мл'),\
Ingredient(name='вино красное', measurement_unit='мл'),\
Ingredient(name='вино красное полусладкое', measurement_unit='мл'),\
Ingredient(name='вино красное полусухое', measurement_unit='мл'),\
Ingredient(name='вино красное сладкое', measurement_unit='мл'),\
Ingredient(name='вино красное сухое', measurement_unit='мл'),\
Ingredient(name='вино крепленое', measurement_unit='мл'),\
Ingredient(name='вино розовое полусладкое', measurement_unit='мл'),\
Ingredient(name='вино розовое полусухое', measurement_unit='мл'),\
Ingredient(name='виски', measurement_unit='мл'),\
Ingredient(name='витамин C в порошке', measurement_unit='г'),\
Ingredient(name='вишневая настойка', measurement_unit='мл'),\
Ingredient(name='вишневое варенье', measurement_unit='г'),\
Ingredient(name='вишневые листья', measurement_unit='г'),\
Ingredient(name='вишневый джем', measurement_unit='г'),\
Ingredient(name='вишневый ликер', measurement_unit='мл'),\
Ingredient(name='вишневый сироп', measurement_unit='мл'),\
Ingredient(name='вишневый сок', measurement_unit='мл'),\
Ingredient(name='вишня', measurement_unit='г'),\
Ingredient(name='вишня вяленая', measurement_unit='г'),\
Ingredient(name='вишня замороженная', measurement_unit='г'),\
Ingredient(name='вишня засахаренная кондитерская', measurement_unit='шт.'),\
Ingredient(name='вишня коктейльная', measurement_unit='г'),\
Ingredient(name='вишня мараскино', measurement_unit='г'),\
Ingredient(name='вишня, протертая с сахаром', measurement_unit='г'),\
Ingredient(name='вода', measurement_unit='мл'),\
Ingredient(name='вода минеральная без газа', measurement_unit='мл'),\
Ingredient(name='вода минеральная газированная', measurement_unit='мл'),\
Ingredient(name='водка', measurement_unit='мл'),\
Ingredient(name='водка анисовая', measurement_unit='мл'),\
Ingredient(name='водоросли', measurement_unit='г'),\
Ingredient(name='вустерширский соус', measurement_unit='мл'),\
Ingredient(name='галангал корень', measurement_unit='г'),\
Ingredient(name='галеты', measurement_unit='г'),\
Ingredient(name='гамбургер', measurement_unit='г'),\
Ingredient(name='ганаш', measurement_unit='г'),\
Ingredient(name='гарам масала', measurement_unit='г'),\
Ingredient(name='гарнир', measurement_unit='г'),\
Ingredient(name='гаспачо', measurement_unit='г'),\
Ingredient(name='гвоздика', measurement_unit='г'),\
Ingredient(name='гвоздика молотая', measurement_unit='г'),\
Ingredient(name='герань листья', measurement_unit='г'),\
Ingredient(name='геркулес', measurement_unit='г'),\
Ingredient(name='глазурь', measurement_unit='г'),\
Ingredient(name='глазурь белая', measurement_unit='г'),\
Ingredient(name='глазурь готовая', measurement_unit='г'),\
Ingredient(name='глазурь черная', measurement_unit='г'),\
Ingredient(name='глазурь шоколадная белая', measurement_unit='г'),\
Ingredient(name='глутамат натрия', measurement_unit='г'),\
Ingredient(name='глюкоза', measurement_unit='г'),\
Ingredient(name='глюкоза сироп', measurement_unit='мл'),\
Ingredient(name='говядина', measurement_unit='г'),\
Ingredient(name='говядина на кости', measurement_unit='г'),\
Ingredient(name='говяжий фарш', measurement_unit='г'),\
Ingredient(name='говяжий язык', measurement_unit='г'),\
Ingredient(name='говяжье сердце', measurement_unit='г'),\
Ingredient(name='говяжьи бифштексы', measurement_unit='г'),\
Ingredient(name='говяжьи голяшки', measurement_unit='г'),\
Ingredient(name='говяжьи легкие', measurement_unit='г'),\
Ingredient(name='говяжьи ребра', measurement_unit='г'),\
Ingredient(name='говяжьи стейки рибай', measurement_unit='г'),\
Ingredient(name='говяжья вырезка', measurement_unit='шт.'),\
Ingredient(name='говяжья грудинка', measurement_unit='г'),\
Ingredient(name='говяжья лопатка', measurement_unit='г'),\
Ingredient(name='говяжья мозговая кость', measurement_unit='шт.'),\
Ingredient(name='говяжья мякоть', measurement_unit='г'),\
Ingredient(name='говяжья печень', measurement_unit='г'),\
Ingredient(name='говяжья черева', measurement_unit='г'),\
Ingredient(name='говяжья шейка', measurement_unit='г'),\
Ingredient(name='годжи', measurement_unit='г'),\
Ingredient(name='голец филе', measurement_unit='г'),\
Ingredient(name='голубика', measurement_unit='г'),\
Ingredient(name='голубика замороженная', measurement_unit='г'),\
Ingredient(name='голубь', measurement_unit='г'),\
Ingredient(name='горбуша', measurement_unit='г'),\
Ingredient(name='горбуша в собственном соку', measurement_unit='банка'),\
Ingredient(name='горбуша филе', measurement_unit='г'),\
Ingredient(name='горгонзола', measurement_unit='г'),\
Ingredient(name='горгонзола пиканте', measurement_unit='г'),\
Ingredient(name='горох', measurement_unit='г'),\
Ingredient(name='горох колотый', measurement_unit='г'),\
Ingredient(name='гороховые ростки', measurement_unit='г'),\
Ingredient(name='гороховый суп', measurement_unit='мл'),\
Ingredient(name='горошек зеленый', measurement_unit='г'),\
Ingredient(name='горошек зеленый замороженный', measurement_unit='г'),\
Ingredient(name='горошек зеленый консервированный', measurement_unit='г'),\
Ingredient(name='горошек стручковый свежий', measurement_unit='г'),\
Ingredient(name='горчица', measurement_unit='г'),\
Ingredient(name='горчица дижонская', measurement_unit='г'),\
Ingredient(name='горчица дижонская с медом', measurement_unit='г'),\
Ingredient(name='горчица желтая семена', measurement_unit='г'),\
Ingredient(name='горчица острая', measurement_unit='г'),\
Ingredient(name='горчица русская', measurement_unit='г'),\
Ingredient(name='горчица семена', measurement_unit='г'),\
Ingredient(name='горчица с зернами', measurement_unit='г'),\
Ingredient(name='горчица сухая', measurement_unit='г'),\
Ingredient(name='горчица французская', measurement_unit='г'),\
Ingredient(name='горчица цитрусовая', measurement_unit='г'),\
Ingredient(name='горчичное масло', measurement_unit='мл'),\
Ingredient(name='горчичный порошок', measurement_unit='г'),\
Ingredient(name='грана падано', measurement_unit='г'),\
Ingredient(name='гранатные зерна', measurement_unit='г'),\
Ingredient(name='гранатовая паста', measurement_unit='г'),\
Ingredient(name='гранатовый сироп', measurement_unit='мл'),\
Ingredient(name='гранатовый сок', measurement_unit='мл'),\
Ingredient(name='гранатовый сок свежевыжатый', measurement_unit='мл'),\
Ingredient(name='гранатовый соус', measurement_unit='мл'),\
Ingredient(name='гранаты', measurement_unit='г'),\
Ingredient(name='гранита', measurement_unit='г'),\
Ingredient(name='гранола с орехами', measurement_unit='г'),\
Ingredient(name='граппа', measurement_unit='г'),\
Ingredient(name='гратен', measurement_unit='г'),\
Ingredient(name='грейпфрутовая цедра', measurement_unit='г'),\
Ingredient(name='грейпфрутовый сок', measurement_unit='г'),\
Ingredient(name='грейпфруты', measurement_unit='г'),\
Ingredient(name='грейпфруты розовые', measurement_unit='г'),\
Ingredient(name='гренадин', measurement_unit='г'),\
Ingredient(name='гренки', measurement_unit='г'),\
Ingredient(name='грецкие орехи', measurement_unit='г'),\
Ingredient(name='грецкие орехи рубленые', measurement_unit='г'),\
Ingredient(name='гречневая крупа', measurement_unit='г'),\
Ingredient(name='гречневая крупа зеленая', measurement_unit='г'),\
Ingredient(name='гречневая лапша соба', measurement_unit='г'),\
Ingredient(name='гречневая мука', measurement_unit='г'),\
Ingredient(name='гречневое молоко', measurement_unit='мл'),\
Ingredient(name='гречневые хлопья', measurement_unit='г'),\
Ingredient(name='грибы', measurement_unit='г'),\
Ingredient(name='грибы белые', measurement_unit='г'),\
Ingredient(name='грибы белые замороженные', measurement_unit='г'),\
Ingredient(name='грибы белые маринованные', measurement_unit='г'),\
Ingredient(name='грибы белые сухие', measurement_unit='г'),\
Ingredient(name='грибы замороженные', measurement_unit='г'),\
Ingredient(name='грибы замороженные (опята и маслята)', measurement_unit='г'),\
Ingredient(name='грибы лесные', measurement_unit='г'),\
Ingredient(name='грибы маринованные', measurement_unit='г'),\
Ingredient(name='грибы свежие', measurement_unit='г'),\
Ingredient(name='грибы соленые', measurement_unit='г'),\
Ingredient(name='грибы соломенные консервированные', measurement_unit='г'),\
Ingredient(name='грибы сухие', measurement_unit='г'),\
Ingredient(name='грибы шиитаке', measurement_unit='г'),\
Ingredient(name='грибы шиитаке сухие', measurement_unit='г'),\
Ingredient(name='гриль', measurement_unit='г'),\
Ingredient(name='гриссини', measurement_unit='г'),\
Ingredient(name='грудинка', measurement_unit='г'),\
Ingredient(name='грудинка варено-копченая', measurement_unit='г'),\
Ingredient(name='грудинка копченая', measurement_unit='г'),\
Ingredient(name='грушевое пюре', measurement_unit='г'),\
Ingredient(name='грушевый ликер', measurement_unit='мл'),\
Ingredient(name='грушевый сироп', measurement_unit='мл'),\
Ingredient(name='грушевый сок', measurement_unit='мл'),\
Ingredient(name='грушевый уксус', measurement_unit='мл'),\
Ingredient(name='груши', measurement_unit='г'),\
Ingredient(name='груши вяленые', measurement_unit='г'),\
Ingredient(name='грюйер', measurement_unit='г'),\
Ingredient(name='гуава', measurement_unit='г'),\
Ingredient(name='гуанчиале', measurement_unit='г'),\
Ingredient(name='гурьевская каша', measurement_unit='г'),\
Ingredient(name='гусиная грудка копченая', measurement_unit='г'),\
Ingredient(name='гусиная печень', measurement_unit='г'),\
Ingredient(name='гусиный жир', measurement_unit='ст. л.'),\
Ingredient(name='гусь', measurement_unit='г'),\
Ingredient(name='гусь тушка', measurement_unit='г'),\
Ingredient(name='дайкон', measurement_unit='г'),\
Ingredient(name='детское питание', measurement_unit='г'),\
Ingredient(name='джем', measurement_unit='г'),\
Ingredient(name='джин', measurement_unit='мл'),\
Ingredient(name='джусай', measurement_unit='г'),\
Ingredient(name='диоксид титана', measurement_unit='г'),\
Ingredient(name='долма', measurement_unit='г'),\
Ingredient(name='дорада', measurement_unit='г'),\
Ingredient(name='дорада потрошеная с головой', measurement_unit='г'),\
Ingredient(name='дорада с головой', measurement_unit='г'),\
Ingredient(name='дорада тушка', measurement_unit='г'),\
Ingredient(name='драже', measurement_unit='г'),\
Ingredient(name='дрожжи домашние', measurement_unit='г'),\
Ingredient(name='дрожжи свежие', measurement_unit='г'),\
Ingredient(name='дрожжи сухие', measurement_unit='г'),\
Ingredient(name='дубовая кора', measurement_unit='г'),\
Ingredient(name='душица', measurement_unit='г'),\
Ingredient(name='дыня', measurement_unit='г'),\
Ingredient(name='ежевика', measurement_unit='г'),\
Ingredient(name='ежевика замороженная', measurement_unit='г'),\
Ingredient(name='ёрш', measurement_unit='г'),\
Ingredient(name='ёрш-носарь', measurement_unit='г'),\
Ingredient(name='желатин', measurement_unit='г'),\
Ingredient(name='желатин листовой', measurement_unit='г'),\
Ingredient(name='желе', measurement_unit='г'),\
Ingredient(name='желе для торта', measurement_unit='г'),\
Ingredient(name='желирующее вещество', measurement_unit='г'),\
Ingredient(name='желирующий сахар', measurement_unit='г'),\
Ingredient(name='женьшень', measurement_unit='г'),\
Ingredient(name='жидкий дым', measurement_unit='мл'),\
Ingredient(name='жимолость', measurement_unit='г'),\
Ingredient(name='жир', measurement_unit='г'),\
Ingredient(name='жир вытопленный', measurement_unit='г'),\
Ingredient(name='жир кулинарный', measurement_unit='г'),\
Ingredient(name='жир растительный', measurement_unit='г'),\
Ingredient(name='заатар', measurement_unit='г'),\
Ingredient(name='завтрак сухой', measurement_unit='г'),\
Ingredient(name='завтрак сухой подушечки', measurement_unit='г'),\
Ingredient(name='загуститель для сливок', measurement_unit='г'),\
Ingredient(name='зайчатина', measurement_unit='г'),\
Ingredient(name='закваска', measurement_unit='г'),\
Ingredient(name='закваска вечная', measurement_unit='г'),\
Ingredient(name='заменитель сахара', measurement_unit='г'),\
Ingredient(name='заменитель сахара стевия', measurement_unit='г'),\
Ingredient(name='заправка для салатов готовая', measurement_unit='г'),\
Ingredient(name='зверобой', measurement_unit='г'),\
Ingredient(name='зелень', measurement_unit='г'),\
Ingredient(name='зелень рубленая', measurement_unit='г'),\
Ingredient(name='земляника', measurement_unit='г'),\
Ingredient(name='земляника замороженная', measurement_unit='г'),\
Ingredient(name='зефир', measurement_unit='г'),\
Ingredient(name='зира', measurement_unit='г'),\
Ingredient(name='злаковые хлопья', measurement_unit='г'),\
Ingredient(name='зубатка', measurement_unit='г'),\
Ingredient(name='зубатка филе', measurement_unit='г'),\
Ingredient(name='изолят соевого протеина', measurement_unit='г'),\
Ingredient(name='изюм', measurement_unit='г'),\
Ingredient(name='изюм без косточек', measurement_unit='г'),\
Ingredient(name='изюм белый', measurement_unit='г'),\
Ingredient(name='изюм черный', measurement_unit='г'),\
Ingredient(name='икра', measurement_unit='г'),\
Ingredient(name='икра вяленой рыбы', measurement_unit='г'),\
Ingredient(name='икра горбуши зернистая', measurement_unit='г'),\
Ingredient(name='икра красная', measurement_unit='г'),\
Ingredient(name='икра красной рыбы мелкая', measurement_unit='г'),\
Ingredient(name='икра летучей рыбы', measurement_unit='г'),\
Ingredient(name='икра лосося', measurement_unit='г'),\
Ingredient(name='икра мойвы', measurement_unit='г'),\
Ingredient(name='икра палтуса', measurement_unit='г'),\
Ingredient(name='икра судака', measurement_unit='г'),\
Ingredient(name='икра черная', measurement_unit='г'),\
Ingredient(name='имбирное варенье', measurement_unit='г'),\
Ingredient(name='имбирное печенье', measurement_unit='г'),\
Ingredient(name='имбирные цукаты', measurement_unit='г'),\
Ingredient(name='имбирь', measurement_unit='г'),\
Ingredient(name='имбирь засахаренный', measurement_unit='г'),\
Ingredient(name='имбирь корень', measurement_unit='г'),\
Ingredient(name='имбирь маринованный', measurement_unit='г'),\
Ingredient(name='имбирь молотый', measurement_unit='г'),\
Ingredient(name='индейка', measurement_unit='г'),\
Ingredient(name='индейка голень', measurement_unit='г'),\
Ingredient(name='индейка грудка', measurement_unit='г'),\
Ingredient(name='индейка копченая', measurement_unit='г'),\
Ingredient(name='индейка тушка', measurement_unit='шт.'),\
Ingredient(name='индейка фарш', measurement_unit='г'),\
Ingredient(name='индейка филе', measurement_unit='г'),\
Ingredient(name='индоутка', measurement_unit='шт.'),\
Ingredient(name='индюшачья печень', measurement_unit='г'),\
Ingredient(name='инжир', measurement_unit='г'),\
Ingredient(name='инжир свежий', measurement_unit='г'),\
Ingredient(name='инжир сушеный', measurement_unit='г'),\
Ingredient(name='ирга', measurement_unit='г'),\
Ingredient(name='ириски', measurement_unit='г'),\
Ingredient(name='итальянские травы', measurement_unit='г'),\
Ingredient(name='йогурт', measurement_unit='г'),\
Ingredient(name='йогурт греческий', measurement_unit='г'),\
Ingredient(name='йогурт жирный', measurement_unit='г'),\
Ingredient(name='йогурт козий', measurement_unit='г'),\
Ingredient(name='йогурт натуральный', measurement_unit='г'),\
Ingredient(name='йогурт нежирный', measurement_unit='г'),\
Ingredient(name='йогурт обезжиренный', measurement_unit='г'),\
Ingredient(name='йогурт фруктовый', measurement_unit='г'),\
Ingredient(name='кабачки', measurement_unit='г'),\
Ingredient(name='кабачки замороженные', measurement_unit='г'),\
Ingredient(name='кабачки молодые', measurement_unit='г'),\
Ingredient(name='каджунская смесь специй', measurement_unit='г'),\
Ingredient(name='какао', measurement_unit='г'),\
Ingredient(name='какао-бобы', measurement_unit='г'),\
Ingredient(name='какао-масло', measurement_unit='г'),\
Ingredient(name='какао-порошок', measurement_unit='г'),\
Ingredient(name='какао-порошок обезжиренный', measurement_unit='г'),\
Ingredient(name='какао сгущенное', measurement_unit='г'),\
Ingredient(name='калина', measurement_unit='г'),\
Ingredient(name='калина протертая', measurement_unit='г'),\
Ingredient(name='калинджи семена', measurement_unit='ч. л.'),\
Ingredient(name='кальвадос', measurement_unit='г'),\
Ingredient(name='кальмары', measurement_unit='г'),\
Ingredient(name='кальмары вареные', measurement_unit='г'),\
Ingredient(name='кальмары замороженные', measurement_unit='г'),\
Ingredient(name='кальмары консервированные', measurement_unit='г'),\
Ingredient(name='кальмары филе', measurement_unit='г'),\
Ingredient(name='камамбер', measurement_unit='г'),\
Ingredient(name='камбала', measurement_unit='г'),\
Ingredient(name='камбала филе', measurement_unit='г'),\
Ingredient(name='кампари', measurement_unit='мл'),\
Ingredient(name='кандурин золотой', measurement_unit='ч. л.'),\
Ingredient(name='каннеллони', measurement_unit='г'),\
Ingredient(name='капеллини', measurement_unit='г'),\
Ingredient(name='каперсы', measurement_unit='г'),\
Ingredient(name='каперсы в винном уксусе', measurement_unit='г'),\
Ingredient(name='каперсы маринованные', measurement_unit='г'),\
Ingredient(name='капуста белокочанная', measurement_unit='г'),\
Ingredient(name='капуста брюссельская', measurement_unit='г'),\
Ingredient(name='капуста брюссельская замороженная', measurement_unit='г'),\
Ingredient(name='капуста кале', measurement_unit='г'),\
Ingredient(name='капуста квашеная', measurement_unit='г'),\
Ingredient(name='капуста кольраби', measurement_unit='г'),\
Ingredient(name='капуста краснокочанная', measurement_unit='г'),\
Ingredient(name='капуста морская', measurement_unit='г'),\
Ingredient(name='капуста морская замороженная', measurement_unit='г'),\
Ingredient(name='капуста морская сушеная', measurement_unit='г'),\
Ingredient(name='капуста пекинская', measurement_unit='г'),\
Ingredient(name='капуста савойская', measurement_unit='г'),\
Ingredient(name='капуста цветная', measurement_unit='г'),\
Ingredient(name='капуста цветная замороженная', measurement_unit='г'),\
Ingredient(name='капустный рассол', measurement_unit='г'),\
Ingredient(name='капучино', measurement_unit='г'),\
Ingredient(name='каракатица', measurement_unit='г'),\
Ingredient(name='каракатица очищенная', measurement_unit='г'),\
Ingredient(name='карамбола', measurement_unit='г'),\
Ingredient(name='карамель', measurement_unit='г'),\
Ingredient(name='карамельный соус', measurement_unit='г'),\
Ingredient(name='карамель с начинкой', measurement_unit='г'),\
Ingredient(name='карамель соленая', measurement_unit='г'),\
Ingredient(name='карась', measurement_unit='г'),\
Ingredient(name='карбонад', measurement_unit='г'),\
Ingredient(name='кардамон', measurement_unit='г'),\
Ingredient(name='кардамон зерна', measurement_unit='г'),\
Ingredient(name='кардамон молотый', measurement_unit='г'),\
Ingredient(name='кардамон стручки', measurement_unit='г'),\
Ingredient(name='каркаде', measurement_unit='г'),\
Ingredient(name='карп', measurement_unit='г'),\
Ingredient(name='карп зеркальный', measurement_unit='г'),\
Ingredient(name='карп филе', measurement_unit='г'),\
Ingredient(name='карри', measurement_unit='г'),\
Ingredient(name='карри листья', measurement_unit='г'),\
Ingredient(name='карри паста', measurement_unit='г'),\
Ingredient(name='картофель', measurement_unit='г'),\
Ingredient(name='картофель вареный', measurement_unit='г'),\
Ingredient(name='картофель вареный в мундире', measurement_unit='г'),\
Ingredient(name='картофель молодой', measurement_unit='г'),\
Ingredient(name='картофельное пюре', measurement_unit='г'),\
Ingredient(name='картофельные ньокки', measurement_unit='г'),\
Ingredient(name='картофельные хлопья', measurement_unit='г'),\
Ingredient(name='картофельные чипсы', measurement_unit='г'),\
Ingredient(name='картофельный крахмал', measurement_unit='г'),\
Ingredient(name='картофельный отвар', measurement_unit='г'),\
Ingredient(name='картофельный хэш замороженный', measurement_unit='г'),\
Ingredient(name='картофель печеный', measurement_unit='г'),\
Ingredient(name='катык', measurement_unit='г'),\
Ingredient(name='каффир-лайм листья', measurement_unit='г'),\
Ingredient(name='каша', measurement_unit='г'),\
Ingredient(name='каша для детского питания', measurement_unit='г'),\
Ingredient(name='каштановая мука', measurement_unit='г'),\
Ingredient(name='каштановый крем', measurement_unit='г'),\
Ingredient(name='каштаны', measurement_unit='г'),\
Ingredient(name='каштаны вареные', measurement_unit='г'),\
Ingredient(name='каштаны консервированные', measurement_unit='г'),\
Ingredient(name='каштаны очищенные', measurement_unit='г'),\
Ingredient(name='квас', measurement_unit='г'),\
Ingredient(name='квасное сусло', measurement_unit='г'),\
Ingredient(name='квасной концентрат сухой', measurement_unit='г'),\
Ingredient(name='квас хлебный', measurement_unit='г'),\
Ingredient(name='кедровая мука', measurement_unit='г'),\
Ingredient(name='кедровые орехи', measurement_unit='г'),\
Ingredient(name='кедровые орехи жареные', measurement_unit='г'),\
Ingredient(name='кета', measurement_unit='г'),\
Ingredient(name='кетчуп острый', measurement_unit='г'),\
Ingredient(name='кетчуп томатный', measurement_unit='г'),\
Ingredient(name='кетчуп тосканский', measurement_unit='г'),\
Ingredient(name='кетчуп шашлычный', measurement_unit='г'),\
Ingredient(name='кефаль', measurement_unit='г'),\
Ingredient(name='кефир', measurement_unit='мл'),\
Ingredient(name='кефир 1%', measurement_unit='мл'),\
Ingredient(name='кефир 2,5%', measurement_unit='мл'),\
Ingredient(name='кефир 3,2%', measurement_unit='мл'),\
Ingredient(name='кефир обезжиренный', measurement_unit='мл'),\
Ingredient(name='кешью', measurement_unit='г'),\
Ingredient(name='кивано', measurement_unit='г'),\
Ingredient(name='киви', measurement_unit='г'),\
Ingredient(name='киви желе', measurement_unit='г'),\
Ingredient(name='кижуч', measurement_unit='г'),\
Ingredient(name='кижуч горячего копчения филе', measurement_unit='г'),\
Ingredient(name='кизил', measurement_unit='г'),\
Ingredient(name='килька', measurement_unit='г'),\
Ingredient(name='кимчи', measurement_unit='г'),\
Ingredient(name='кинза свежая', measurement_unit='г'),\
Ingredient(name='кинза сушеная', measurement_unit='г'),\
Ingredient(name='киноа', measurement_unit='г'),\
Ingredient(name='киноа молотая', measurement_unit='г'),\
Ingredient(name='кипяток', measurement_unit='мл'),\
Ingredient(name='кирш', measurement_unit='г'),\
Ingredient(name='кисель', measurement_unit='г'),\
Ingredient(name='кисель сухой', measurement_unit='г'),\
Ingredient(name='кисломолочный напиток Тан', measurement_unit='мл'),\
Ingredient(name='кишки', measurement_unit='г'),\
Ingredient(name='клейковина', measurement_unit='г'),\
Ingredient(name='клементины', measurement_unit='г'),\
Ingredient(name='кленовый сироп', measurement_unit='мл'),\
Ingredient(name='клубника', measurement_unit='г'),\
Ingredient(name='клубника в сиропе', measurement_unit='г'),\
Ingredient(name='клубника замороженная', measurement_unit='г'),\
Ingredient(name='клубника, протертая с сахаром', measurement_unit='г'),\
Ingredient(name='клубника сушеная', measurement_unit='г'),\
Ingredient(name='клубничное варенье', measurement_unit='г'),\
Ingredient(name='клубничное желе', measurement_unit='г'),\
Ingredient(name='клубничное пюре', measurement_unit='г'),\
Ingredient(name='клубничный джем', measurement_unit='г'),\
Ingredient(name='клубничный джем густой', measurement_unit='г'),\
Ingredient(name='клубничный компот', measurement_unit='мл'),\
Ingredient(name='клубничный ликер', measurement_unit='мл'),\
Ingredient(name='клубничный сироп', measurement_unit='мл'),\
Ingredient(name='клюква', measurement_unit='г'),\
Ingredient(name='клюква вяленая', measurement_unit='г'),\
Ingredient(name='клюква замороженная', measurement_unit='г'),\
Ingredient(name='клюква, протертая с сахаром', measurement_unit='г'),\
Ingredient(name='клюквенное варенье', measurement_unit='г'),\
Ingredient(name='клюквенный джем', measurement_unit='г'),\
Ingredient(name='клюквенный морс', measurement_unit='мл'),\
Ingredient(name='клюквенный сироп', measurement_unit='мл'),\
Ingredient(name='клюквенный соус', measurement_unit='г'),\
Ingredient(name='козлиная печень', measurement_unit='г'),\
Ingredient(name='козлятина молодая', measurement_unit='г'),\
Ingredient(name='кока-кола', measurement_unit='мл'),\
Ingredient(name='кокосовая вода', measurement_unit='мл'),\
Ingredient(name='кокосовая мука', measurement_unit='г'),\
Ingredient(name='кокосовая стружка', measurement_unit='г'),\
Ingredient(name='кокосовая стружка цветная', measurement_unit='г'),\
Ingredient(name='кокосовое масло', measurement_unit='мл'),\
Ingredient(name='кокосовое молоко', measurement_unit='мл'),\
Ingredient(name='кокосовые сливки', measurement_unit='мл'),\
Ingredient(name='кокосовый ликер', measurement_unit='мл'),\
Ingredient(name='кокосовый экстракт', measurement_unit='мл'),\
Ingredient(name='кокосы', measurement_unit='г'),\
Ingredient(name='кола', measurement_unit='мл'),\
Ingredient(name='колбаса', measurement_unit='г'),\
Ingredient(name='колбаса вареная', measurement_unit='г'),\
Ingredient(name='колбаса варено-копченая', measurement_unit='г'),\
Ingredient(name='колбаса копченая', measurement_unit='г'),\
Ingredient(name='колбаса кровяная', measurement_unit='г'),\
Ingredient(name='колбаса полукопченая', measurement_unit='г'),\
Ingredient(name='колбаса сырокопченая', measurement_unit='г'),\
Ingredient(name='колбаска свиная свежая (salsiccia)', measurement_unit='г'),\
Ingredient(name='колбаски', measurement_unit='г'),\
Ingredient(name='колбаски для жарки', measurement_unit='г'),\
Ingredient(name='колбаски домашние', measurement_unit='г'),\
Ingredient(name='колбаски охотничьи', measurement_unit='г'),\
Ingredient(name='колбаски сырокопченые', measurement_unit='г'),\
Ingredient(name='компот', measurement_unit='г'),\
Ingredient(name='конопляное масло', measurement_unit='мл'),\
Ingredient(name='конопля семена', measurement_unit='г'),\
Ingredient(name='конфеты', measurement_unit='г'),\
Ingredient(name='конфеты M&M’s', measurement_unit='г'),\
Ingredient(name='конфеты жевательные лакричные', measurement_unit='г'),\
Ingredient(name='конфеты Коровка', measurement_unit='г'),\
Ingredient(name='конфеты Трюфель', measurement_unit='г'),\
Ingredient(name='конфитюр', measurement_unit='г'),\
Ingredient(name='конфитюрка', measurement_unit='г'),\
Ingredient(name='коньяк', measurement_unit='мл'),\
Ingredient(name='копчености', measurement_unit='г'),\
Ingredient(name='коренья', measurement_unit='г'),\
Ingredient(name='кориандр', measurement_unit='г'),\
Ingredient(name='кориандр зелень', measurement_unit='г'),\
Ingredient(name='кориандр молотый', measurement_unit='г'),\
Ingredient(name='кориандр семена', measurement_unit='г'),\
Ingredient(name='коринка', measurement_unit='г'),\
Ingredient(name='корица', measurement_unit='г'),\
Ingredient(name='корица молотая', measurement_unit='г'),\
Ingredient(name='корнишоны', measurement_unit='г'),\
Ingredient(name='корнишоны маринованые', measurement_unit='г'),\
Ingredient(name='корюшка', measurement_unit='г'),\
Ingredient(name='корюшка горячего копчения', measurement_unit='г'),\
Ingredient(name='кости', measurement_unit='г'),\
Ingredient(name='кости мозговые', measurement_unit='г'),\
Ingredient(name='кость сахарная', measurement_unit='г'),\
Ingredient(name='кофе в зернах', measurement_unit='г'),\
Ingredient(name='кофе зеленый', measurement_unit='г'),\
Ingredient(name='кофейные зерна в шоколаде', measurement_unit='г'),\
Ingredient(name='кофейный ликер', measurement_unit='мл'),\
Ingredient(name='кофейный ликер Kahlua', measurement_unit='мл'),\
Ingredient(name='кофейный напиток', measurement_unit='мл'),\
Ingredient(name='кофейный сироп', measurement_unit='мл'),\
Ingredient(name='кофейный экстракт', measurement_unit='мл'),\
Ingredient(name='кофе молотый', measurement_unit='г'),\
Ingredient(name='кофе растворимый', measurement_unit='г'),\
Ingredient(name='кофе свежесваренный', measurement_unit='мл'),\
Ingredient(name='кофе черный', measurement_unit='мл'),\
Ingredient(name='кофе эспрессо', measurement_unit='мл'),\
Ingredient(name='крабовое мясо', measurement_unit='г'),\
Ingredient(name='крабовые палочки', measurement_unit='г'),\
Ingredient(name='краб снежный', measurement_unit='г'),\
Ingredient(name='крабы', measurement_unit='г'),\
Ingredient(name='крапива', measurement_unit='г'),\
Ingredient(name='краситель-гель пищевой', measurement_unit='г'),\
Ingredient(name='краситель пищевой', measurement_unit='г'),\
Ingredient(name='краситель пищевой вишневый', measurement_unit='г'),\
Ingredient(name='краситель пищевой желтый', measurement_unit='г'),\
Ingredient(name='краситель пищевой зеленый', measurement_unit='г'),\
Ingredient(name='краситель пищевой красный', measurement_unit='г'),\
Ingredient(name='краситель пищевой оранжевый', measurement_unit='г'),\
Ingredient(name='краситель пищевой фиолетовый', measurement_unit='г'),\
Ingredient(name='краситель пищевой черный', measurement_unit='г'),\
Ingredient(name='красная смородина', measurement_unit='г'),\
Ingredient(name='красная смородина, протертая с сахаром', measurement_unit='г'),\
Ingredient(name='красноперка', measurement_unit='г'),\
Ingredient(name='красносмородиновое варенье', measurement_unit='г'),\
Ingredient(name='красный винный соус', measurement_unit='г'),\
Ingredient(name='крахмал', measurement_unit='г'),\
Ingredient(name='креветки', measurement_unit='г'),\
Ingredient(name='креветки замороженные', measurement_unit='г'),\
Ingredient(name='креветки королевские', measurement_unit='г'),\
Ingredient(name='креветки очищенные', measurement_unit='г'),\
Ingredient(name='креветки очищенные в рассоле', measurement_unit='г'),\
Ingredient(name='креветки салатные', measurement_unit='г'),\
Ingredient(name='креветки сушеные', measurement_unit='г'),\
Ingredient(name='креветки тигровые', measurement_unit='г'),\
Ingredient(name='крекер', measurement_unit='г'),\
Ingredient(name='крекер соленый', measurement_unit='г'),\
Ingredient(name='крем заварной', measurement_unit='г'),\
Ingredient(name='крем заварной порошковый', measurement_unit='г'),\
Ingredient(name='крем-фреш', measurement_unit='г'),\
Ingredient(name='кресс-салат', measurement_unit='г'),\
Ingredient(name='кровь', measurement_unit='мл'),\
Ingredient(name='кролик', measurement_unit='г'),\
Ingredient(name='кролик тушка', measurement_unit='г'),\
Ingredient(name='кролик филе', measurement_unit='г'),\
Ingredient(name='кроличья печень', measurement_unit='г'),\
Ingredient(name='круассаны', measurement_unit='шт.'),\
Ingredient(name='крутоны мелкие', measurement_unit='г'),\
Ingredient(name='крыжовник', measurement_unit='г'),\
Ingredient(name='крыжовниковое варенье', measurement_unit='г'),\
Ingredient(name='кукуруза', measurement_unit='г'),\
Ingredient(name='кукуруза замороженная', measurement_unit='г'),\
Ingredient(name='кукуруза консервированная', measurement_unit='г'),\
Ingredient(name='кукуруза обжаренная кикос', measurement_unit='г'),\
Ingredient(name='кукурузная крупа', measurement_unit='г'),\
Ingredient(name='кукурузная мука', measurement_unit='г'),\
Ingredient(name='кукурузное масло', measurement_unit='г'),\
Ingredient(name='кукурузные лепешки', measurement_unit='шт.'),\
Ingredient(name='кукурузные палочки', measurement_unit='г'),\
Ingredient(name='кукурузные хлопья', measurement_unit='г'),\
Ingredient(name='кукурузные хлопья глазированные', measurement_unit='г'),\
Ingredient(name='кукурузные чипсы', measurement_unit='г'),\
Ingredient(name='кукурузный (золотой) сироп', measurement_unit='мл'),\
Ingredient(name='кукурузный крахмал', measurement_unit='г'),\
Ingredient(name='кумин', measurement_unit='г'),\
Ingredient(name='кумкваты', measurement_unit='г'),\
Ingredient(name='кунжут', measurement_unit='г'),\
Ingredient(name='кунжутная мука', measurement_unit='г'),\
Ingredient(name='кунжутная паста', measurement_unit='г'),\
Ingredient(name='кунжутное масло', measurement_unit='г'),\
Ingredient(name='кунжутные семечки', measurement_unit='г'),\
Ingredient(name='кунжут черный', measurement_unit='г'),\
Ingredient(name='купаты', measurement_unit='шт.'),\
Ingredient(name='курага', measurement_unit='г'),\
Ingredient(name='курдючное сало', measurement_unit='г'),\
Ingredient(name='курдючный жир', measurement_unit='г'),\
Ingredient(name='куриная ветчина', measurement_unit='г'),\
Ingredient(name='куриная кожа', measurement_unit='г'),\
Ingredient(name='куриная печень', measurement_unit='г'),\
Ingredient(name='куриное карпаччо', measurement_unit='г'),\
Ingredient(name='куриное филе', measurement_unit='г'),\
Ingredient(name='куриные бедра', measurement_unit='г'),\
Ingredient(name='куриные голени', measurement_unit='г'),\
Ingredient(name='куриные голени копченые', measurement_unit='шт.'),\
Ingredient(name='куриные грудки', measurement_unit='г'),\
Ingredient(name='куриные грудки вареные', measurement_unit='г'),\
Ingredient(name='куриные грудки копченые', measurement_unit='г'),\
Ingredient(name='куриные желудочки', measurement_unit='г'),\
Ingredient(name='куриные кости', measurement_unit='г'),\
Ingredient(name='куриные крылья', measurement_unit='г'),\
Ingredient(name='куриные окорочка', measurement_unit='г'),\
Ingredient(name='куриные окорочка копченые', measurement_unit='г'),\
Ingredient(name='куриные потрошки', measurement_unit='г'),\
Ingredient(name='куриные сердечки', measurement_unit='г'),\
Ingredient(name='куриный бульон', measurement_unit='мл'),\
Ingredient(name='куриный паштет', measurement_unit='г'),\
Ingredient(name='куриный суповой набор', measurement_unit='г'),\
Ingredient(name='куриный фарш', measurement_unit='г'),\
Ingredient(name='курица', measurement_unit='г'),\
Ingredient(name='курица вареная', measurement_unit='г'),\
Ingredient(name='курица для жарки', measurement_unit='г'),\
Ingredient(name='курица копченая', measurement_unit='г'),\
Ingredient(name='курица тушка', measurement_unit='г'),\
Ingredient(name='куркума', measurement_unit='г'),\
Ingredient(name='куропатки', measurement_unit='г'),\
Ingredient(name='кускус', measurement_unit='г'),\
Ingredient(name='кускус жемчужный', measurement_unit='стакан'),\
Ingredient(name='кэроб', measurement_unit='г'),\
Ingredient(name='лаванда', measurement_unit='г'),\
Ingredient(name='лаванда сушеная', measurement_unit='щепотка'),\
Ingredient(name='лавандовый краситель', measurement_unit='ч. л.'),\
Ingredient(name='лаваш', measurement_unit='г'),\
Ingredient(name='лаваш армянский', measurement_unit='г'),\
Ingredient(name='лаваш персидский круглый', measurement_unit='г'),\
Ingredient(name='лаваш тонкий', measurement_unit='г'),\
Ingredient(name='лавровые листья свежие', measurement_unit='шт.'),\
Ingredient(name='лавровый лист', measurement_unit='г'),\
Ingredient(name='лайм', measurement_unit='г'),\
Ingredient(name='лайм листья', measurement_unit='шт.'),\
Ingredient(name='лаймовая цедра', measurement_unit='г'),\
Ingredient(name='лаймовый сок', measurement_unit='мл'),\
Ingredient(name='лангустины', measurement_unit='шт.'),\
Ingredient(name='лапша', measurement_unit='г'),\
Ingredient(name='лапша для лагмана', measurement_unit='г'),\
Ingredient(name='лапша ширатаки', measurement_unit='г'),\
Ingredient(name='лапша яичная в гнездах', measurement_unit='г'),\
Ingredient(name='латук', measurement_unit='г'),\
Ingredient(name='легкие', measurement_unit='г'),\
Ingredient(name='лед', measurement_unit='г'),\
Ingredient(name='леди-фиш тушка', measurement_unit='г'),\
Ingredient(name='лемонграсс (лимонное сорго)', measurement_unit='г'),\
Ingredient(name='лен семена', measurement_unit='г'),\
Ingredient(name='лепешки', measurement_unit='г'),\
Ingredient(name='лепешки арабские', measurement_unit='шт.'),\
Ingredient(name='лесные орехи', measurement_unit='г'),\
Ingredient(name='лечо', measurement_unit='г'),\
Ingredient(name='ливер', measurement_unit='г'),\
Ingredient(name='ликер', measurement_unit='мл'),\
Ingredient(name='ликер Alchermes', measurement_unit='мл'),\
Ingredient(name='ликер Amaretto', measurement_unit='мл'),\
Ingredient(name='ликер Baileys', measurement_unit='мл'),\
Ingredient(name='ликер Cointreau', measurement_unit='мл'),\
Ingredient(name='ликер кремовый', measurement_unit='мл'),\
Ingredient(name='ликер сливочный', measurement_unit='мл'),\
Ingredient(name='лимонад', measurement_unit='мл'),\
Ingredient(name='лимонная кислота', measurement_unit='мл'),\
Ingredient(name='лимонная цедра', measurement_unit='г'),\
Ingredient(name='лимонник стебель', measurement_unit='г'),\
Ingredient(name='лимонник ягоды', measurement_unit='г'),\
Ingredient(name='лимонные корочки засахаренные', measurement_unit='г'),\
Ingredient(name='лимонные цукаты', measurement_unit='г'),\
Ingredient(name='лимонный сок', measurement_unit='мл'),\
Ingredient(name='лимонный уксус', measurement_unit='мл'),\
Ingredient(name='лимонный экстракт', measurement_unit='мл'),\
Ingredient(name='лимончелло', measurement_unit='г'),\
Ingredient(name='лимоны', measurement_unit='г'),\
Ingredient(name='лингвине', measurement_unit='шт.'),\
Ingredient(name='лисички', measurement_unit='г'),\
Ingredient(name='лисички сушеные', measurement_unit='г'),\
Ingredient(name='личи', measurement_unit='шт.'),\
Ingredient(name='личи компот', measurement_unit='мл'),\
Ingredient(name='лобстер', measurement_unit='г'),\
Ingredient(name='лонган', measurement_unit='г'),\
Ingredient(name='лонгконг', measurement_unit='шт.'),\
Ingredient(name='лососевые молоки', measurement_unit='г'),\
Ingredient(name='лососевый фарш', measurement_unit='г'),\
Ingredient(name='лосось', measurement_unit='г'),\
Ingredient(name='лосось горячего копчения', measurement_unit='г'),\
Ingredient(name='лосось копченый', measurement_unit='г'),\
Ingredient(name='лосось свежесоленый', measurement_unit='г'),\
Ingredient(name='лосось свежий', measurement_unit='г'),\
Ingredient(name='лосось свежий филе', measurement_unit='г'),\
Ingredient(name='лосось слабосоленый', measurement_unit='г'),\
Ingredient(name='лосось стейки', measurement_unit='г'),\
Ingredient(name='лосось филе', measurement_unit='г'),\
Ingredient(name='лосось филе на коже', measurement_unit='г'),\
Ingredient(name='лосось холодного копчения', measurement_unit='г'),\
Ingredient(name='лосятина', measurement_unit='г'),\
Ingredient(name='лук белый', measurement_unit='г'),\
Ingredient(name='лук зеленый', measurement_unit='г'),\
Ingredient(name='лук красный', measurement_unit='г'),\
Ingredient(name='лук маринованный', measurement_unit='г'),\
Ingredient(name='луковая шелуха', measurement_unit='г'),\
Ingredient(name='луковый порошок', measurement_unit='г'),\
Ingredient(name='лук-порей', measurement_unit='горсть'),\
Ingredient(name='лук-резанец', measurement_unit='г'),\
Ingredient(name='лук репчатый', measurement_unit='г'),\
Ingredient(name='лук репчатый мелкий', measurement_unit='г'),\
Ingredient(name='лук салатный', measurement_unit='г'),\
Ingredient(name='лук сушеный', measurement_unit='г'),\
Ingredient(name='лук-шалот', measurement_unit='г'),\
Ingredient(name='лук-шалот красный', measurement_unit='г'),\
Ingredient(name='льняная мука', measurement_unit='г'),\
Ingredient(name='льняное масло', measurement_unit='мл'),\
Ingredient(name='льняное семя', measurement_unit='г'),\
Ingredient(name='льняное семя молотое', measurement_unit='г'),\
Ingredient(name='любисток', measurement_unit='г'),\
Ingredient(name='маасдам', measurement_unit='г'),\
Ingredient(name='мадера', measurement_unit='г'),\
Ingredient(name='майонез', measurement_unit='г'),\
Ingredient(name='майонез домашний', measurement_unit='г'),\
Ingredient(name='майонез легкий', measurement_unit='г'),\
Ingredient(name='майонезный соус «Слобода» Постный', measurement_unit='г'),\
Ingredient(name='майонез оливковый', measurement_unit='г'),\
Ingredient(name='майонез «Слобода» Легкий', measurement_unit='г'),\
Ingredient(name='майонез «Слобода» На перепелиных яйцах', measurement_unit='г'),\
Ingredient(name='майонез «Слобода» Оливковый', measurement_unit='г'),\
Ingredient(name='майонез «Слобода» Провансаль', measurement_unit='г'),\
Ingredient(name='майонез «Слобода» С лимонным соком', measurement_unit='г'),\
Ingredient(name='майонез «Слобода» Сметанный', measurement_unit='г'),\
Ingredient(name='майоран', measurement_unit='г'),\
Ingredient(name='майоран свежий', measurement_unit='г'),\
Ingredient(name='майоран сушеный', measurement_unit='г'),\
Ingredient(name='мак', measurement_unit='г'),\
Ingredient(name='макаронные изделия', measurement_unit='г'),\
Ingredient(name='макаронные изделия мелкие', measurement_unit='г'),\
Ingredient(name='макароны', measurement_unit='г'),\
Ingredient(name='макароны-бабочки (farfalle)', measurement_unit='г'),\
Ingredient(name='макароны-бабочки (farfalle) мини', measurement_unit='г'),\
Ingredient(name='макароны баветте', measurement_unit='г'),\
Ingredient(name='макароны-бантики', measurement_unit='г'),\
Ingredient(name='макароны букатини', measurement_unit='г'),\
Ingredient(name='макароны джильи', measurement_unit='г'),\
Ingredient(name='макароны диталони', measurement_unit='г'),\
Ingredient(name='макароны-звездочки', measurement_unit='г'),\
Ingredient(name='макароны орзо', measurement_unit='г'),\
Ingredient(name='макароны-ракушки (conchiglie)', measurement_unit='г'),\
Ingredient(name='макароны-ракушки (conchiglie rigate)', measurement_unit='г'),\
Ingredient(name='макароны-ракушки крупные', measurement_unit='г'),\
Ingredient(name='макароны рисони', measurement_unit='г'),\
Ingredient(name='макароны-рожки (pipe rigate)', measurement_unit='г'),\
Ingredient(name='макароны-спиральки (fusilli)', measurement_unit='г'),\
Ingredient(name='макароны-ушки (orecchiette)', measurement_unit='г'),\
Ingredient(name='маккерончини', measurement_unit='г'),\
Ingredient(name='мак молотый', measurement_unit='г'),\
Ingredient(name='маковая масса', measurement_unit='г'),\
Ingredient(name='малина', measurement_unit='г'),\
Ingredient(name='малина замороженная', measurement_unit='г'),\
Ingredient(name='малина, протертая с сахаром', measurement_unit='г'),\
Ingredient(name='малина сушеная', measurement_unit='г'),\
Ingredient(name='малиновое варенье', measurement_unit='г'),\
Ingredient(name='малиновое желе', measurement_unit='г'),\
Ingredient(name='малиновое пюре', measurement_unit='г'),\
Ingredient(name='малиновый джем', measurement_unit='г'),\
Ingredient(name='малиновый крем', measurement_unit='г'),\
Ingredient(name='малиновый сироп', measurement_unit='мл'),\
Ingredient(name='малиновый соус', measurement_unit='г'),\
Ingredient(name='малиновый уксус', measurement_unit='мл'),\
Ingredient(name='малиновый чай', measurement_unit='г'),\
Ingredient(name='манго', measurement_unit='г'),\
Ingredient(name='манговый сироп', measurement_unit='мл'),\
Ingredient(name='манго консервированное', measurement_unit='г'),\
Ingredient(name='мангольд', measurement_unit='г'),\
Ingredient(name='мангустин', measurement_unit='г'),\
Ingredient(name='мандариновое пюре', measurement_unit='г'),\
Ingredient(name='мандариновые цукаты', measurement_unit='г'),\
Ingredient(name='мандариновый сок', measurement_unit='мл'),\
Ingredient(name='мандарины', measurement_unit='г'),\
Ingredient(name='мандарины в собственном соку', measurement_unit='г'),\
Ingredient(name='манная крупа', measurement_unit='г'),\
Ingredient(name='маракуйя', measurement_unit='г'),\
Ingredient(name='маргарин', measurement_unit='г'),\
Ingredient(name='маргарин сливочный', measurement_unit='г'),\
Ingredient(name='мармелад', measurement_unit='г'),\
Ingredient(name='мармелад бутербродный', measurement_unit='г'),\
Ingredient(name='марсала', measurement_unit='г'),\
Ingredient(name='мартини', measurement_unit='мл'),\
Ingredient(name='мартини красный', measurement_unit='мл'),\
Ingredient(name='марципан', measurement_unit='г'),\
Ingredient(name='марципан зеленый', measurement_unit='г'),\
Ingredient(name='марципан розовый', measurement_unit='г'),\
Ingredient(name='маршмеллоу', measurement_unit='г'),\
Ingredient(name='маршмеллоу крем', measurement_unit='г'),\
Ingredient(name='маршмеллоу мини', measurement_unit='г'),\
Ingredient(name='маскарпоне', measurement_unit='г'),\
Ingredient(name='маслины', measurement_unit='г'),\
Ingredient(name='маслины без косточек', measurement_unit='г'),\
Ingredient(name='масло авокадо', measurement_unit='мл'),\
Ingredient(name='масло виноградных косточек', measurement_unit='мл'),\
Ingredient(name='масло грецкого ореха', measurement_unit='мл'),\
Ingredient(name='масло для фритюра', measurement_unit='мл'),\
Ingredient(name='масло кедрового ореха', measurement_unit='мл'),\
Ingredient(name='маслята', measurement_unit='г'),\
Ingredient(name='мастика', measurement_unit='г'),\
Ingredient(name='мастика желатиновая', measurement_unit='г'),\
Ingredient(name='мастика шоколадная', measurement_unit='г'),\
Ingredient(name='матча', measurement_unit='г'),\
Ingredient(name='мафальдине', measurement_unit='г'),\
Ingredient(name='маца', measurement_unit='г'),\
Ingredient(name='мацони', measurement_unit='г'),\
Ingredient(name='маш', measurement_unit='г'),\
Ingredient(name='мед', measurement_unit='г'),\
Ingredient(name='мед акации', measurement_unit='г'),\
Ingredient(name='мед гречишный', measurement_unit='г'),\
Ingredient(name='мед жидкий', measurement_unit='г'),\
Ingredient(name='мед лавандовый', measurement_unit='г'),\
Ingredient(name='мелисса', measurement_unit='г'),\
Ingredient(name='меренги', measurement_unit='г'),\
Ingredient(name='мидии', measurement_unit='г'),\
Ingredient(name='мидии в раковинах', measurement_unit='г'),\
Ingredient(name='мидии в раковинах крупные черные', measurement_unit='г'),\
Ingredient(name='мидии в раковинах мелкие зеленые', measurement_unit='г'),\
Ingredient(name='мидии замороженные', measurement_unit='г'),\
Ingredient(name='мидии копченые в масле', measurement_unit='г'),\
Ingredient(name='микрозелень', measurement_unit='г'),\
Ingredient(name='миндаль', measurement_unit='г'),\
Ingredient(name='миндаль жареный', measurement_unit='г'),\
Ingredient(name='миндаль измельченный', measurement_unit='г'),\
Ingredient(name='миндальная масса', measurement_unit='г'),\
Ingredient(name='миндальная мука', measurement_unit='г'),\
Ingredient(name='миндальная паста', measurement_unit='г'),\
Ingredient(name='миндальная эссенция', measurement_unit='г'),\
Ingredient(name='миндальное масло', measurement_unit='г'),\
Ingredient(name='миндальное молоко', measurement_unit='мл'),\
Ingredient(name='миндальное печенье', measurement_unit='г'),\
Ingredient(name='миндальное пралине', measurement_unit='г'),\
Ingredient(name='миндальные лепестки', measurement_unit='г'),\
Ingredient(name='миндальный ликер', measurement_unit='мл'),\
Ingredient(name='миндальный сироп', measurement_unit='мл'),\
Ingredient(name='миндальный экстракт', measurement_unit='мл'),\
Ingredient(name='миндаль очищенный', measurement_unit='г'),\
Ingredient(name='миндаль рубленый', measurement_unit='г'),\
Ingredient(name='мини-кукуруза', measurement_unit='г'),\
Ingredient(name='минога', measurement_unit='г'),\
Ingredient(name='минтай', measurement_unit='г'),\
Ingredient(name='минтай печень', measurement_unit='г'),\
Ingredient(name='минтай филе', measurement_unit='г'),\
Ingredient(name='мисо-паста', measurement_unit='г'),\
Ingredient(name='мисо-суп', measurement_unit='мл'),\
Ingredient(name='можжевельник ягоды', measurement_unit='г'),\
Ingredient(name='мойва', measurement_unit='г'),\
Ingredient(name='моллюски', measurement_unit='г'),\
Ingredient(name='молоко', measurement_unit='мл'),\
Ingredient(name='молоко 0,5%', measurement_unit='мл'),\
Ingredient(name='молоко 1,5%', measurement_unit='мл'),\
Ingredient(name='молоко 2,5%', measurement_unit='мл'),\
Ingredient(name='молоко 3,2%', measurement_unit='мл'),\
Ingredient(name='молоко 3,6%', measurement_unit='мл'),\
Ingredient(name='молоко 4%', measurement_unit='мл'),\
Ingredient(name='молоко 6%', measurement_unit='мл'),\
Ingredient(name='молоко козье', measurement_unit='мл'),\
Ingredient(name='молоко концентрированное', measurement_unit='мл'),\
Ingredient(name='молоко рисовое', measurement_unit='мл'),\
Ingredient(name='молоко сгущенное', measurement_unit='г'),\
Ingredient(name='молоко сгущенное вареное', measurement_unit='г'),\
Ingredient(name='молоко сгущенное с какао', measurement_unit='г'),\
Ingredient(name='молоко сухое', measurement_unit='г'),\
Ingredient(name='молоко сухое обезжиренное', measurement_unit='г'),\
Ingredient(name='молоко топленое', measurement_unit='мл'),\
Ingredient(name='молочная смесь', measurement_unit='г'),\
Ingredient(name='молочные продукты', measurement_unit='г'),\
Ingredient(name='морепродукты', measurement_unit='г'),\
Ingredient(name='морковное пюре', measurement_unit='г'),\
Ingredient(name='морковь', measurement_unit='г'),\
Ingredient(name='морковь вареная', measurement_unit='г'),\
Ingredient(name='морковь крупная', measurement_unit='г'),\
Ingredient(name='морковь молодая', measurement_unit='г'),\
Ingredient(name='морковь по-корейски', measurement_unit='г'),\
Ingredient(name='морковь тертая', measurement_unit='г'),\
Ingredient(name='мороженое', measurement_unit='г'),\
Ingredient(name='мороженое ванильное', measurement_unit='г'),\
Ingredient(name='мороженое клубничное', measurement_unit='г'),\
Ingredient(name='мороженое лимонное', measurement_unit='г'),\
Ingredient(name='мороженое малиновое', measurement_unit='г'),\
Ingredient(name='мороженое пломбир', measurement_unit='г'),\
Ingredient(name='мороженое шоколадное', measurement_unit='г'),\
Ingredient(name='морошка', measurement_unit='г'),\
Ingredient(name='морские гребешки', measurement_unit='г'),\
Ingredient(name='морской коктейль', measurement_unit='г'),\
Ingredient(name='морской коктейль в масле', measurement_unit='г'),\
Ingredient(name='морской коктейль замороженный', measurement_unit='г'),\
Ingredient(name='морской черт', measurement_unit='г'),\
Ingredient(name='морской язык', measurement_unit='г'),\
Ingredient(name='морской язык филе', measurement_unit='г'),\
Ingredient(name='мортаделла', measurement_unit='г'),\
Ingredient(name='моцарелла', measurement_unit='г'),\
Ingredient(name='моцарелла для запекания', measurement_unit='г'),\
Ingredient(name='моцарелла для пиццы', measurement_unit='г'),\
Ingredient(name='моцарелла мини', measurement_unit='г'),\
Ingredient(name='моцарелла с травами', measurement_unit='г'),\
Ingredient(name='моцарелла шарик большой', measurement_unit='г'),\
Ingredient(name='мука', measurement_unit='г'),\
Ingredient(name='мука 1 сорт', measurement_unit='г'),\
Ingredient(name='мука 2 сорт', measurement_unit='г'),\
Ingredient(name='мука «Аладушкин»', measurement_unit='г'),\
Ingredient(name='мука грубого помола', measurement_unit='г'),\
Ingredient(name='мука для темпуры', measurement_unit='г'),\
Ingredient(name='мука из пророщенной пшеницы', measurement_unit='г'),\
Ingredient(name='мука манитоба', measurement_unit='г'),\
Ingredient(name='мука самоподнимающаяся', measurement_unit='г'),\
Ingredient(name='мука с отрубями', measurement_unit='г'),\
Ingredient(name='мука с семечками', measurement_unit='г'),\
Ingredient(name='мука хлебопекарная', measurement_unit='г'),\
Ingredient(name='мука цельнозерновая', measurement_unit='г'),\
Ingredient(name='мускат белый', measurement_unit='мл'),\
Ingredient(name='мускатное вино', measurement_unit='мл'),\
Ingredient(name='мускатный орех', measurement_unit='г'),\
Ingredient(name='мускатный орех молотый', measurement_unit='г'),\
Ingredient(name='мюсли', measurement_unit='г'),\
Ingredient(name='мягкий творог', measurement_unit='г'),\
Ingredient(name='мясной бульон', measurement_unit='мл'),\
Ingredient(name='мясной фарш', measurement_unit='г'),\
Ingredient(name='мясо', measurement_unit='г'),\
Ingredient(name='мясо дикого кабана', measurement_unit='г'),\
Ingredient(name='мясо криля', measurement_unit='г'),\
Ingredient(name='мясо на косточке', measurement_unit='г'),\
Ingredient(name='мята', measurement_unit='г'),\
Ingredient(name='мята сушеная', measurement_unit='г'),\
Ingredient(name='мятный сироп', measurement_unit='мл'),\
Ingredient(name='мятный шнапс', measurement_unit='мл'),\
Ingredient(name='нардек', measurement_unit='г'),\
Ingredient(name='нектарины', measurement_unit='г'),\
Ingredient(name='нога ягненка без кости', measurement_unit='г'),\
Ingredient(name='нори', measurement_unit='г'),\
Ingredient(name='нуга', measurement_unit='г'),\
Ingredient(name='нуга с орехами', measurement_unit='г'),\
Ingredient(name='нут', measurement_unit='г'),\
Ingredient(name='нутелла', measurement_unit='г'),\
Ingredient(name='нут консервированный', measurement_unit='г'),\
Ingredient(name='нутовая мука', measurement_unit='г'),\
Ingredient(name='облепиха', measurement_unit='г'),\
Ingredient(name='облепиха замороженная', measurement_unit='г'),\
Ingredient(name='облепиховый сироп', measurement_unit='мл'),\
Ingredient(name='овощи', measurement_unit='г'),\
Ingredient(name='овощная смесь', measurement_unit='г'),\
Ingredient(name='овощная смесь замороженная', measurement_unit='г'),\
Ingredient(name='овощная смесь замороженная для wok', measurement_unit='г'),\
Ingredient(name='овощная смесь по-китайски', measurement_unit='г'),\
Ingredient(name='овощной бульон', measurement_unit='мл'),\
Ingredient(name='овсяная мука', measurement_unit='г'),\
Ingredient(name='овсяное молоко', measurement_unit='мл'),\
Ingredient(name='овсяное печенье', measurement_unit='г'),\
Ingredient(name='овсяное толокно', measurement_unit='г'),\
Ingredient(name='овсяные зерна', measurement_unit='г'),\
Ingredient(name='овсяные отруби', measurement_unit='г'),\
Ingredient(name='овсяные хлопья', measurement_unit='г'),\
Ingredient(name='овсяные хлопья быстрого приготовления', measurement_unit='г'),\
Ingredient(name='огуречный рассол', measurement_unit='мл'),\
Ingredient(name='огурцы', measurement_unit='г'),\
Ingredient(name='огурцы консервированные', measurement_unit='г'),\
Ingredient(name='огурцы малосольные', measurement_unit='г'),\
Ingredient(name='огурцы маринованные', measurement_unit='г'),\
Ingredient(name='огурцы свежие', measurement_unit='г'),\
Ingredient(name='огурцы соленые', measurement_unit='г'),\
Ingredient(name='одуванчики', measurement_unit='г'),\
Ingredient(name='окорок', measurement_unit='г'),\
Ingredient(name='окорок варено-копченый', measurement_unit='г'),\
Ingredient(name='окунь', measurement_unit='г'),\
Ingredient(name='окунь красный филе', measurement_unit='г'),\
Ingredient(name='окунь морской', measurement_unit='г'),\
Ingredient(name='окунь морской филе', measurement_unit='г'),\
Ingredient(name='окунь филе', measurement_unit='г'),\
Ingredient(name='оленина', measurement_unit='г'),\
Ingredient(name='оливки', measurement_unit='г'),\
Ingredient(name='оливки без косточек', measurement_unit='г'),\
Ingredient(name='оливки зеленые', measurement_unit='г'),\
Ingredient(name='оливки зеленые консервированные', measurement_unit='банка'),\
Ingredient(name='оливки каламата', measurement_unit='г'),\
Ingredient(name='оливки консервированные', measurement_unit='г'),\
Ingredient(name='оливки, фаршированные анчоусами', measurement_unit='г'),\
Ingredient(name='оливки черные', measurement_unit='г'),\
Ingredient(name='оливковая паста', measurement_unit='г'),\
Ingredient(name='оливковое масло', measurement_unit='г'),\
Ingredient(name='оливковое масло Extra Virgin', measurement_unit='г'),\
Ingredient(name='опунция плоды', measurement_unit='г'),\
Ingredient(name='опята', measurement_unit='г'),\
Ingredient(name='опята замороженные', measurement_unit='г'),\
Ingredient(name='опята маринованные', measurement_unit='г'),\
Ingredient(name='орегано', measurement_unit='г'),\
Ingredient(name='орегано свежий', measurement_unit='г'),\
Ingredient(name='орегано сушеный', measurement_unit='г'),\
Ingredient(name='орехи', measurement_unit='г'),\
Ingredient(name='орехи бразильские', measurement_unit='г'),\
Ingredient(name='орехи макадамия', measurement_unit='г'),\
Ingredient(name='орехи пекан', measurement_unit='г'),\
Ingredient(name='орехи пинии', measurement_unit='г'),\
Ingredient(name='ореховая крошка', measurement_unit='г'),\
Ingredient(name='ореховая паста', measurement_unit='г'),\
Ingredient(name='ореховое масло', measurement_unit='мл'),\
Ingredient(name='ореховый ликер', measurement_unit='мл'),\
Ingredient(name='ореховый соус', measurement_unit='г'),\
Ingredient(name='осетр', measurement_unit='г'),\
Ingredient(name='осетрина холодного копчения', measurement_unit='г'),\
Ingredient(name='осьминог', measurement_unit='г'),\
Ingredient(name='осьминоги консервированные', measurement_unit='г'),\
Ingredient(name='осьминоги мини', measurement_unit='г'),\
Ingredient(name='отруби', measurement_unit='г'),\
Ingredient(name='ошеек', measurement_unit='г'),\
Ingredient(name='пагр', measurement_unit='г'),\
Ingredient(name='пажитник', measurement_unit='г'),\
Ingredient(name='пажитник семена', measurement_unit='г'),\
Ingredient(name='палтус', measurement_unit='г'),\
Ingredient(name='пальмовое масло', measurement_unit='мл'),\
Ingredient(name='пангасиус', measurement_unit='г'),\
Ingredient(name='панеттоне', measurement_unit='г'),\
Ingredient(name='Панифарин', measurement_unit='г'),\
Ingredient(name='панчетта', measurement_unit='г'),\
Ingredient(name='папайя', measurement_unit='г'),\
Ingredient(name='папайя консервированная в собственном соку', measurement_unit='г'),\
Ingredient(name='папоротник', measurement_unit='г'),\
Ingredient(name='папоротник соленый', measurement_unit='г'),\
Ingredient(name='паппарделле', measurement_unit='г'),\
Ingredient(name='паприка', measurement_unit='г'),\
Ingredient(name='паприка копченая', measurement_unit='г'),\
Ingredient(name='паприка красная', measurement_unit='г'),\
Ingredient(name='паприка красная молотая', measurement_unit='г'),\
Ingredient(name='паприка острая копченая', measurement_unit='г'),\
Ingredient(name='паприка сладкая', measurement_unit='г'),\
Ingredient(name='паприка сладкая копченая', measurement_unit='г'),\
Ingredient(name='паприка сладкая хлопьями', measurement_unit='г'),\
Ingredient(name='пармезан', measurement_unit='г'),\
Ingredient(name='паста', measurement_unit='г'),\
Ingredient(name='паста веджимайт', measurement_unit='г'),\
Ingredient(name='паста тахини', measurement_unit='г'),\
Ingredient(name='паста хариса', measurement_unit='г'),\
Ingredient(name='пастернак', measurement_unit='г'),\
Ingredient(name='пастила', measurement_unit='г'),\
Ingredient(name='пастила виноградная', measurement_unit='г'),\
Ingredient(name='патиссоны', measurement_unit='г'),\
Ingredient(name='патока', measurement_unit='г'),\
Ingredient(name='патока крахмальная', measurement_unit='г'),\
Ingredient(name='патока черная (меласса)', measurement_unit='г'),\
Ingredient(name='пахта', measurement_unit='г'),\
Ingredient(name='паштет', measurement_unit='г'),\
Ingredient(name='пекарский порошок', measurement_unit='г'),\
Ingredient(name='пекорино', measurement_unit='г'),\
Ingredient(name='пектин', measurement_unit='г'),\
Ingredient(name='пеленгас', measurement_unit='г'),\
Ingredient(name='пельмени', measurement_unit='г'),\
Ingredient(name='пенне', measurement_unit='г'),\
Ingredient(name='пенне ригате', measurement_unit='г'),\
Ingredient(name='пеперончино', measurement_unit='г'),\
Ingredient(name='пеперончино молотый', measurement_unit='г'),\
Ingredient(name='переводной лист для шоколада', measurement_unit='шт.'),\
Ingredient(name='перепелки', measurement_unit='г'),\
Ingredient(name='перец', measurement_unit='г'),\
Ingredient(name='перец белый', measurement_unit='г'),\
Ingredient(name='перец белый горошком', measurement_unit='г'),\
Ingredient(name='перец белый молотый', measurement_unit='г'),\
Ingredient(name='перец белый свежемолотый', measurement_unit='ч. л.'),\
Ingredient(name='перец болгарский', measurement_unit='г'),\
Ingredient(name='перец болгарский желтый', measurement_unit='г'),\
Ingredient(name='перец болгарский зеленый', measurement_unit='г'),\
Ingredient(name='перец болгарский красный', measurement_unit='г'),\
Ingredient(name='перец горошком', measurement_unit='г'),\
Ingredient(name='перец горошком смесь', measurement_unit='г'),\
Ingredient(name='перец душистый', measurement_unit='г'),\
Ingredient(name='перец душистый горошком', measurement_unit='г'),\
Ingredient(name='перец душистый молотый', measurement_unit='г'),\
Ingredient(name='перец испанский острый', measurement_unit='г'),\
Ingredient(name='перец кайенский', measurement_unit='г'),\
Ingredient(name='перец кайенский красный', measurement_unit='г'),\
Ingredient(name='перец кайенский молотый', measurement_unit='г'),\
Ingredient(name='перец красный', measurement_unit='г'),\
Ingredient(name='перец красный горошком', measurement_unit='г'),\
Ingredient(name='перец красный жгучий', measurement_unit='г'),\
Ingredient(name='перец красный молотый', measurement_unit='г'),\
Ingredient(name='перец красный острый', measurement_unit='г'),\
Ingredient(name='перец красный острый молотый', measurement_unit='г'),\
Ingredient(name='перец красный хлопьями', measurement_unit='г'),\
Ingredient(name='перец лимонный', measurement_unit='г'),\
Ingredient(name='перец маринованный', measurement_unit='г'),\
Ingredient(name='перец острый', measurement_unit='г'),\
Ingredient(name='перец острый зеленый', measurement_unit='г'),\
Ingredient(name='перец острый молотый', measurement_unit='г'),\
Ingredient(name='перец падрон', measurement_unit='г'),\
Ingredient(name='перец пеперони', measurement_unit='г'),\
Ingredient(name='перец пеперони красный', measurement_unit='г'),\
Ingredient(name='перец розовый горошком', measurement_unit='г'),\
Ingredient(name='перец свежемолотый смесь', measurement_unit='г'),\
Ingredient(name='перец сенегальский', measurement_unit='г'),\
Ingredient(name='перец сладкий', measurement_unit='г'),\
Ingredient(name='перец сладкий желтый', measurement_unit='г'),\
Ingredient(name='перец сладкий зеленый', measurement_unit='г'),\
Ingredient(name='перец сладкий красный', measurement_unit='г'),\
Ingredient(name='перец сладкий красный маринованный', measurement_unit='г'),\
Ingredient(name='перец сладкий красный молотый', measurement_unit='г'),\
Ingredient(name='перец сладкий оранжевый', measurement_unit='г'),\
Ingredient(name='перец сладкий сушеный', measurement_unit='г'),\
Ingredient(name='перец сычуаньский', measurement_unit='г'),\
Ingredient(name='перец халапеньо', measurement_unit='г'),\
Ingredient(name='перец халапеньо маринованный', measurement_unit='г'),\
Ingredient(name='перец черный', measurement_unit='г'),\
Ingredient(name='перец черный горошком', measurement_unit='г'),\
Ingredient(name='перец черный молотый', measurement_unit='г'),\
Ingredient(name='перец черный свежемолотый', measurement_unit='г'),\
Ingredient(name='перец чили', measurement_unit='г'),\
Ingredient(name='перец чили зеленый', measurement_unit='г'),\
Ingredient(name='перец чили красный', measurement_unit='г'),\
Ingredient(name='перец чили маринованный', measurement_unit='г'),\
Ingredient(name='перец чили молотый', measurement_unit='г'),\
Ingredient(name='перец чили сухой', measurement_unit='г'),\
Ingredient(name='перец чили хлопьями', measurement_unit='г'),\
Ingredient(name='перец ямайский', measurement_unit='г'),\
Ingredient(name='перловая крупа', measurement_unit='г'),\
Ingredient(name='перловая мука', measurement_unit='г'),\
Ingredient(name='персики', measurement_unit='г'),\
Ingredient(name='персики консервированные', measurement_unit='г'),\
Ingredient(name='персики сушеные', measurement_unit='горсть'),\
Ingredient(name='персиковое пюре', measurement_unit='г'),\
Ingredient(name='персиковый джем', measurement_unit='г'),\
Ingredient(name='персиковый мармелад', measurement_unit='г'),\
Ingredient(name='персиковый сироп', measurement_unit='мл'),\
Ingredient(name='персиковый сок', measurement_unit='мл'),\
Ingredient(name='перцовая паста', measurement_unit='г'),\
Ingredient(name='петрушка', measurement_unit='г'),\
Ingredient(name='петрушка зелень', measurement_unit='г'),\
Ingredient(name='петрушка итальянская', measurement_unit='г'),\
Ingredient(name='петрушка корень', measurement_unit='г'),\
Ingredient(name='петрушка рубленая', measurement_unit='г'),\
Ingredient(name='петрушка сушеная', measurement_unit='г'),\
Ingredient(name='печень', measurement_unit='г'),\
Ingredient(name='печенье', measurement_unit='г'),\
Ingredient(name='печенье Oreo', measurement_unit='г'),\
Ingredient(name='печенье Амаретти', measurement_unit='г'),\
Ingredient(name='печенье бисквитное', measurement_unit='г'),\
Ingredient(name='печенье галетное', measurement_unit='шт.'),\
Ingredient(name='печенье «Дамские пальчики»', measurement_unit='г'),\
Ingredient(name='печенье песочное', measurement_unit='г'),\
Ingredient(name='печенье рассыпчатое', measurement_unit='г'),\
Ingredient(name='печенье Савоярди', measurement_unit='г'),\
Ingredient(name='печенье сахарное', measurement_unit='г'),\
Ingredient(name='печенье сладкое', measurement_unit='г'),\
Ingredient(name='печенье сухое', measurement_unit='г'),\
Ingredient(name='печенье шоколадное', measurement_unit='г'),\
Ingredient(name='печенье Юбилейное молочное', measurement_unit='г'),\
Ingredient(name='пиво', measurement_unit='мл'),\
Ingredient(name='пиво имбирное', measurement_unit='мл'),\
Ingredient(name='пиво нефильтрованное', measurement_unit='мл'),\
Ingredient(name='пиво светлое', measurement_unit='мл'),\
Ingredient(name='пиво темное', measurement_unit='мл'),\
Ingredient(name='пикша', measurement_unit='шт.'),\
Ingredient(name='питы', measurement_unit='г'),\
Ingredient(name='повидло', measurement_unit='г'),\
Ingredient(name='подсолнечное масло', measurement_unit='мл'),\
Ingredient(name='подсолнечные семечки', measurement_unit='г'),\
Ingredient(name='полба', measurement_unit='г'),\
Ingredient(name='полба недозрелая', measurement_unit='г'),\
Ingredient(name='полента', measurement_unit='г'),\
Ingredient(name='полента быстрого приготовления', measurement_unit='г'),\
Ingredient(name='помело', measurement_unit='г'),\
Ingredient(name='помидоры', measurement_unit='г'),\
Ingredient(name='помидоры бурые', measurement_unit='г'),\
Ingredient(name='помидоры вяленые', measurement_unit='мл'),\
Ingredient(name='помидоры вяленые в масле', measurement_unit='г'),\
Ingredient(name='помидоры желтые', measurement_unit='г'),\
Ingredient(name='помидоры зеленые', measurement_unit='г'),\
Ingredient(name='помидоры консервированные', measurement_unit='г'),\
Ingredient(name='помидоры консервированные в собственном соку', measurement_unit='г'),\
Ingredient(name='помидоры консервированные в собственном соку с базиликом', measurement_unit='г'),\
Ingredient(name='помидоры протертые пассата', measurement_unit='г'),\
Ingredient(name='помидоры соленые', measurement_unit='г'),\
Ingredient(name='помидоры сушеные хлопьями', measurement_unit='г'),\
Ingredient(name='помидоры черри', measurement_unit='г'),\
Ingredient(name='помидоры черри желтые', measurement_unit='г'),\
Ingredient(name='попкорн', measurement_unit='г'),\
Ingredient(name='поросенок', measurement_unit='г'),\
Ingredient(name='портвейн', measurement_unit='мл'),\
Ingredient(name='портобелло', measurement_unit='г'),\
Ingredient(name='портулак', measurement_unit='г'),\
Ingredient(name='посыпка кондитерская', measurement_unit='г'),\
Ingredient(name='почки', measurement_unit='г'),\
Ingredient(name='приправа 4 перца', measurement_unit='г'),\
Ingredient(name='приправа 5 специй (five spice)', measurement_unit='ч. л.'),\
Ingredient(name='приправа для баранины', measurement_unit='ст. л.'),\
Ingredient(name='приправа для картофеля', measurement_unit='г'),\
Ingredient(name='приправа для курицы', measurement_unit='г'),\
Ingredient(name='приправа для макарон', measurement_unit='г'),\
Ingredient(name='приправа для маринования свинины', measurement_unit='г'),\
Ingredient(name='приправа для морепродуктов', measurement_unit='г'),\
Ingredient(name='приправа для мяса', measurement_unit='г'),\
Ingredient(name='приправа для паэльи', measurement_unit='г'),\
Ingredient(name='приправа для пиццы', measurement_unit='г'),\
Ingredient(name='приправа для плова', measurement_unit='г'),\
Ingredient(name='приправа для птицы', measurement_unit='г'),\
Ingredient(name='приправа для рыбы', measurement_unit='г'),\
Ingredient(name='приправа для салатов', measurement_unit='г'),\
Ingredient(name='приправа заатар', measurement_unit='г'),\
Ingredient(name='приправа креольская', measurement_unit='г'),\
Ingredient(name='приправа с сушеными грибами', measurement_unit='г'),\
Ingredient(name='приправы', measurement_unit='г'),\
Ingredient(name='прованские травы', measurement_unit='г'),\
Ingredient(name='проволоне', measurement_unit='г'),\
Ingredient(name='просекко', measurement_unit='мл'),\
Ingredient(name='простокваша', measurement_unit='мл'),\
Ingredient(name='протеин сывороточный', measurement_unit='г'),\
Ingredient(name='прошутто', measurement_unit='г'),\
Ingredient(name='пряники', measurement_unit='г'),\
Ingredient(name='пряничные специи', measurement_unit='г'),\
Ingredient(name='пряности', measurement_unit='г'),\
Ingredient(name='псиллиум', measurement_unit='г'),\
Ingredient(name='птитим', measurement_unit='г'),\
Ingredient(name='пудинг', measurement_unit='г'),\
Ingredient(name='пудинг ванильный', measurement_unit='г'),\
Ingredient(name='пудинг ванильный инстант', measurement_unit='г'),\
Ingredient(name='пудинг карамельный', measurement_unit='г'),\
Ingredient(name='пшеница', measurement_unit='г'),\
Ingredient(name='пшеничная крупа', measurement_unit='г'),\
Ingredient(name='пшеничная мука', measurement_unit='г'),\
Ingredient(name='пшеничная мука цельнозерновая', measurement_unit='г'),\
Ingredient(name='пшеничные зародыши', measurement_unit='г'),\
Ingredient(name='пшеничные отруби', measurement_unit='г'),\
Ingredient(name='пшеничные ростки', measurement_unit='г'),\
Ingredient(name='пшеничные хлопья', measurement_unit='г'),\
Ingredient(name='пшенные хлопья', measurement_unit='г'),\
Ingredient(name='пшено', measurement_unit='г'),\
Ingredient(name='пыльца цветочная', measurement_unit='г'),\
Ingredient(name='пюре', measurement_unit='г'),\
Ingredient(name='радиккио', measurement_unit='шт.'),\
Ingredient(name='разрыхлитель', measurement_unit='г'),\
Ingredient(name='раки', measurement_unit='г'),\
Ingredient(name='раковые шейки', measurement_unit='г'),\
Ingredient(name='раковые шейки в рассоле', measurement_unit='г'),\
Ingredient(name='рамбутан', measurement_unit='г'),\
Ingredient(name='рапаны', measurement_unit='г'),\
Ingredient(name='рапсовое масло', measurement_unit='мл'),\
Ingredient(name='рассол', measurement_unit='мл'),\
Ingredient(name='рассол от каперсов', measurement_unit='мл'),\
Ingredient(name='рассол от оливок', measurement_unit='мл'),\
Ingredient(name='растительное масло', measurement_unit='мл'),\
Ingredient(name='растительное масло для жарки', measurement_unit='мл'),\
Ingredient(name='растительное масло нерафинированное', measurement_unit='мл'),\
Ingredient(name='растительное масло рафинированное', measurement_unit='мл'),\
Ingredient(name='растительное молоко', measurement_unit='мл'),\
Ingredient(name='ревень', measurement_unit='г'),\
Ingredient(name='реган', measurement_unit='веточка'),\
Ingredient(name='редис', measurement_unit='г'),\
Ingredient(name='редька', measurement_unit='г'),\
Ingredient(name='редька белая', measurement_unit='г'),\
Ingredient(name='редька зеленая', measurement_unit='г'),\
Ingredient(name='редька черная', measurement_unit='г'),\
Ingredient(name='репа', measurement_unit='г'),\
Ingredient(name='репа белая', measurement_unit='г'),\
Ingredient(name='ржаная закваска', measurement_unit='г'),\
Ingredient(name='ржаная закваска густая', measurement_unit='г'),\
Ingredient(name='ржаная мука', measurement_unit='г'),\
Ingredient(name='ржаные отруби', measurement_unit='г'),\
Ingredient(name='ригатони', measurement_unit='г'),\
Ingredient(name='рикотта', measurement_unit='г'),\
Ingredient(name='рикотта твердая', measurement_unit='г'),\
Ingredient(name='рис', measurement_unit='г'),\
Ingredient(name='рис арборио', measurement_unit='г'),\
Ingredient(name='рис басмати', measurement_unit='г'),\
Ingredient(name='рис бурый', measurement_unit='г'),\
Ingredient(name='рис бурый и дикий смесь', measurement_unit='г'),\
Ingredient(name='рис вареный', measurement_unit='г'),\
Ingredient(name='рис виола', measurement_unit='г'),\
Ingredient(name='рис девзира', measurement_unit='г'),\
Ingredient(name='рис дикий', measurement_unit='г'),\
Ingredient(name='рис дикий и золотистый смесь', measurement_unit='г'),\
Ingredient(name='рис длиннозерный', measurement_unit='г'),\
Ingredient(name='рис длиннозерный золотистый', measurement_unit='г'),\
Ingredient(name='рис для плова', measurement_unit='г'),\
Ingredient(name='рис для пудинга', measurement_unit='г'),\
Ingredient(name='рис для ризотто', measurement_unit='г'),\
Ingredient(name='рис для суши', measurement_unit='г'),\
Ingredient(name='рис жасминовый', measurement_unit='г'),\
Ingredient(name='рис золотистый', measurement_unit='г'),\
Ingredient(name='рис индика', measurement_unit='г'),\
Ingredient(name='рис италика', measurement_unit='г'),\
Ingredient(name='рис карнароли', measurement_unit='г'),\
Ingredient(name='рис красный', measurement_unit='г'),\
Ingredient(name='рис круглозерный', measurement_unit='г'),\
Ingredient(name='рис кубанский', measurement_unit='г'),\
Ingredient(name='рисовая бумага', measurement_unit='г'),\
Ingredient(name='рисовая лапша', measurement_unit='г'),\
Ingredient(name='рисовая мука', measurement_unit='г'),\
Ingredient(name='рисовое вино', measurement_unit='мл'),\
Ingredient(name='рисовые хлопья', measurement_unit='г'),\
Ingredient(name='рисовые шарики воздушные', measurement_unit='г'),\
Ingredient(name='рисовый крахмал', measurement_unit='г'),\
Ingredient(name='рисовый уксус', measurement_unit='мл'),\
Ingredient(name='рис пропаренный', measurement_unit='г'),\
Ingredient(name='рис пропаренный и дикий смесь', measurement_unit='г'),\
Ingredient(name='рис японика', measurement_unit='г'),\
Ingredient(name='рожь', measurement_unit='г'),\
Ingredient(name='розмарин', measurement_unit='г'),\
Ingredient(name='розмарин сушеный', measurement_unit='г'),\
Ingredient(name='розовая вода', measurement_unit='мл'),\
Ingredient(name='розовые бутоны сушеные', measurement_unit='г'),\
Ingredient(name='розовые лепестки', measurement_unit='г'),\
Ingredient(name='розы', measurement_unit='г'),\
Ingredient(name='рокфор', measurement_unit='г'),\
Ingredient(name='ром', measurement_unit='мл'),\
Ingredient(name='ромашка сушеная', measurement_unit='г'),\
Ingredient(name='ромовый экстракт', measurement_unit='ч. л.'),\
Ingredient(name='ром темный', measurement_unit='мл'),\
Ingredient(name='ростбиф', measurement_unit='г'),\
Ingredient(name='рукола', measurement_unit='г'),\
Ingredient(name='рулька', measurement_unit='г'),\
Ingredient(name='рыба', measurement_unit='г'),\
Ingredient(name='рыба белая', measurement_unit='г'),\
Ingredient(name='рыба белая филе', measurement_unit='г'),\
Ingredient(name='рыба консервированная', measurement_unit='г'),\
Ingredient(name='рыба копченая', measurement_unit='г'),\
Ingredient(name='рыба копченая филе', measurement_unit='г'),\
Ingredient(name='рыба красная', measurement_unit='г'),\
Ingredient(name='рыба красная соленая', measurement_unit='г'),\
Ingredient(name='рыба красная филе', measurement_unit='г'),\
Ingredient(name='рыба-меч', measurement_unit='г'),\
Ingredient(name='рыба морская', measurement_unit='г'),\
Ingredient(name='рыба солнечник филе', measurement_unit='г'),\
Ingredient(name='рыба-соль', measurement_unit='г'),\
Ingredient(name='рыбное филе', measurement_unit='г'),\
Ingredient(name='рыбные консервы', measurement_unit='г'),\
Ingredient(name='рыбные кости', measurement_unit='г'),\
Ingredient(name='рыбные обрезки, головы, плавники', measurement_unit='г'),\
Ingredient(name='рыбный бульон', measurement_unit='г'),\
Ingredient(name='рыбный соус', measurement_unit='г'),\
Ingredient(name='рыбный соус Nam Pla', measurement_unit='г'),\
Ingredient(name='рыбный соус тайский', measurement_unit='г'),\
Ingredient(name='рыбный фарш', measurement_unit='г'),\
Ingredient(name='рябина черноплодная', measurement_unit='г'),\
Ingredient(name='рябчик', measurement_unit='г'),\
Ingredient(name='ряженка', measurement_unit='мл'),\
Ingredient(name='ряженка 4%', measurement_unit='мл'),\
Ingredient(name='сайда', measurement_unit='г'),\
Ingredient(name='сайда филе', measurement_unit='г'),\
Ingredient(name='сайра', measurement_unit='г'),\
Ingredient(name='сайра консервированная', measurement_unit='г'),\
Ingredient(name='саке', measurement_unit='мл'),\
Ingredient(name='салака', measurement_unit='г'),\
Ingredient(name='салат', measurement_unit='г'),\
Ingredient(name='салат айсберг', measurement_unit='г'),\
Ingredient(name='салат китайский', measurement_unit='г'),\
Ingredient(name='салат корн', measurement_unit='г'),\
Ingredient(name='салат кочанный', measurement_unit='г'),\
Ingredient(name='салат кучерявый', measurement_unit='г'),\
Ingredient(name='салат листовой', measurement_unit='г'),\
Ingredient(name='салатный микс', measurement_unit='г'),\
Ingredient(name='салат романо', measurement_unit='г'),\
Ingredient(name='салат фриссе', measurement_unit='г'),\
Ingredient(name='сало', measurement_unit='г'),\
Ingredient(name='сало копченое в перце', measurement_unit='г'),\
Ingredient(name='сало копченое с мясными прослойками', measurement_unit='г'),\
Ingredient(name='сало с мясными прослойками', measurement_unit='г'),\
Ingredient(name='сальник', measurement_unit='г'),\
Ingredient(name='сальса', measurement_unit='г'),\
Ingredient(name='сальса верде', measurement_unit='ч. л.'),\
Ingredient(name='салями', measurement_unit='г'),\
Ingredient(name='салями итальянская', measurement_unit='г'),\
Ingredient(name='сардельки', measurement_unit='г'),\
Ingredient(name='сардельки копченые', measurement_unit='г'),\
Ingredient(name='сардинки маленькие', measurement_unit='г'),\
Ingredient(name='сардины', measurement_unit='г'),\
Ingredient(name='сардины в масле', measurement_unit='г'),\
Ingredient(name='сахар', measurement_unit='г'),\
Ingredient(name='сахар ванильный', measurement_unit='г'),\
Ingredient(name='сахар демерара', measurement_unit='г'),\
Ingredient(name='сахар жемчужный', measurement_unit='г'),\
Ingredient(name='сахар коричневый', measurement_unit='г'),\
Ingredient(name='сахар коричневый крупнокристаллический', measurement_unit='г'),\
Ingredient(name='сахар мусковадо', measurement_unit='г'),\
Ingredient(name='сахарная пудра', measurement_unit='г'),\
Ingredient(name='сахарная пудра апельсиновая', measurement_unit='г'),\
Ingredient(name='сахарная пудра ванильная', measurement_unit='г'),\
Ingredient(name='сахарные жемчужинки', measurement_unit='г'),\
Ingredient(name='сахарные кондитерские украшения', measurement_unit='г'),\
Ingredient(name='сахарный песок', measurement_unit='г'),\
Ingredient(name='сахарный песок крупный', measurement_unit='г'),\
Ingredient(name='сахарный песок мелкий', measurement_unit='г'),\
Ingredient(name='сахарный сироп', measurement_unit='г'),\
Ingredient(name='сахар пальмовый', measurement_unit='г'),\
Ingredient(name='сахар-рафинад', measurement_unit='г'),\
Ingredient(name='сахар-рафинад с корицей', measurement_unit='г'),\
Ingredient(name='сахар тростниковый', measurement_unit='г'),\
Ingredient(name='сванская соль', measurement_unit='г'),\
Ingredient(name='свекла', measurement_unit='г'),\
Ingredient(name='свекла вареная', measurement_unit='г'),\
Ingredient(name='свекольная ботва', measurement_unit='г'),\
Ingredient(name='свекольные листья', measurement_unit='г'),\
Ingredient(name='свиная вырезка', measurement_unit='г'),\
Ingredient(name='свиная голова', measurement_unit='г'),\
Ingredient(name='свиная грудинка', measurement_unit='г'),\
Ingredient(name='свиная корейка', measurement_unit='г'),\
Ingredient(name='свиная корейка копченая', measurement_unit='г'),\
Ingredient(name='свиная корейка на кости', measurement_unit='г'),\
Ingredient(name='свиная лопатка варено-копченая', measurement_unit='г'),\
Ingredient(name='свиная мякоть', measurement_unit='г'),\
Ingredient(name='свиная пашина', measurement_unit='г'),\
Ingredient(name='свиная печень', measurement_unit='г'),\
Ingredient(name='свиная рулька', measurement_unit='г'),\
Ingredient(name='свиная рулька варено-копченая', measurement_unit='г'),\
Ingredient(name='свиная рулька копченая', measurement_unit='г'),\
Ingredient(name='свиная шейка', measurement_unit='кусок'),\
Ingredient(name='свинина', measurement_unit='г'),\
Ingredient(name='свинина вареная', measurement_unit='г'),\
Ingredient(name='свинина нежирная', measurement_unit='г'),\
Ingredient(name='свинина с жирком', measurement_unit='г'),\
Ingredient(name='свиное сердце', measurement_unit='г'),\
Ingredient(name='свиное филе', measurement_unit='г'),\
Ingredient(name='свиной подчеревок', measurement_unit='г'),\
Ingredient(name='свиной фарш', measurement_unit='г'),\
Ingredient(name='свиной язык', measurement_unit='г'),\
Ingredient(name='свиные котлеты на косточке', measurement_unit='шт.'),\
Ingredient(name='свиные легкие', measurement_unit='г'),\
Ingredient(name='свиные ножки', measurement_unit='г'),\
Ingredient(name='свиные отбивные', measurement_unit='г'),\
Ingredient(name='свиные отбивные на косточке', measurement_unit='г'),\
Ingredient(name='свиные ребра', measurement_unit='г'),\
Ingredient(name='свиные уши', measurement_unit='шт.'),\
Ingredient(name='свиные щечки', measurement_unit='шт.'),\
Ingredient(name='свити', measurement_unit='г'),\
Ingredient(name='сельдерей', measurement_unit='г'),\
Ingredient(name='сельдерей зелень', measurement_unit='г'),\
Ingredient(name='сельдерей корень', measurement_unit='г'),\
Ingredient(name='сельдерей корень сушеный', measurement_unit='г'),\
Ingredient(name='сельдерейная соль', measurement_unit='г'),\
Ingredient(name='сельдерей семена', measurement_unit='г'),\
Ingredient(name='сельдерей стебли', measurement_unit='г'),\
Ingredient(name='сельдь', measurement_unit='г'),\
Ingredient(name='сельдь слабосоленая', measurement_unit='г'),\
Ingredient(name='сельдь соленая', measurement_unit='шт.'),\
Ingredient(name='сельдь филе', measurement_unit='г'),\
Ingredient(name='семга', measurement_unit='г'),\
Ingredient(name='семга копченая', measurement_unit='г'),\
Ingredient(name='семга свежая', measurement_unit='г'),\
Ingredient(name='семга соленая', measurement_unit='г'),\
Ingredient(name='семга филе на коже', measurement_unit='г'),\
Ingredient(name='семечки', measurement_unit='г'),\
Ingredient(name='семечки смесь', measurement_unit='г'),\
Ingredient(name='семолина', measurement_unit='г'),\
Ingredient(name='сервелат варено-копченый', measurement_unit='г'),\
Ingredient(name='сибас', measurement_unit='г'),\
Ingredient(name='сидр', measurement_unit='мл'),\
Ingredient(name='сироп', measurement_unit='мл'),\
Ingredient(name='сироп от консервированных груш', measurement_unit='мл'),\
Ingredient(name='сироп от консервированных персиков', measurement_unit='мл'),\
Ingredient(name='сироп топинамбура', measurement_unit='мл'),\
Ingredient(name='скумбрия', measurement_unit='г'),\
Ingredient(name='скумбрия свежая', measurement_unit='г'),\
Ingredient(name='скумбрия филе', measurement_unit='г'),\
Ingredient(name='скумбрия холодного копчения', measurement_unit='г'),\
Ingredient(name='сливки', measurement_unit='мл'),\
Ingredient(name='сливки 10-20%', measurement_unit='мл'),\
Ingredient(name='сливки 15%', measurement_unit='мл'),\
Ingredient(name='сливки 20%', measurement_unit='мл'),\
Ingredient(name='сливки 33-35%', measurement_unit='мл'),\
Ingredient(name='сливки жирные', measurement_unit='мл'),\
Ingredient(name='сливки кондитерские', measurement_unit='мл'),\
Ingredient(name='сливовая паста', measurement_unit='г'),\
Ingredient(name='сливовое варенье', measurement_unit='г'),\
Ingredient(name='сливовое вино', measurement_unit='мл'),\
Ingredient(name='сливовый джем', measurement_unit='г'),\
Ingredient(name='сливовый ликер', measurement_unit='мл'),\
Ingredient(name='сливовый соус', measurement_unit='г'),\
Ingredient(name='сливочное масло', measurement_unit='г'),\
Ingredient(name='сливы', measurement_unit='г'),\
Ingredient(name='сливы замороженные', measurement_unit='г'),\
Ingredient(name='смалец', measurement_unit='г'),\
Ingredient(name='смесь для кекса', measurement_unit='г'),\
Ingredient(name='смесь для оладий', measurement_unit='г'),\
Ingredient(name='смесь для хлеба 8 злаков', measurement_unit='г'),\
Ingredient(name='сметана', measurement_unit='г'),\
Ingredient(name='сметана 10%', measurement_unit='г'),\
Ingredient(name='сметана 15%', measurement_unit='г'),\
Ingredient(name='сметана 18%', measurement_unit='г'),\
Ingredient(name='сметана 20%', measurement_unit='г'),\
Ingredient(name='сметана 25%', measurement_unit='г'),\
Ingredient(name='сметана 30%', measurement_unit='г'),\
Ingredient(name='сметана 35%', measurement_unit='г'),\
Ingredient(name='сметана жирная', measurement_unit='г'),\
Ingredient(name='сметана нежирная', measurement_unit='г'),\
Ingredient(name='сметана некислая', measurement_unit='г'),\
Ingredient(name='смородина сушеная', measurement_unit='г'),\
Ingredient(name='смородиновые листья', measurement_unit='г'),\
Ingredient(name='сморчки сухие', measurement_unit='г'),\
Ingredient(name='снежок', measurement_unit='мл'),\
Ingredient(name='сныть', measurement_unit='г'),\
Ingredient(name='сода', measurement_unit='г'),\
Ingredient(name='соевая мука', measurement_unit='г'),\
Ingredient(name='соевое масло', measurement_unit='г'),\
Ingredient(name='соевое молоко', measurement_unit='мл'),\
Ingredient(name='соевые ростки', measurement_unit='г'),\
Ingredient(name='соевый соус', measurement_unit='г'),\
Ingredient(name='сок', measurement_unit='мл'),\
Ingredient(name='сок из красных апельсинов', measurement_unit='мл'),\
Ingredient(name='сок мультивитаминный', measurement_unit='мл'),\
Ingredient(name='сок юзу', measurement_unit='мл'),\
Ingredient(name='солод', measurement_unit='г'),\
Ingredient(name='солод жидкий', measurement_unit='мл'),\
Ingredient(name='солодовый экстракт', measurement_unit='г'),\
Ingredient(name='солод темный', measurement_unit='г'),\
Ingredient(name='соломка', measurement_unit='г'),\
Ingredient(name='соль', measurement_unit='г'),\
Ingredient(name='соль гималайская', measurement_unit='г'),\
Ingredient(name='соль крупного помола', measurement_unit='г'),\
Ingredient(name='соль морская', measurement_unit='г'),\
Ingredient(name='сом филе', measurement_unit='г'),\
Ingredient(name='сосиски', measurement_unit='г'),\
Ingredient(name='сосиски из куриного фарша', measurement_unit='г'),\
Ingredient(name='сосиски копченые', measurement_unit='г'),\
Ingredient(name='соус', measurement_unit='г'),\
Ingredient(name='соус black bean', measurement_unit='г'),\
Ingredient(name='соус sambal oelek', measurement_unit='г'),\
Ingredient(name='соус барбекю', measurement_unit='г'),\
Ingredient(name='соус краснодарский', measurement_unit='г'),\
Ingredient(name='соус красный острый', measurement_unit='г'),\
Ingredient(name='соус мирин', measurement_unit='г'),\
Ingredient(name='соус наршараб', measurement_unit='г'),\
Ingredient(name='соус острый', measurement_unit='г'),\
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
Ingredient(name='шоколадные горошины', measurement_unit='г'),\
Ingredient(name='шоколадные капли', measurement_unit='г'),\
Ingredient(name='шоколадные капли белые', measurement_unit='г'),\
Ingredient(name='шоколадные конфеты', measurement_unit='г'),\
Ingredient(name='шоколадные хлопья', measurement_unit='г'),\
Ingredient(name='шоколадные шарики из готовых завтраков', measurement_unit='г'),\
Ingredient(name='шоколадный ликер', measurement_unit='мл'),\
Ingredient(name='шоколадный сироп', measurement_unit='мл'),\
Ingredient(name='шоколадный соус', measurement_unit='г'),\
Ingredient(name='шоколад полусладкий', measurement_unit='г'),\
Ingredient(name='шоколад с орехами', measurement_unit='г'),\
Ingredient(name='шоколад черный горький', measurement_unit='г'),\
Ingredient(name='шоколад черный горький 70%', measurement_unit='г'),\
Ingredient(name='шоколад черный горький 75%', measurement_unit='ч. л.'),\
Ingredient(name='шоколад черный горький 85%', measurement_unit='г'),\
Ingredient(name='шортенинг', measurement_unit='г'),\
Ingredient(name='шпик', measurement_unit='г'),\
Ingredient(name='шпик копченый', measurement_unit='г'),\
Ingredient(name='шпинат', measurement_unit='г'),\
Ingredient(name='шпинат замороженный', measurement_unit='г'),\
Ingredient(name='шпинат молодой', measurement_unit='г'),\
Ingredient(name='шпинат свежий', measurement_unit='г'),\
Ingredient(name='шпроты', measurement_unit='г'),\
Ingredient(name='шпроты в масле', measurement_unit='г'),\
Ingredient(name='шрот', measurement_unit='г'),\
Ingredient(name='щавель замороженный', measurement_unit='г'),\
Ingredient(name='щавель свежий', measurement_unit='г'),\
Ingredient(name='щука', measurement_unit='г'),\
Ingredient(name='щука филе', measurement_unit='г'),\
Ingredient(name='эгг-ног', measurement_unit='г'),\
Ingredient(name='эдам', measurement_unit='г'),\
Ingredient(name='эль', measurement_unit='мл'),\
Ingredient(name='эмменталь', measurement_unit='г'),\
Ingredient(name='эскалоп', measurement_unit='г'),\
Ingredient(name='эстрагон', measurement_unit='г'),\
Ingredient(name='эстрагон сушеный', measurement_unit='г'),\
Ingredient(name='яблоки', measurement_unit='г'),\
Ingredient(name='яблоки антоновка', measurement_unit='г'),\
Ingredient(name='яблоки гала', measurement_unit='г'),\
Ingredient(name='яблоки голден', measurement_unit='г'),\
Ingredient(name='яблоки гренни смит', measurement_unit='г'),\
Ingredient(name='яблоки зеленые', measurement_unit='г'),\
Ingredient(name='яблоки красные', measurement_unit='г'),\
Ingredient(name='яблоки моченые', measurement_unit='г'),\
Ingredient(name='яблоки нетвердых сортов', measurement_unit='г'),\
Ingredient(name='яблоки сладкие', measurement_unit='г'),\
Ingredient(name='яблоки сушеные', measurement_unit='г'),\
Ingredient(name='яблочная эссенция', measurement_unit='г'),\
Ingredient(name='яблочное варенье', measurement_unit='г'),\
Ingredient(name='яблочное повидло', measurement_unit='г'),\
Ingredient(name='яблочное пюре', measurement_unit='г'),\
Ingredient(name='яблочные чипсы', measurement_unit='г'),\
Ingredient(name='яблочный джем', measurement_unit='г'),\
Ingredient(name='яблочный сироп', measurement_unit='мл'),\
Ingredient(name='яблочный сок', measurement_unit='мл'),\
Ingredient(name='яблочный соус', measurement_unit='г'),\
Ingredient(name='яблочный уксус', measurement_unit='мл'),\
Ingredient(name='ягнятина', measurement_unit='г'),\
Ingredient(name='ягнятина кострец', measurement_unit='г'),\
Ingredient(name='ягнятина фарш', measurement_unit='г'),\
Ingredient(name='ягнячьи отбивные на косточке', measurement_unit='г'),\
Ingredient(name='ягнячья голень нарубленная', measurement_unit='г'),\
Ingredient(name='ягнячья корейка', measurement_unit='г'),\
Ingredient(name='ягодное варенье', measurement_unit='г'),\
Ingredient(name='ягодное желе', measurement_unit='г'),\
Ingredient(name='ягодный сироп', measurement_unit='мл'),\
Ingredient(name='ягодный сок', measurement_unit='мл'),\
Ingredient(name='ягодный соус кислый', measurement_unit='г'),\
Ingredient(name='ягоды', measurement_unit='г'),\
Ingredient(name='ягоды вяленые', measurement_unit='г'),\
Ingredient(name='ягоды замороженные', measurement_unit='г'),\
Ingredient(name='ягоды лесные', measurement_unit='г'),\
Ingredient(name='ягоды лесные замороженные', measurement_unit='г'),\
Ingredient(name='яичные белки', measurement_unit='г'),\
Ingredient(name='яичные желтки', measurement_unit='г'),\
Ingredient(name='яичные желтки вареные', measurement_unit='шт.'),\
Ingredient(name='яичные желтки крупные', measurement_unit='г'),\
Ingredient(name='яичный меланж', measurement_unit='г'),\
Ingredient(name='яичный порошок', measurement_unit='г'),\
Ingredient(name='яйца куриные', measurement_unit='г'),\
Ingredient(name='яйца куриные крупные', measurement_unit='г'),\
Ingredient(name='яйца перепелиные', measurement_unit='г'),\
Ingredient(name='японская крошка панко', measurement_unit='г'),\
Ingredient(name='ячменные хлопья', measurement_unit='г'),\
Ingredient(name='ячмень', measurement_unit='г'),\
Ingredient(name='ячневая крупа', measurement_unit='г'),\
])"