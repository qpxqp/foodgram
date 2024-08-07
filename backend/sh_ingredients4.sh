python manage.py shell -c "from recipies.models import Ingredient; Ingredient.objects.bulk_create([ \
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
])"