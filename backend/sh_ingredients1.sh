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
Ingredient(name='буррата', measurement_unit='г'),\
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
])"