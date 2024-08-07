python manage.py shell -c "from recipies.models import Ingredient; Ingredient.objects.bulk_create([ \
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
Ingredient(name='панифарин', measurement_unit='г'),\
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
])"