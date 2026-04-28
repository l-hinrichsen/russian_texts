<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
  
    <xsl:variable name="territories" as="map(xs:string, xs:string)">
    <xsl:map>
    <xsl:map-entry key="'СССР'" select="'The Union of Soviet Socialist Republics (abbv. USSR) was a socialist state that
        spanned across Eastern Europe, the Caucasus, and Central Asia. Founded after the Russian
        Civil War, its first leader would be Vladimir Lenin, after which was followed by Joseph
        Stalin. The country would dissolve after 1991 following the opening of its markets.'"/>

    <xsl:map-entry key="'Закавказье'" select="'The Caucasus is a region between the border of Eastern Europe and Western
        Asia. Encompassing the Caucasus Mountains, some modern countries in the region include
        Georgia, Armenia, and Azerbaijan. Some parts of the Caucasus were the first to adopt
        Christianity as its official religion.'"/>

    <xsl:map-entry key="'Средней_Азии'" select="'Central Asia is a geographic region that includes modern day countries
        such as Kazakhstan, Uzbekistan, Turkmenistan, Kyrgyzstan, and Tajikistan. Including a large
        portion of steppe land, much of Central Asias history is tied to nomadism.'"/>

    <xsl:map-entry key="'Урарту'" select="'Urartu was a kingdom that existed in modern day Turkey, Armenia, and
        Azerbaijan. Frequently at odds with Assyria, it existed from the 9th to 6th centuries BCE.'"/>

    <xsl:map-entry key="'Грузия'" select="'Georgia is a country in the Caucasus that borders the Black Sea, Turkey,
        Russia, and Armenia. Once a republic in the USSR, Georgia has an expansive history
        encompassing thousands of years. Its capital city is Tbilisi, and it is the birthplace of
        Joseph Stalin.'"/>

    <xsl:map-entry key="'Армения'" select="'Armenia is a country in the Caucasus that borders Turkey, Georgia,
        Azerbaijan, and Iran. The Kingdom of Armenia was the first ever empire to accept
        Christianity as the state religion. Armenia would be the victim of a genocidal campaign
        carried out by the Ottoman Empire in the 1910s.'"/>

    <xsl:map-entry key="'Сибири'" select="'Siberia is a region that is now part of Russia. Import cities in Siberia
        include Omsk, Novosibirsk, Tomsk, Irkutsk, and Vladivostok, and important geographical
        markers include Lake Baikal, the Ural Mountains, and the Ob River. Historically, many
        prisoners of the Russian Empire and Soviet Union were sent to this region.'"/>

    <xsl:map-entry key="'степях'" select="'The steppes are a geographic region that spans from Ukraine to Mongolia.
        Associated with nomadism, the horse comes from this biome, and important states such as the
        Mongol Empire would arise here.'"/>

    <xsl:map-entry key="'Греции'" select="'In this textbook, Greece can refer to the Ancient Greek city states or the
        modern day nation state of Greece. Both lie in the Mediterranean Sea, and are composed of
        multiple islands. On occasion, the textbook refers to the Byzantine Empire as Greece.'"/>

    <xsl:map-entry key="'Византией'" select="'The Byzantine Empire was an extremely important kingdom that controlled
        various territories in the Mediterranean from the 5th to 15th centuries., but always had
        control over the city of Constantinople (modern day Istanbul). An ally of the Kievan Rus
        from the 10th century onwards, they would aid in the kingdoms conversion to Christianity.'"/>

    <xsl:map-entry key="'Скандинавии'" select="'Scandinavia is a region in Europe that includes countries such as
        Sweden, Denmark, Norway, and Finland. The region is important in Slavic history as the
        ruling dynasty of Kievan Rus originates from here.'"/>

    <xsl:map-entry key="'Киевское_княжество'" select="'The Principality of Kiev was an administrative district that was
        a part of the Kievan Rus, housing the city of Kiev. Come the 12th centurys political
        fragmentation of the Rus, the area lost much of the power it held centuries prior.'"/>

    <xsl:map-entry key="'Киевской_Русью'" select="'The Kievan Rus was an empire ruled over by the Rurikid dynasty
        composed predominantly of Slavic speaking peoples, with Kiev as its administrative center.
        Adopting Christianity by the late 10th and suffering political disunity by the 12th century,
        the Kievan Rus would eventually be overtaken by the Mongol Empire by the 1240s.'"/>

    <xsl:map-entry key="'хазарское_царство'" select="'The Khazar Khaganate was the kingdom of the Khazars from the 7th
        to 10th century. Stretching across modern day Ukraine, Russia, and the Caucasus, they were
        absorbed into the Kievan Rus in 969.'"/>

    <xsl:map-entry key="'Польшу'" select="'Poland is a Slavic country located in Central Europe, bordering Germany,
        Belarus, Ukraine, Czechia, Slovakia, and Lithuania. From the Polish-Lithuanian Commonwealth
        to the Iron Curatian, Polish and Russian history has been intertwined for centuries.
        Important cities in Poland include Warsaw, Krakow, and Gdansk.'"/>

    <xsl:map-entry key="'России'" select="'Russia is a predominantly Slavic country, stretching from Eastern Europe to
        Eastern Europe. The dominant power in the USSR, the two most important cities in Russia
        include Moscow and St. Petersburg. Most of this textbook pertains to information surrounding
        Russian history.'"/>

    <xsl:map-entry key="'Галицко-Волынское_княжество'" select="'The kingdom of Galicia-Volhynia was a kingdom that
        emerged from the dissolution of the Kievan Rus. Its territory includes parts of modern day
        Poland, Lithuania, Belarus, and western Ukraine.'"/>

    <xsl:map-entry key="'Ростово-Суздальское'" select="'Rostov-Suzdal was a principality that emerged from the
        dissolution of the Kievan Rus. It would later found the Principality of Vladimir-Suzdal.'"/>

    <xsl:map-entry key="'Новгородское_княжества'" select="'The Principality of Novgorod was a kingdom that emerged from
        the dissolution of the Kievan Rus. One of the most prolific, it includes the city of
        Novgorod.'"/>

    <xsl:map-entry key="'Владимиро-Суздальское'" select="'The Principality of Vladimir-Suzdal was a prolific Rus formed
        from Rostov-Suzdal Principality after Andrei Bogolyubsky moved the capital to Vladimir. The
        principality would be absorbed by Muscovy in the 14th century.'"/>

    <xsl:map-entry key="'Монгольская_Народная_Республика'" select="'The Mongolian Peoples Republic was a socialist
        state in modern day Mongolia. After gaining independence from China, the Soviet Union would
        set up a socialist government in the country, effectively treating it as a satellite state.'"/>

    <xsl:map-entry key="'Золотую_Орду'" select="'The Golden Horde was a Mongol successor state that controlled territory
        along the Black and Caspian Sea. While they did extract taxes from the Rus principalities,
        they did not control kingdoms like Muscovy directly. Important cities include Bulgar, Sarai,
        Kaffa, and Azov.'"/>

    <xsl:map-entry key="'Московскому_княжеству'" select="'Muscovy was one of the leading Russian principalities
        following the Mongol Invasions. Initially known for collecting taxes for the Mongol Empire,
        Muscovy would slowly absorb other Russian kingdoms in the north of Russia over the 13th and
        14th centuries.'"/>

    <xsl:map-entry key="'Литовское_государство'" select="'The Duchy of Lithuania was a kingdom that existed from the
        13th to 18th centuries, encompassing territory from Belarus, Lithuania, Ukraine, Latvia, and
        Russia. However, they would join with Poland to form the Polish-Lithuanian Commonwealth.'"/>

    <xsl:map-entry key="'Литвы_с_Польшей'" select="'The Polish Lithuanian Commonwealth was a joint kingdom between the
        Duchy of Lithuania and Kingdom of Poland from the 16th to 18th centuries, forming one of the
        biggest contingent European empires in history. While some references to the Commonwealth
        are outside the date ranges, it is still important to highlight the historical diplomacy
        between the two kingdoms.'"/>

    <xsl:map-entry key="'Казахстана'" select="'Kazakhstan is the largest country in Central Asia, sharing a border with
        Russia, Uzbekistan, Turkmenistan, Kyrgyzstan, China, and the Caspian Sea. Much of the land
        of Kazakhstan is steppe and many of the people have traditionally been nomadic, and
        important cities include Almaty and Astana.'"/>

    <xsl:map-entry key="'Хорезма'" select="'Khwarazm was a kingdom in Central Asia formed around the Aral Sea. A
        powerful oasis empire in the Middle Ages, the kingdom was captured by the Russian Empire in
        the late 19th century.'"/>

    <xsl:map-entry key="'Крым'" select="'Crimea is a peninsula located in the north of the Black Sea. Home to the
        Crimean Tatars, the region has traditionally been known as an important trading location and
        gateway between sedentary and nomadic societies. It was the subject of the Crimean War
        between the Russian and Ottoman Empires.'"/>

    <xsl:map-entry key="'Сибирское_царство'" select="'The Siberian Khanate was an empire formed in Siberia after the
        dissolution of the Golden Horde.'"/>

    <xsl:map-entry key="'Франции'" select="'France is a country in Western Europe that borders Germany, Belgium, Italy,
        Spain, Switzerland, and Luxembourg. France has a historically complicated relationship with
        Russia, having been the subject of both many wars (such as the 1812 war) and many alliances
        (such as WWI).'"/>

    <xsl:map-entry key="'Украине'" select="'Ukraine is a country in Eastern Europe that borders Russia, Belarus, Poland,
        Romania, Moldova, Slovakia, and the Black Sea. Important geographic locations include Crimea
        and the Dnieper River, with important cities including Kiev, Odessa, and Kharkiv.'"/>

    <xsl:map-entry key="'Азербайджана'" select="'Azerbaijan is a country in the Caucasus that borders Armenia, Georgia,
        Russia, Iran, and the Caspian Sea. Once a part of Iran, Azerbaijan was absorbed by the
        Russian Empire in the 19th century. The most important city in Azerbaijan is Baku.'"/>

    <xsl:map-entry key="'Ирана'" select="'Iran is a country located in the Middle East, bordering countries such as
        Azerbaijan, Afghanistan, Turkey, and Turkmenistan. Iranian culture has deep history in
        Russia, as the Russian language contains many Persian loan words and Russian officials in
        Central Asia were tasked with speaking Persian, the elite language of many kingdoms.'"/>

    <xsl:map-entry key="'Турция'" select="'Turkey is a country that is situated between Europe and the Middle East,
        taking up most of the territory of the Anatolian Peninsula. Typically when this book
        mentions Turkey, they are describing the Ottoman Empire, of which Turkey emerged from.
        Important cities include Istanbul (Constantinople).'"/>

    <xsl:map-entry key="'Англия'" select="'England is part of the United Kingdom, although this book is almost always in
        reference to the United Kingdom. Russia would be in constant contact with the UK, as they
        were both some of the largest empires by land mass in the world. Important cities include
        London.'"/>

    <xsl:map-entry key="'Дагестан'" select="'Dagestan is now a province in the Russian Caucasus that borders Georgia,
        Azerbaijan, and the Caspian Sea. The province has and is known for its ethnic diversity.'"/>

    <xsl:map-entry key="'Пруссии'" select="'Prussia was a German kingdom that preceded the unification of Germany and
        the subsequent German Empire in 1871.'"/>

    <xsl:map-entry key="'Австрии'" select="'Austria is a country in Central Europe, bordering countries such as Germany,
        Hungary, Italy, and Czechia. Important cities include Vienna.'"/>

    <xsl:map-entry key="'Германии'" select="'Germany is a country in northern Europe, bordering countries such as
        France, Poland, Czechia, and Austria. German and Russian history has a long and complicated
        relationship, as many wars have been fought between the two territories from Alexander
        Nevsky to WWII.'"/>

    <xsl:map-entry key="'Литвы'" select="'Lithuania is a country in the Baltics, bordering Belarus, Poland, Latvia,
        Russia, and the Baltic Sea. The Russian Empire would gain Lithuanian territory following the
        partition of the Polish Lithuanian Commonwealth, and although they would gain independence
        in WWI, the Soviet Union would reabsorb them after WWII.'"/>

    <xsl:map-entry key="'Белоруссии'" select="'Belarus is a country in eastern Europe, bordering Russia, Ukraine,
        Lithuania, and Latvia. Mostly forested, Belarus was important in the early days of the
        Bolshevik party, and key cities include Minsk.'"/>

    <xsl:map-entry key="'Киргизию'" select="'Kyrgyzstan is a country in Central Asia that borders . Once prolific on the
        Silk Road and part of the Mongol Empire, the lands of Kyrgyzstan would be absorbed into the
        Russian Empire in the 19th century. Important cities include Bishkek.'"/>

    <xsl:map-entry key="'хивинского_хана'" select="'The Khanate of Khiva was a kingdom located south of the Aral Sea in
        modern day western Uzbekistan and north Turkmenistan. The khanate was put under protectorate
        status by the Russian Empire in the 19th century.'"/>

    <xsl:map-entry key="'Кокандское_ханство'" select="'The Khanate of Kokand was a Central Asian kingdom that controlled
        territory in modern day Kyrgyzstan, Tajikistan, Uzbekistan, and Kazakhstan. Cities under its
        control include Bishkek, Tashkent, and Almaty, and the kingdom was absorbed into the Russian
        Empire in the 19th century.'"/>

    <xsl:map-entry key="'Туркмении'" select="'Turkmenistan is a country located in Central Asia, bordering Iran,
        Afghanistan, Uzbekistan, Kazakhstan, and the Caspian Sea. Important cities include Ashgabat.'"/>

    <xsl:map-entry key="'Балканах'" select="'The Balkans are a region in the south of Europe, containing countries such
        as Bulgaria, Serbia, Greece, etc. Many different Slavic cultures reside in the Balkans, and
        the region has been historically important as it is connected to the Mediterranean and Black
        seas.'"/>

    <xsl:map-entry key="'Румыния'" select="'Romania is a country located in the southeast of Europe, bordering Ukraine,
        Serbia, Moldova, Bulgaria, and Hungary. Romania is important to Russian history as the
        Soviets would occupy and capture Moldova from Romania during WWII. Important cities include
        Bucharest'"/>

    <xsl:map-entry key="'Япония'" select="'Japan is an island country located in East Asia, near countries such as
        China, Korea, and Russia. Rising as an imperial power in the 19th century, Russia and Japan
        would have conflicts over territory.'"/>

    <xsl:map-entry key="'Маньчжурию'" select="'Manchuria is a region in the north of China that borders Russia,
        Mongolia, and North Korea. In the beginning of the 20th century, Russia and Japan fought for
        control over the region, as Russia wanted to construct a railway through Manchuria known as
        the Trans-Siberian Railroad.'"/>

    <xsl:map-entry key="'Сахалина'" select="'Sakhalin is a large Russian island located north of Japan. In the 19th and
        20th century, the ownership of this island was disputed between Russia and Japan.'"/>

    <xsl:map-entry key="'Корее'" select="'Korea is two countries located in East Asia, being both North and South Korea.
        The region would fall under Japanese control in the 19th century, and North korea is
        important for the Soviet Union as they were a communist ally by the 1950s.'"/>

    <xsl:map-entry key="'Латвии'" select="'Latvia is a country in the Baltics, bordering Estonia, Lithuania, Belarus,
        Russia, and the Baltic Sea. Having gained independence from the Russian Empire after WWI,
        they would be reabsorbed by the Soviet Union during WWII.'"/>

    <xsl:map-entry key="'Эстонии'" select="'Estonia is a country in the Baltics, bordering Latvia, Russia, and the
        Baltic Sea. Having gained independence from the Russian Empire after WWI, they would be
        reabsorbed by the Soviet Union during WWII.'"/>

    <xsl:map-entry key="'Донбассе'" select="'The Donbas is a region in the east of modern day Ukraine, bordering Russia.
        The region was known for mining in the 19th century, as it was rich in coal. Important
        cities include Donetsk and Horlivka.'"/>

    <xsl:map-entry key="'Финляндии'" select="'Finland is a country in northeast Europe, bordering Russia, Sweden,
        Norway, and the Baltic Sea. Absorbed into the Russian Empire in the early 19th century,
        Finland would gain independence in 1917. Important cities include Helsinki.'"/>

    <xsl:map-entry key="'Китае'" select="'China is a country located in East Asia, and shares a border with Russia.
        Sharing a past of conquest by the Mongol Empire, Russia and China have a very intertwined
        history. Russia would fight for control of Manchuria in the 19th and 20th century, and the
        Soviet Union would supply Chinese communists with artillery and education.'"/>

    <xsl:map-entry key="'Швейцарию'" select="'Switzerland is a country located in western Europe, bordering France,
        Germany, Italy, and Austria. For a brief period of time, Lenin would live and write in
        Switzerland.'"/>

    <xsl:map-entry key="'Австро-Венгрия'" select="'Austria-Hungary was an empire that existed from the middle of the
        19th to the beginning of the 20th century, composed of territory from all of central,
        southern, and eastern Europe. Many Slavic people, such as Poles, Serbians, and Ukrainians
        lived within the empire.'"/>

    <xsl:map-entry key="'Болгария'" select="'Bulgaria is a country located in the south of Europe, bordering countries
        such as Serbia, Greece, Turkey, Romania, and the Black Sea. Bulgaria would be formed after a
        war between the Russian and Ottoman Empires, and after WWII would become a socialist state
        under Soviet influence.'"/>

    <xsl:map-entry key="'Соединённые_Штаты_Америки'" select="'The United States of America is a country in North
        America. In the 19th century, Russian liberals would compare the inhumanity of serfdom to
        slavery found within the US, and after WWII the Cold War would break out between the US and
        the USSR, with America serving as the bastion of capitalism.'"/>

    <xsl:map-entry key="'Сербию'" select="'Serbia is a country located in southern Europe, bordering countries such as
        Romania, Hungary, and Bulgaria.'"/>

    <xsl:map-entry key="'Италии'" select="'Italy is a country in Southern Europe, bordering countries such as France,
        Switzerland, and Austria. Italian architects have been a keystone in Russian architecture,
        with rumors of St. Basils Cathedral in Moscow having been constructed by Italians.'"/>
    </xsl:map>
    </xsl:variable>
    <!--    END OF TERRITORIES AND BEGINNING OF PLACES!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
    <xsl:variable name="place" as="map(xs:string, xs:string)">
    <xsl:map>
    <xsl:map-entry key="'Арарата'" select="'Mount Ararat is a mountain located in modern day Turkey. The mountain holds
        immense cultural significance in Armenian culture, as it is believed that this mountain is
        where Noahs Ark landed after the flood.'"/>

    <xsl:map-entry key="'Чёрного_моря'" select="'The Black Sea is a body of water situated between Europe and Asia. The sea
        has been historically important for trade by empires such as the Byzantines, Ottomans,
        Kievan Rus, and Russians.'"/>

    <xsl:map-entry key="'Балтийского_моря'" select="'The Baltic Sea is a body of water that borders Scandinavia, the
        Baltics, and Poland. Important for the Vikings and for Russian ports, notable cities include
        St Petersburg, Riga, Tallinn, Helsinki, and Stockholm.'"/>

    <xsl:map-entry key="'Дунаю'" select="'The Danube River is one of the most important rivers in all of Europe, flowing
        from modern day Germany into the Black Sea. Once a border between the Roman Empire and the
        rest of Europe, many kingdoms and countries laid claim to parts of this territory. Important
        cities on the river include Budapest, Belgrade, Vienna, and Bratislava.'"/>

    <xsl:map-entry key="'Оки'" select="'The Oka River is located in Eastern Europe, flowing from Western Russia into the
        Volga River. The Moscow River flows directly into the Oka. Important cities include Ryazan
        and Nizhny Novgorod.'"/>

    <xsl:map-entry key="'Царьград'" select="'Constantinople was the capital of the Byzantine Empire for its entire
        existence, and was renamed to Istanbul after the Ottoman invasion of 1453. Constantinople
        was a very important city for both Christianity, serving as a hub for Orthodoxy, and for
        trade as the strait it is situated on separates the Black and Mediterranean seas. In Slavic
        sources, the city was known as Tsargrad.'"/>

    <xsl:map-entry key="'Киев'" select="'Kiev is the biggest and most important city in modern day Ukraine. Located on the
        Dnieper, it had once been the capital of the Kievan Rus, although fell into disarray around
        the 12th century.'"/>

    <xsl:map-entry key="'Новгород'" select="'While there are two Novgorods in Russia, the book means the city of Veliky
        Novgorod in reference to the Rus. Founded in the 9th century, Novgorod was an important and
        prosperous city for the Kievan Rus, and is located south of St. Petersburg.'"/>

    <xsl:map-entry key="'Финского_залива'" select="'The Gulf of Finland is a part of the eastern Baltic Sea. Important
        cities include St. petersburg, Tallinn, and Helsinki.'"/>

    <xsl:map-entry key="'Неве'" select="'The Neva is a small river that flows through St. Petersburg.'"/>

    <xsl:map-entry key="'Ладожскому_озеру'" select="'Lake Ladoga is a body of water in the north of Russia. The Neva River
        connects Lake Lodoga to the Baltic Sea.'"/>

    <xsl:map-entry key="'Волхову'" select="'The Volkhov is a river that flows from in the north of Russia into Lake Ladoga.
        The most important city it is connected to is Novgorod.'"/>

    <xsl:map-entry key="'Ловати'" select="'The Lovat is a river that flows from the north of Belarus into Lake Ilmen.'"/>

    <xsl:map-entry key="'Ильменю'" select="'Lake Ilmen is a body of water situated next to the city of Novgorod.'"/>

    <xsl:map-entry key="'Кубани'" select="'The Kuban is a river in the Russian Caucasus that flows into the Black Sea.'"/>

    <xsl:map-entry key="'Киево-Печерского_монастыря'" select="'The Kiev-Pechersk is one of the oldest monasteries in
        Ukraine, having been founded in 1051 by Yaroslav I.'"/>

    <xsl:map-entry key="'переяславского'" select="'Pechersk is a district within the city of Kiev.'"/>

    <xsl:map-entry key="'Ленинград'" select="'Leningrad is an alternate name for the city of St. petersburg, having been
        changed after the death of Lenin in 1924.'"/>

    <xsl:map-entry key="'Чудского_озера'" select="'Lake Peipus is a body of water that sits between the border of Estonia
        and Russia.'"/>

    <xsl:map-entry key="'Ростов'" select="'In the medieval context, Rostov refers to Rostov Veliky, a city northeast of
        Moscow that was part of the Principality of Vladimir-Suzdal.'"/>

    <xsl:map-entry key="'Суздаль'" select="'Suzdal is a Russian city northeast of Moscow, and was part of the prolific
        Principality of Vladimir-Suzdal.'"/>

    <xsl:map-entry key="'Москва'" select="'Moscow is the largest city in both Russia and the Soviet Union, serving as the
        administrative capital for both. Located on the Moscow River, the city adopted the title of
        Third Rome and as a center of Orthodoxy after the fall of Constantinople to the Ottoman
        Empire.'"/>

    <xsl:map-entry key="'Владимир'" select="'The city of Vladimir was the capital of the principality of Vladimir Suzdal
        from the 12th to 14th centuries, and is located north of Moscow.'"/>

    <xsl:map-entry key="'Клязьме'" select="'The Klyazma is a river that flows through the city of Vladimir, and flows into
        the Oka.'"/>

    <xsl:map-entry key="'Каспийского_моря'" select="'The Caspian Sea is a landlocked body of water that borders many
        countries in Central Asia and the Caucasus, such as Kazakhstan, Turkmenistan, Azerbaijan,
        Russia, and Iran. Important cities on its waterfront include Baku and Aktau.'"/>

    <xsl:map-entry key="'Калке'" select="'The Kalka is a small river in the southeast of modern Ukraine that flows into the
        Black Sea.'"/>

    <xsl:map-entry key="'Сарай'" select="'Sarai caan refer to two different cities. Old Sarai was the capital of the Golden
        Horde from the 13th to 14th century, and was established by Batu Khan on the Volga River
        near the north Caspian Sea. New Sarai was established in the 14th century slightly upstream.'"/>

    <xsl:map-entry key="'Кремль'" select="'The Kremlin is a complex of forts in the center of Moscow. However, the word
        kremlin can apply to any fortified military structure in the middle of a city.'"/>

    <xsl:map-entry key="'реке_Москве'" select="'The Moscow River flows through the city of Moscow, and is a relatively small
        stream connected to the Oka River.'"/>

    <xsl:map-entry key="'Куликовом_поле'" select="'Kulikovo Field is a field just south of Moscow, and is important for
        having the Battle of Kulikovo take place in the late 14th century between Muscovy and the
        Golden Horde, with Muscovy emerging the winner.'"/>

    <xsl:map-entry key="'Дон'" select="'The Don is a river that flows from the north to the south of Russia into the Sea of
        Azov, of which flows into the Black Sea. While no large cities are situated on the Don, it
        is fertile land and was important to the Byzantines for trade.'"/>

    <xsl:map-entry key="'Смоленск'" select="'Smolensk is a city in western Russia near the border of Belarus. Situated near
        the Dnieper River, the city had once been a bastion of commerce for the Kievan Rus.'"/>

    <xsl:map-entry key="'Грюнвальд'" select="'Grunwald is a village in the north of Poland. While not important to Russian
        history, Grunwald is important to Polish national history as the Battle of Grunwald had the
        Poles emerge victorious against the Teutonic Knights. However, this battle was left
        forgotten until nationalist movements of the 19th century.'"/>

    <xsl:map-entry key="'Самарканде'" select="'Samarqand is one of the oldest cities in Uzbekistan, located in its southeast
        near the border of Tajikistan. Once the capital of the Timurid Empire, it was captured by
        the Russian Empire in the 19th century.'"/>

    <xsl:map-entry key="'Бухары'" select="'Bukhara is a city located in the south of Uzbekistan. Once well known as a
        trading city on the Silk Road, Bukhara was the capital of the Bukharian Emirate before it
        fell to the Russian Empire in the 19th century.'"/>

    <xsl:map-entry key="'Тверь'" select="'Tver is a city located northwest of Moscow. Captured by Ivan III in the 15th
        century, Tver would become important to the Russian Empire as a stopping point between
        Moscow and St. Petersburg.'"/>

    <xsl:map-entry key="'Рязань'" select="'Ryazan is a city southeast of Moscow, and is situated on the Oka River. Ryazan
        would be captured and absorbed by Muscovy in the early 16th century.'"/>

    <xsl:map-entry key="'Казань'" select="'Kazan is a city east of Moscow that sits on the Volga River. Conquered by Ivan IV
        in the 16th century, the city is known for its high population of Volga Tatars. Kazan and
        the surrounding area were overtaken by followers of Pugachev during Pugachevs Rebellion.'"/>

    <xsl:map-entry key="'Астрахань'" select="'Astrakhan is a city in the south of Russia that is situated on the Volga near
        the Caspian Sea. Once the capital of the Khanate of Strakhan, it was conquered by Ivan IV in
        the 16th century.'"/>

    <xsl:map-entry key="'Угре'" select="'The Ugra is a small river southwest of Moscow that flows into the Oka.'"/>

    <xsl:map-entry key="'Церковь_Василия_Блаженного'" select="'St. Basils Cathedral is a 16th century building in the
        center of Moscow, and is famous for being the colourful building in the center of the
        Kremlin.'"/>

    <xsl:map-entry key="'Терек'" select="'The Terek is a small river that flows from northern Georgia and Russia into the
        Caspian Sea.'"/>

    <xsl:map-entry key="'Урале'" select="'The Urals are a mountain range that runs through Russia and Kazakhstan. The
        mountain range is typically considered to be the dividing point between Europe/western
        Russia and Asia/Siberia.'"/>

    <xsl:map-entry key="'Петербург'" select="'St. Petersburg is a city in the north of Russia founded by Peter I in 1703.
        Situated on the Gulf of Finland, the city was built to resemble the capitals of Western
        Europe, and was subsequently made the capital of the Russian Empire in 1712. The city was
        also called Petrograd.'"/>

    <xsl:map-entry key="'Оренбург'" select="'Orenburg is a city in Russia west of the Volga, near the border of Kazakhstan.
        The city was founded in an attempt to expand Russias borders east, and was a key city in
        Pugachevs Rebellion.'"/>

    <xsl:map-entry key="'Париже'" select="'Paris is the biggest city and current capital of France. As French was the common
        language among the European elite, many belonging to the Russian nobility would travel,
        study, and live in Paris. The city is also important in communist history due to the Paris
        Commune of 1871.'"/>

    <xsl:map-entry key="'Черниговском'" select="'Chernigov is a city in Ukraine located north of Kiev. An important city and
        subsequent principality of the Kievan Rus, Chernigov was a center of administration in the
        19th century Ukrainian region.'"/>

    <xsl:map-entry key="'Пушкин'" select="'Pushkin is a city bordering the south of St Petersburg. Once named Tsars
        Village, it was renamed in 1937 following the 100 year anniversary of Pushkins death.'"/>

    <xsl:map-entry key="'Вены'" select="'Vienna is a city in Austria located in the northeast, and is the countrys capital.'"/>

    <xsl:map-entry key="'Венгрию'" select="'Hungary is a central European country, bordering countries such as Austria,
        Serbia, and Romania. Once hailing from the Volga region, Hungary and Russia have a history
        that can be traced back to 898 with the Kievan Rus.'"/>

    <xsl:map-entry key="'Севастополь'" select="'Sevastopol is a city located in the southwest of the Crimean Peninsula.
        Having a strategic position on the Black Sea, the city was a point of conflict during the
        Crimean War.'"/>

    <xsl:map-entry key="'Малахов_курган'" select="'Malakhov Kurgan was a fort in Sevastopol important in warfare for its
        strategic location on top of a hill.'"/>

    <xsl:map-entry key="'Лондоне'" select="'London is the largest city and capital of the United Kingdom. One of the most
        industrious cities in the 19th century, London was oftentimes a hub for socialist and
        communist thought.'"/>

    <xsl:map-entry key="'Петропавловскую_крепость'" select="'The Peter and Paul Fortress is one of the first buildings to be
        constructed in St. Petersburg, having been used as a political prison from the 18th century
        to 1924.'"/>

    <xsl:map-entry key="'Варшаве'" select="'Warsaw is a city located in the east of Poland, serving as its largest city and
        capital. The city and its surrounding area would be absorbed into the Russian Empire
        following the partition of the Polish-Lithuanian Commonwealth, and had been a center of
        nationalist Polish thought and resistance to Russian imperialism.'"/>

    <xsl:map-entry key="'Сыр-Дарьи'" select="'The Syr Darya is a river that flows from the east of Uzbekistan to the south
        of Kazakhstan.'"/>

    <xsl:map-entry key="'Ташкента'" select="'Tashkent is a city located in the east of Uzbekistan, located near the borders
        of Kazakhstan, Tajikistan, and Kyrgyzstan. After the citys capture by the Russian Empire in
        the 19th century, it became the capital of Russian Turkestan, an administrative territory
        under colonial rule.'"/>

    <xsl:map-entry key="'Геок-Тепе'" select="'Geok Tepe is a fortress turned city located in the south of Turkmenistan, near
        the city of Ashgabat. The fort was sieged and subsequently captured by the Russian Empire in
        the late 19th century.'"/>

    <xsl:map-entry key="'Ашхабад'" select="'Ashgabat is the largest city and current capital of Turkmenistan, located in its
        south near the border of Iran. The city was founded in the late 19th century and would be
        built up by the Russian Empire and Soviet Union.'"/>

    <xsl:map-entry key="'Памир'" select="'The Pamir mountains are a mountain range located in the east of Tajikistan.'"/>

    <xsl:map-entry key="'Батуми'" select="'Batumi is a city located in the southwest of Georgia, near the border of Turkey.
        The city has been historically significant for trade across the Black Sea, and was one of
        the last cities on the Black Sea to be captured by the Russian Empire.'"/>

    <xsl:map-entry key="'Версаль'" select="'Versailles was the former capital of France, having been constructed under the
        regime of Louis XIV in the 17th and 18th centuries.'"/>

    <xsl:map-entry key="'Горький'" select="'Nizhny Novgorod is a city in Russia located east of Moscow on the Volga River.
        In 1932, the city was called Gorky, named after the Soviet writer Maxim Gorky.'"/>

    <xsl:map-entry key="'Туле'" select="'Tula is a city in Russia located south of Moscow, and was known primarily for its
        industry.'"/>

    <xsl:map-entry key="'Ясная_Поляна'" select="'Yasnaya Polyana is the home of Leo Tolstoy. Located just south of the city
        Tula, it has been turned into a museum.'"/>

    <xsl:map-entry key="'Одессе'" select="'Odessa is a city located in the southwest of Ukraine on the Black Sea. once
        belonging to the Ottomans, Odessa would become one of the largest port cities in the Russian
        Empire, specifically for the export of grain.'"/>

    <xsl:map-entry key="'Орехово-Зуеве'" select="'Orekhovo-Zuyevo is a city just east of Moscow known for its heavy
        industrial economy.'"/>

    <xsl:map-entry key="'Ульяновск'" select="'Ulyanovsk is a Russian city located south of Kazan on the Volga River. Once
        named Simbirsk, this city is the birthplace of Vladimir Lenin.'"/>

    <xsl:map-entry key="'Минске'" select="'Minsk is the largest city and current capital of Belarus, located in the center
        of the country. Once a part of the grand Duchy of Lithuania, the city was an important
        meeting place for communists in the late 19th and early 20th centuries, with the RDSLP being
        founded there.'"/>

    <xsl:map-entry key="'Ростове-на-Дону'" select="'Rostov-on-Don is a city located in the southwest of Russia near the
        border with Ukraine and the Black Sea, situated on the Don River. Rostov-on-Don would be
        captured by the Germans in both WWI and WWII.'"/>

    <xsl:map-entry key="'Жёлтом_море'" select="'The Yellow Sea is a body of water in East Asia.'"/>

    <xsl:map-entry key="'Порт-Артур'" select="'Port Arthur, now known as Lushun Port, is a port in the north of China on the
        Yellow Sea. It fell under Japanese control in the late 19th century.'"/>

    <xsl:map-entry key="'Зимнему_дворцу'" select="'The Winter Palace was the place of residence of the current tsar of the
        Russian Empire, which was located in St. Petersburg. The building was turned into a museum
        after 1917.'"/>

    <xsl:map-entry key="'Иваново-Вознесенске'" select="'Ivanovo is a city located northeast of Russia. Known for its
        production of textiles, the city was known as Ivanovo-Voznesensk until 1932.'"/>

    <xsl:map-entry key="'Потёмкин'" select="'Potemkin was a battleship stationed in the Black Sea made famous during the
        1905 Revolution, as the naval crew would mutiny due to the Russo-Japanese War and poor
        living conditions.'"/>

    <xsl:map-entry key="'Харькове'" select="'Kharkiv is a city located in the northeast of Ukraine, near the Russian border.
        Kharkiv is one of the largest cities in Ukraine, and serves as a prosperous center of
        industry and education.'"/>

    <xsl:map-entry key="'Днепропетровск'" select="'Dnipro is a Ukrainian city located on the Dnieper River. In 1926, the
        city was renamed to Dnipropetrovsk after Grigory Petrovsky, a leader of the Ukrainian
        Communist Party.'"/>

    <xsl:map-entry key="'Тбилиси'" select="'Tbilisi is the largest city and capital of Georgia, located near the center of
        the country. Having been founded in the 5th century, the city fell to Russian imperialism in
        the early 19th century.'"/>

    <xsl:map-entry key="'Горловке'" select="'Horlivka is a city in the east of Ukraine, near the border of Russia. In the
        19th century, the city was known for its prosperous chemical and coal industries.'"/>

    <xsl:map-entry key="'Луганске'" select="'Luhansk is a city located in the east of Ukraine, near the border of Russia.
        The city was founded in the late 18th century by a British businessman as an artillery
        factory, as the Russian Empire commissioned him to create industry in the region'"/>

    <xsl:map-entry key="'Свеаборге'" select="'Sveaborg is a series of fortresses on islands just south of Helsinki. Built by
        the Swedes in the 18th century to defend against the Russian Empire, they were used as a
        naval station by Russia in the 19th and 20th centuries.'"/>

    <xsl:map-entry key="'Кронштадте'" select="'Kronstadt is a city located on an island just west of St Petersburg in the
        Gulf of Finland. Important for both trade and the navy in the 19th and 20th centuries, the
        Kronstadt Rebellion would occur here, in which communist sailors rebelled against the Soviet
        government in 1921.'"/>

    <xsl:map-entry key="'Таврическом_дворце'" select="'The Tauride Palace is a building located in St. Petersburg used by
        the duma, and after the February Revolution was used by the Provisional Government.'"/>

    <xsl:map-entry key="'Баку'" select="'Baku is the largest city and capital of Azerbaijan, located in the countrys east
        on the Caspian Sea. Once a part of Iran, the city of Baku was captured by the Russian Empire
        in the early 19th century, and would become extremely important with the discovery of oil.'"/>

    <xsl:map-entry key="'Лене'" select="'The Lena is a river in eastern Siberia, and flows from near Lake Baikal to the
        Arctic Sea. The Lena is the largest river in all of Russia.'"/>

    <xsl:map-entry key="'Праге'" select="'Prague is the largest city and capital of Czechia, located near the center of the
        country.'"/>

    <xsl:map-entry key="'Петрограда'" select="'Petrograd is an alternate name for the city of St. Petersburg. The name was
        changed during WWI in order to remove the German influence in the citys title.'"/>
    </xsl:map>
    </xsl:variable>
    <!--    END OF PLACES AND BEGINNING OF PERSONS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
    <xsl:variable name="person" as="map(xs:string, xs:string)">
    <xsl:map>
        
        <xsl:map-entry key="'Невский'" select="'Alexander Nevsky was a Prince of Novgorod who was best known for defeat 
            of Swedish invaders in the Battle of Neva (1240). He preserved Orthodoxy by paying tribute to the Mongols 
            and is best known for saving the Russian people from Catholocism and the Germans.'"/>
            
    <xsl:map-entry key="'Аттила'" select="'Attila the Hun (r. 434-453) was a prolific king of the Huns. Under his
        leadership, the Huns would successfully invade Gaul and Italy.'"/>

    <xsl:map-entry key="'Рюрик'" select="'Rurik (r. 862-879) was the first leader of Kievan Rus and the legendary founder
        of the Rurikid dynasty.'"/>

    <xsl:map-entry key="'Олег'" select="'Oleg (r. 879-912) was one of the first Princes of Kiev. While being the successor
        of Rurik, he was not his son, but instead a relative.'"/>

    <xsl:map-entry key="'Игорь'" select="'Igor (r. 912-945) was Prince of Kiev and the son of Rurik. Married to Olga of
        Kiev, Igor would lead many successful military campaigns, and was killed by the Drevlians in
        945.'"/>

    <xsl:map-entry key="'Ольга'" select="'Olga of Kiev (r. 945-957, d. 969) was the first woman to rule over Kievan Rus
        following the death of her husband Igor. Olga would also be the first leader of the Rus to
        adopt Christianity, having done so in Constantinople.'"/>

    <xsl:map-entry key="'Святослав'" select="'Sviatoslav I (r. 945-972) was a Prince of Kiev and the son of Prince Igor and
        Olga of Kiev. Known for rejecting Christianity, Olga would rule as regent for most of his
        life. Sviatoslav would be killed in combat in 972.'"/>

    <xsl:map-entry key="'Владимира'" select="'Vladimir I (r. 978-1015) was the first Grand prince of Kiev following a
        lengthy succession battle with his brothers. Vladimir I is notable for officially adopting
        Christianity as the state religion of Kievan Rus in 988.'"/>

    <xsl:map-entry key="'Ярослав'" select="'Yaroslav I (r. 1019-1054) was a Grand Prince of Kiev and the son of Vladimir I.
        Yarslav is notable for creating the first recorded written law of the Kievan Rus, known as
        the Russkaya Pravda.'"/>

    <xsl:map-entry key="'Владимира_Мономаха'" select="'Vladimir Monomakh (r. 1113-1125) was a Grand Prince of Kiev, and was
        one of the last Grand Princes before the political dissolution of the empire.'"/>

    <xsl:map-entry key="'Невским'" select="'Alexander Nevsky (r. 1236-1240, 1241-1256, 1258-1259; 1249-1263) was a Prince
        of Novgorod and subsequent Grand Prince of Kiev> Nevsky is most notable for fighting against
        encroaching Teutonic crusaders in 1242, having won the battle.'"/>

    <xsl:map-entry key="'Юрий_Долгорукий'" select="'Yuri Dolgorukiy (1125-1157; 1149-1151) was a Prince of Novgorod and
        subsequent Grand Prince of Kiev. The son of Vladimir Monomakh, Yuri would lay the
        foundations for the creation of Moscow and Muscovy.'"/>

    <xsl:map-entry key="'Андрей_Боголюбский'" select="'Andrei Bogolyubsky (d. 1174) was a prince of Vladimir-Suzdal and
        the son of Yuri Dolgorukiy.'"/>

    <xsl:map-entry key="'Всеволод'" select="'Vsevolod III (r. 1176-1212) was a Prince of Vladimir, and also referred to as
        Vsevolod the Big Nest.'"/>

    <xsl:map-entry key="'Чингис-хан'" select="'Genghis Khan (r. 1206-1227) was the founder and first leader of the Mongol
        Empire. Carrying out many successful military campaigns during his life, Genghis would
        create a vast and expansive empire that stretched across all of Eurasia. However, Genghis
        would die before he could take over the Rus kingdoms.'"/>

    <xsl:map-entry key="'Хан_Батый'" select="'Batu Khan (r. 1227-1255) was the founder and first ruler of the Golden Horde.
        Despite not being related to Genghis, he was granted this portion of the Mongol Empire as
        Genghis son meant to inherit the kingdom had also died.'"/>

    <xsl:map-entry key="'Иван_Калита'" select="'Ivan Kalita, or Ivan I (r. 1325-1340) was a Prince of Moscow known to be a
        loyal tax collector of the Golden Horde. From this tax revenue, Ivan I was able to build up
        the city of Moscow. He was also known as Ivan Moneybags.'"/>

    <xsl:map-entry key="'Димитрий_Донской'" select="'Dimitri Donskoy (r. 1359-1389) was a Prince of Moscow in the 14th
        century. He is considered a hero in Russian historiography as he was the first prince to
        actively oppose the rule of the Golden Horde.'"/>

    <xsl:map-entry key="'Мамаем'" select="'Mamai was an important figurehead of the Golden Horde in the late 14th century.
        Despite not being the khan of the Golden Horde, his defeat against Dimitri was detrimental
        for his image and the empire as a whole.'"/>

    <xsl:map-entry key="'Ягайло'" select="'Jagiello (r. 1377-1434) was the Grand Duke of Lithuania, who upon marrying the
        Queen of Poland, formed the precursor to the Polish-Lithuanian Commonwealth. Jagiello would
        also be the Lithuanian leader who converted the entire kingdom to Christianity.'"/>

    <xsl:map-entry key="'Тамерлан'" select="'Timur (r. 1370-1405) was the founder and first ruler of the Timurid Empire,
        who was both Turkic and Mongolian by descent. The areas in which Timur and the Timurid
        Dynasty controlled include Central Asia, Iran, Afghanistan, the Caucasus, and parts of
        India.'"/>

    <xsl:map-entry key="'Тохтамыша'" select="'Tokhtamysh (r. 1378-1395) was a Khan of the Golden Horde.'"/>

    <xsl:map-entry key="'Иван_III'" select="'Ivan III (r.1462-1505) was the Grand Prince of Moscow well known for securing
        full sovereignty over Russia from the Golden Horde. After the fall of Constantinople, Ivan
        III began to adopt the title of tsar (although Ivan IV would officially declare Russia a
        tsardom) and Moscows status as the worlds Third Rome.'"/>

    <xsl:map-entry key="'Иван_IV_Грозный'" select="'Ivan IV (r. 1543-1584) was the first official tsar of Russia, and also
        know as Ivan the Terrible. Ivan IV is known for bringing all of the Volga region under
        control of Russia and beginning the expansion into Siberia, making him a very important
        figure in Russian history.'"/>

    <xsl:map-entry key="'Иван_Фёдоров'" select="'Ivan Feodorov was a Russian printmaker and publisher.'"/>

    <xsl:map-entry key="'Василия_III'" select="'Vasili III (r. 1505-1533) was a Grand Prince of Moscow, the son of Ivan
        III, and father of Ivan IV.'"/>

    <xsl:map-entry key="'Пётр_I'" select="'Peter I (r. 1682-1725) was a tsar of Russia, famous for officially declaring
        Russia an empire in the style of Western Europe and assuming the title of emperor in 1721.
        Peter would reform much in the Russian administrative hierarchy, establish universities, and
        found the city of St. Petersburg. He was also known as Peter the Great.'"/>
    
    <xsl:map-entry key="'Ломоносов'" select="'Mikhail Lomonosov was a Russian polymath who made contributions to modern 
        geology and chemistry, as well as helping develop the Russian language of his time. He was of Rank V in the Empires 
        Table of Ranks. He is remembered as the Father of Russian Science.'"/>

    <xsl:map-entry key="'Екатерина_II'" select="'Catherine II (r. 1762-1796) was an empress of the Russian Empire known for
        following Enlightenment philosophy. During her reign, Catherine II would centralize the
        Russian Empire and develop its legal code further, along with absorbing the Crimean Khanate
        and crushing Pugachevs Rebellion.'"/>

    <xsl:map-entry key="'Пугачёв'" select="'Pugachev was a Cossack who led Pugachevs Rebellion (1773-1775), a revolt
        composed of Cossacks, peasants, and Turkic peoples against Catherine II. Claiming to be the
        reincarnation of her dead husband and former tsar Peter III, the followers of Pugachev would
        claim large amounts of territory near the Volga region.'"/>

    <xsl:map-entry key="'Суворов'" select="'Alexander Suvorov was a Russian military leader known for leading and winning
        battles in the Crimean region against the Ottoman Empire.'"/>

    <xsl:map-entry key="'Наполеон'" select="'Napoleon Bonaparte (r. 1804-1814, 1815) was the Emperor of France emerging
        from the French revolution. Napoleon and his army would invade the Russian Empire in 1812,
        having made it all the way to Moscow before being defeated.'"/>

    <xsl:map-entry key="'Павел_I'" select="'Paul I (r. 1796-1801) was a tsar of the Russian Empire, and the son of
        Catherine II. During his short reign, he tried to undo many of the reforms of his mother.
        Paul I was assassinated in 1801 in a conspiracy.'"/>

    <xsl:map-entry key="'Александр_I'" select="'Alexander I (r. 1801-1825) was a tsar of the Russian Empire during
        Napoleons conquest, and under his reign Russian troops would occupy Paris. Alexander I
        would also assume the title of Grand Duke of Finland and the King of Poland in 1815.'"/>

    <xsl:map-entry key="'Аракчеев'" select="'Aleksey Arakcheyev was a military man who fought in the war between Napoleon
        and the Russian Empire, implementing many military reforms while in office.'"/>

    <xsl:map-entry key="'Пушкина'" select="'Alexander Pushkin was a famous Russian writer in the 19th century, and was
        killed in a duel in 1837. While the works of Pushkin remained famous throughout history, his
        writings were pushed further into public consciousness during Stalins regime.'"/>

    <xsl:map-entry key="'Рылеев'" select="'Ryleyev was a Russian writer known for leading the Decembrist Revolution of
        1825, of which attempted to uproot the Russian monarchy in favor of a liberal constitutional
        monarchy.'"/>

    <xsl:map-entry key="'Трубецкой'" select="'Trubetskoy was an organizer of the Decembrist Revolution.'"/>

    <xsl:map-entry key="'Каховский'" select="'Kakhovsky was a Decembrist who was arrested and killed in 1826 for his
        participation.'"/>

    <xsl:map-entry key="'Пестель'" select="'Pestel was a Decembrist who was arrested and killed in 1826 for his association
        with liberal societies.'"/>

    <xsl:map-entry key="'Николай_I'" select="'Nicholas I (r. 1825-1855) was a tsar of the Russian Empire who was against
        liberalization efforts. Nicholas I is known for killing the Decembrists, creating the
        Russian Empires secret police, and removing Polish autonomy within the empire.'"/>

    <xsl:map-entry key="'Муравьёв-Апостол'" select="'Muravyov-Apostol was a Decembrist who was arrested and killed in 1826
        for his participation.'"/>

    <xsl:map-entry key="'Бестужев-Рюмин'" select="'Mikhail Bestuzhev-Ryumin was a Decembrist who was arrested and killed in
        1826 for his participation.'"/>

    <xsl:map-entry key="'Михаила_Юрьевича_Лермонтова'" select="'Mikhail Lermontov was a famous Russian writer known for
        works such as A Hero of Our Time. Kermontov was killed in a duel in 1841.'"/>

    <xsl:map-entry key="'Николай_Васильевич_Гоголь'" select="'Nikolai Gogol was a Russian writer known for works such as
        Dead Souls, The Overcoat, and The Government Inspector. Gogol would die in 1852 from self
        induced starvation.'"/>

    <xsl:map-entry key="'Виссарион_Григорьевич_Белинский'" select="'Vissarion Belinsky was a 19th century Russian literary
        critic.'"/>

    <xsl:map-entry key="'Глинке'" select="'Mikhail Glinka was a 19th century classical Russian composer, often being cited
        as the first popular composer to come out of the empire.'"/>

    <xsl:map-entry key="'Шевченко'" select="'Taras Shevchenko was a peot born in the Russian Empire known for writing in
        Ukrainian.'"/>

    <xsl:map-entry key="'Шамиль'" select="'Imam Shamil (r. 1834-1857) was the leader of the Caucasian Imamate. Originally
        from Dagestan, Imam Shamil would rally troops and resist Russian colonialism in the Caucasus
        for decades using guerilla warfare, surrendering in 1859.'"/>

    <xsl:map-entry key="'Карл_Маркс'" select="'Karl Marx (1818-1883) was a communist political and economic philosopher
        born in Prussia. Pioneering ideas such as social class, historical materialism, and
        communist modes of production, Marxism would influence the basis of the Soviet Unions
        political and economic theory.'"/>

    <xsl:map-entry key="'Фридрих_Энгельс'" select="'Friedrich Engels (1820-1895) was a communist political philosopher who,
        alongside Karl Marx, would develop works such as the Communist Manifesto in 1848. After the
        death of Marx, Engels would compile, complete, and publish Marxs unfinished work Das
        Kapital in 1883.'"/>

    <xsl:map-entry key="'Нахимов'" select="'Nakhimov was an admiral in the Russian navy known for securing a win for Russia
        in the Battle of Sinop in 1853.'"/>

    <xsl:map-entry key="'Александр_II'" select="'Alexander II (r. 1855-1881) was a tsar of the Russian Empire who reformed
        the Russian Empire due to pressure from the nobility. Alongside emancipating the serfs, he
        would improve industry and reform the judicial branch. Alexander II was assassinated in 1881
        by a politically radical group known as the Peoples Will.'"/>

    <xsl:map-entry key="'Герцен'" select="'Alexander Herzen was a Russian political philosopher known for pioneering
        agrarian socialism in the Russian Empire, which was popular as most people within the empire
        were rural.'"/>

    <xsl:map-entry key="'Чернышевский'" select="'Nikolay Chernyshevsky was a literary critic and proponent of socialist
        philosophy.'"/>

    <xsl:map-entry key="'Ленин'" select="'Vladimir Ilyich Lenin, born Vladimir Ilyich Ulyanov (1870-1924) was a political
        and economic philosopher, revolutionary, and leader of both the Bolshevik Party and Soviet
        Union from 1917 to 1924. A staunch communist, Lenin was a key figure in the development of
        communist thought in the Russian Empire and head figure of the October Revolution.'"/>

    <xsl:map-entry key="'Некрасов'" select="'Nikolay Nekrasov was a Russian writer and champion of liberal philosophy.'"/>

    <xsl:map-entry key="'Кастусь_Калиновский'" select="'Konstanty Kalinowski was a writer and pioneer of Belorusian
        nationalism in the mid 19th century. Participating in a nationalist uprising, Kalinowski was
        captured by Russian troops and executed in 1864.'"/>

    <xsl:map-entry key="'Наполеон_III'" select="'Napoleon III (r. 1852-1870) was the emperor of France. Once elected
        president, he created a new French Empire, but was dethroned in 1870 after declaring war on
        Prussia.'"/>

    <xsl:map-entry key="'Александра_III'" select="'Alexander III (r. 1881-1894) was a tsar of the Russian Empire following
        the assassination of his father, Alexander II. Being a heavy reactionary, Alexander III
        would implement institutions that would overwrite the liberal reforms of his father.'"/>

    <xsl:map-entry key="'Александр_Ульянов'" select="'Alexander Ulyanov was the brother of Vladimir Lenin, and was killed
        by the Russian Empire for planning to assassinate Alexander III.'"/>

    <xsl:map-entry key="'Дмитрий_Иванович_Менделеев'" select="'Dmitri Mendeleev was a 19th century Russian scientist
        credited for creating the periodic table of elements.'"/>

    <xsl:map-entry key="'Иван_Михайлович_Сеченов'" select="'Ivan Sechenov was a 19th century Russian scientist known for
        pioneering psychology within the Russian Empire'"/>

    <xsl:map-entry key="'Николай_Егорович_Жуковский'" select="'Nikolay Zhukovsky was a 19th century Russian scientist known
        for pioneering aviation within the Russian Empire.'"/>

    <xsl:map-entry key="'Александр_Степанович_Попов'" select="'Alexander Popov was a 19th century Russian scientist
        credited for creating one of the first radio devices in the Russian Empire.'"/>

    <xsl:map-entry key="'Илья_Ефимович_Репин'" select="'Ilya Repin was a 19th century Ukrainian realist painter, most
        notable for his painting Ivan the Terrible and His Son Ivan.'"/>

    <xsl:map-entry key="'Лев_Николаевич_Толстой'" select="'Leo Tolstoy was a 19th century Russian writer known for works
        such as War and Peace and Anna Karenina.'"/>

    <xsl:map-entry key="'Суриков'" select="'Vasily Surikov was a 19th century Russian realist painter, known predominantly
        for illustrating historical events.'"/>

    <xsl:map-entry key="'Мусоргский'" select="'Modest Mussorgsky was a 19th century Russian composer.'"/>

    <xsl:map-entry key="'Римский-Корсаков'" select="'Nikolai Rimsky-Korsakov was a 19th century Russian composer.'"/>

    <xsl:map-entry key="'Бородин'" select="'Alexander Borodin was a 19th century Russian composer and scientist.'"/>

    <xsl:map-entry key="'Чайковский'" select="'Pyotr Tchaikovsky was a 19th century Russian composer known for works such
        as The Nutcracker and 1812 Overture.'"/>

    <xsl:map-entry key="'Халтурин'" select="'Stepan Khalturin was a member of the populist movement and was captured and
        executed for attempting to assassinate Alexander II.'"/>

    <xsl:map-entry key="'Обнорский'" select="'Viktor Obnorskiy was a revolutionary and labor organizer within the Russian
        Empire.'"/>

    <xsl:map-entry key="'Георгий_Валентинович_Плеханов'" select="'Georgi Plekhanov was a Russian communist philosopher and
        writer. Plekhanov is credited with establishing the first Marxist political group known as
        the Emancipation of Labor in the Russian Empire.'"/>

    <xsl:map-entry key="'Сталин'" select="'Joseph Stalin (1878-1953) was a communist politician born in Georgia and the
        leader of the Soviet Union from 1924 to his death. Superseding Lenin after his death. Stalin
        was known for industrializing the Soviet Union, intense government repression, and leading
        the country through WWII against Adolph Hitler.'"/>

    <xsl:map-entry key="'Николай_II'" select="'Nicholas II (r. 1894-1917) was the last tsar of the Russian Empire. Known
        for being a weak and oppressive ruler, Nicholas II would abdicate the throne in 1917, and
        was subsequently killed during the Russian Civil War in 1918.'"/>

    <xsl:map-entry key="'Мартов'" select="'Yuliy Martov was a Russian communist politician and leader of the Menshevik
        Party. Once a friend of Lenin, the two became political enemies after the split of the
        RSDLP, and Martov would be exiled in 1920.'"/>

    <xsl:map-entry key="'Троцкий'" select="'Leon Trotsky was a Russian communist politician and leader of the Soviet Army
        from 1918 to 1925. Once a Menshevik, Trotsky was a key figure in the October Revolution and
        Russian Civil War. Trotsky would later be exiled by Stalin and assassinated in 1940.'"/>

    <xsl:map-entry key="'Гапон'" select="'Georgiy Gapon was a Russian Orthodox priest and organizer. In 1905, Gapon would
        lead 150,000 people in St. Petersburg in a plea to tsar Nicholas II, leading to the crowd
        being fired upon by the military in an event known as Bloody Sunday. Gapon would be
        assassinated in 1906.'"/>

    <xsl:map-entry key="'Матюшенко'" select="'Afanasi Matyushenko was a Russian sailor, socialist, and leader of the
        Potemkin mutiny. Matyushenko was arrested and killed in 1907.'"/>

    <xsl:map-entry key="'Николая_Эрнестовича_Баумана'" select="'Nikolay Bauman was a Russian Bolshevik who was killed in
        1905, making him a martyr among communists.'"/>

    <xsl:map-entry key="'М._В._Фрунзе'" select="'Mikhail Frunze was a Russian Bolshevik and military commander during the
        Russian Civil War. Frunze would lead a textile strike in 1905, and the city of Bishkek would
        be renamed after his death in 1925.'"/>

    <xsl:map-entry key="'Дубасов'" select="'Fyodor Dubasov was an associate of thRussian Empires navy, and during the 1905
        Revolution was tasked with suppressing peasant revolts.'"/>

    <xsl:map-entry key="'Клим_Ворошилов'" select="'Kliment Voroshilov was a Russian military officer and Bolshevik, having
        served in the Russian Civil War. Voroshilov would have a prolific career under Stalin, and
        served in the Red Army until 1941.'"/>

    <xsl:map-entry key="'Столыпин'" select="'Pyotr Stolypin (r. 1906-1911) was a monarchist and prime minister of the
        Russian Empire, of which it gained after the 1905 Revolution. Known to be a reformer that
        caused massive industrial growth, Stolypin was assassinated in 1911 for allowing greater
        access of private land ownership.'"/>

    <xsl:map-entry key="'В._М._Молотов'" select="'Vyacheslav Molotov was a Russian Bolshevik and politician in the Soviet
        Union. Molotov would be one of Stalins most loyal supporters, holding some form of office
        past Stalins death.'"/>

    <xsl:map-entry key="'Я._М._Свердлов'" select="'Yakov Sverdlov was a Russian Bolshevik and communist organizer. One of
        the most prolific members of the party, he authorized the assassination of Nicholas II, but
        died unexpectedly in 1919.'"/>

    <xsl:map-entry key="'С._М._Киров'" select="'Sergei Kirov was a Russian Bolshevik and head of the Cumminist Party in St.
        Petersburg. Kirov would be assassinated in 1934, albeit not by Joseph Stalin.'"/>

    <xsl:map-entry key="'Г._К._Орджоникидзе'" select="'Sergo Ordzhonikidze was a Georgian Bolshevik known for leading the
        invasions of the Caucasus during the Russian Civil War. Ordzhonikidze would die by suicide
        in 1937.'"/>

    <xsl:map-entry key="'Ф._Э._Дзержинский'" select="'Felix Dzerzhinsky was a Polish Bolshevik and politician known for
        leading different types of secret police campaigns.'"/>

    <xsl:map-entry key="'М._И._Калинин'" select="'Mikhail Kalinin was a Russian Bolshevik and politician, holding various
        positions of power and was a friend of Stalin.'"/>

    <xsl:map-entry key="'К._Е._Ворошилов'" select="'Kliment Voroshilov was a Russian Bolshevik and military leader, having
        a long and prolific career. However, Voroshilov came under fire during WWII for losing
        campaigns against both Finland and Nazi Germany.'"/>

    <xsl:map-entry key="'Л._М._Каганович'" select="'Lazar Kaganovich was a Russian Bolshevik and politician who helped the
        Bolsheviks establish control in Central Asia. Kaganovich would enjoy a long career under
        Stalins regime.'"/>

    <xsl:map-entry key="'Н._К._Крупская'" select="'Nadezhda Krupskaya was a Russian Bolshevik, politician, and the wife of
        Vladimir Lenin. She is credited with establishing and developing all education departments
        within the Soviet Union.'"/>

    <xsl:map-entry key="'Амангельды_Иманов'" select="'Amankeldı Imanov was a Kazakh revolutionary who fought alongside the
        Bolsheviks in Central Asia.'"/>

    <xsl:map-entry key="'Карл_Либкнехт'" select="'Karl Liebknecht was a German socialist politician who was removed from
        German socialist parties for expressing anti-war sentiments. He was killed by anti-communist
        forces, and subsequently became a martyr.'"/>

    <xsl:map-entry key="'Роза_Люксембург'" select="'Rosa Luxembourg was a German socialist politician who founded what
        eventually became the Communist Party of Germany. She was killed by anti-communist forces,
        and subsequently became a martyr.'"/>

    <xsl:map-entry key="'Колчак'" select="'Alexander Kolchak was a Russian military leader for the White Army during the
        Russian Civil War. Establishing a military dictatorship in Russian territory, Kolchak would
        be defeated in 1919 and killed by 1920.'"/>

    <xsl:map-entry key="'Деникин'" select="'Anton Denikin was a Russian military leader who led troops in the White Army
        during the Russian Civil War. Controlling large amounts of territory in southern Russia,
        Ukraine, and the Caucasus, Denikin was one of the biggest threats to the Bolsheviks, but
        would ultimately be defeated by 1919.'"/>

    <xsl:map-entry key="'Юденич'" select="'Nikolai Yudenich was a Russian military leader for the White Army during the
        Russian Civil War. His forces would control territory in northwest Russia, such as the land
        surrounding St. Petersburg, and would be defeated in 1919 and arrested in 1920.'"/>

    <xsl:map-entry key="'Василий_Иванович_Чапаев'" select="'Vasily Chapayev was a Russian military leader for the Red Army
        during the Russian Civil War, fighting in Russian territory near the border of northwestern
        Kazakhstan.'"/>

    <xsl:map-entry key="'С._М._Будённого'" select="'Semyon Budyonny was a Russian military leader for the Red Army during
        the Russian Civil War. Responsible for the Red Armys cavalry, Budyonny would enjoy a
        successful career under Joseph Stalin, having been a leading military commander during WWII.'"/>

    <xsl:map-entry key="'Врангель'" select="'Pyotr Wrangel was a German-born Russian military leader for the White Army
        during the Russian Civil War. Controlling territory within southern Russia, Wrangels army
        would be one of the last to submit to the Red Army, having been defeated in 1920.'"/>

    <xsl:map-entry key="'В._В._Куйбышева'" select="'Valerian Kuybyshev was a Russian communist politician, and during the
        Russian Civil War would lead Red Army troops around the Volga region.'"/>

    <xsl:map-entry key="'Сергей_Лазо'" select="'Sergei Lazo was a Russian military leader for the Red Army during the
        Russian Civil War. Lazo would lead troops against white-allied Cossack movements and in
        southwestern Siberia near the border of China.'"/>

    <xsl:map-entry key="'Зиновьев'" select="'Grigory Zinoviev was a Russian communist politician and leader of the
        Communist International. Once an ally of Lenin, Zinoviev would begin allying himself with
        Stalin in the 1920s, and would be jailed and executed during Stalins regime.'"/>

    <xsl:map-entry key="'Каменев'" select="'Lev Kamenev was a Russian communist politician who served as the states
        premier after Lenins health began to decline. Allying himself with Stalin against Trotsky
        in the 1920s, Kamenev would be jailed and executed during Stalins regime.'"/>

    <xsl:map-entry key="'Бухарин'" select="'Nikolai Bukharin was a Russian communist politician and theorist, of whom was
        deemed extremely important by Vladimir Lenin. Once one of Stalins closest allies, Bukharin
        would be arrested and executed during Stalins regime.'"/>

    <xsl:map-entry key="'Рыков'" select="'Alexei Rykov was a Russian communist politician who served as the Soviet Unions
        Premier from 1925 to 1930. During Stalins regime, Rykov would be arrested and executed.'"/>

    <xsl:map-entry key="'Алексей_Стаханов'" select="'Alexei Stakhanov was a Soviet miner who became famous for performing
        well above quota, leading to the Stakhanovite movement that promoted worker productivity.'"/>
    
    <xsl:map-entry key="'Мария_Демченко'" select="'Maria Demchenko was a farmer known for promoting collective farming, specifically for beets.'"/>
    </xsl:map-entru>
    </xsl:variable>
    <!--    END OF PERSONS AND BEGINNING OF PEOPLE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
    <xsl:variable name="people" as="map(xs:string, xs:string)">
    <xsl:map>
    <xsl:map-entry key="'узбеков'" select="'The Uzbeks are the people of modern day Uzbekistan, and are Turkic by
        ethnicity.'"/>

    <xsl:map-entry key="'таджиков'" select="'The Tajiks are the people of modern day Tajikistan, and are Persianate by
        ethnicity.'"/>

    <xsl:map-entry key="'туркмен'" select="'The Turkmens are the people of Turkmenistan, and are Turkic by ethnicity. They
        were once referred to as the Oghuz.'"/>

    <xsl:map-entry key="'скифы'" select="'The Scythians were a group of nomadic people from modern day Russia, Ukraine,
        Iran, and Turkey. The Scythians controlled an expansive kingdom from the 8th to 3rd century
        BCE, and were some of the first recorded nomads that interacted with Europeans, often
        interacting with the Greeks.'"/>

    <xsl:map-entry key="'Греки'" select="'The Greeks were both the people of Ancient Greek city states, and modern day
        Greece. Sometimes, the Greeks also are used to describe the subjects of the Byzantine Empire'"/>

    <xsl:map-entry key="'гунны'" select="'The Huns were a group of nomads that inhabited Eastern Europe, Central Asia, and
        the Caucasus. Often at odds with the Roman Empire, they would lead successful military
        campaigns in the 4th and 6th centuries, many of which were under the rule of Attila.'"/>

    <xsl:map-entry key="'хазар'" select="'The Khazars were a group of Turkic nomads that controlled territory in the
        Crimean region, Caucasus, and Ukraine. By the 8th century, the Khazars would convert to
        Judaism, and were often at odds with the Kievan Rus.'"/>

    <xsl:map-entry key="'болгар'" select="'The Bulgars were a group of Turkic nomads that held influence in the Danube
        region. Not to be confused with the Bulgarians, the Bulgars were often at odds with the
        Byzantines, with the Khan Krum killing Emperor Nikephoros I.'"/>

    <xsl:map-entry key="'Славяне'" select="'In the historical sense, the Slavs were the original tribes of people that
        lived in Eastern Europe that Russians, Ukranians, Poles, etc. draw their lineage from. Slavs
        were the subject of the Kievan Rus, and were composed of many different ethnic identities.'"/>

    <xsl:map-entry key="'русских'" select="'The Russians are the people of Russia, and are Slavic by ethnicity.'"/>

    <xsl:map-entry key="'украинцев'" select="'The Ukrainians are the people of Ukraine, and are Slavic by ethnicity.'"/>

    <xsl:map-entry key="'белорусов'" select="'The Belorussians are the people of Belarus, and are Slavic by ethnicity.'"/>

    <xsl:map-entry key="'мари'" select="'The Mari are people who have lived on the Volga River traditionally, and are
        Finno-Urgic by ethnicity.'"/>

    <xsl:map-entry key="'мордвы'" select="'The Mordvins are peoples who have lived on the Oka and Volga Rivers
        traditionally. In the Soviet Union, the term Mordvin was used to refer to multiple ethnic
        groups in this area.'"/>

    <xsl:map-entry key="'варягами'" select="'The Varangians were a group of people that came from Scandinavia, and settled
        in the Volga region in the 9th century. These people would found the ruling Rurikid dynasty
        of the Kievan Rus.'"/>

    <xsl:map-entry key="'древлян'" select="'The Drevlians were a tribe of Slavs that inhabited Eastern Europe. Staunch
        opponents of the Kievan Rus, their native lands were absorbed into the kingdom after the
        death of Prince Igor.'"/>

    <xsl:map-entry key="'черкесов'" select="'The Circassians are a group of people originally from the Caucasus. In the
        19th century, they were the target of a mass deportation and genocide campaign enacted by
        the Russian Empire.'"/>

    <xsl:map-entry key="'печенегов'" select="'The Pechenegs were a tribe of Turkic nomads that controlled territory in the
        northern Black Sea region in the 9th and 10th centuries. Despite conducting trade, they were
        often at war with the Kievan Rus.'"/>

    <xsl:map-entry key="'литовских'" select="'The Lithuanians are the people of Lithuania, and are Baltic by ethnicity. The
        Lithuanians would be some of the last peoples of Europe to adopt Christianity, having done
        so officially in the 14th century.'"/>

    <xsl:map-entry key="'половцев'" select="'The Polovcians were a tribe of Turkic nomads that were spread across the
        entire steppe region. Forming a complicated relationship with the Kievan Rus, they first in
        Slavic history around the middle of the 11th century primarily as raiders. Following Mongol
        conquests, they would largely disappear as a culture, although do show up in 19th century
        Russian census records.'"/>

    <xsl:map-entry key="'псы-рыцари'" select="'The Teutonic Order was a militant religious society who, after the siege of
        Acre in 1190, went to Christianize the Kingdom of Lithuania in the 13th century. They are
        typically associated with Germans.'"/>

    <xsl:map-entry key="'русские'" select="'The Russians are the people of Russia, and are Slavic by ethnicity.'"/>

    <xsl:map-entry key="'монголы'" select="'The Mongolians are the people of Mongolia, and have historically been nomadic.
        In the context of this text, the Mongols are referred to within the context of the Mongol
        Empire and Golden Horde'"/>

    <xsl:map-entry key="'Чехи'" select="'The Czechs are the people of Czechia, and are Slavic by ethnicity.'"/>

    <xsl:map-entry key="'татар'" select="'The Tatars are a multitude of different Turkic ethnic identities that come from
        East Asia, although are now found across the Volga region and Crimea. In the context of this
        book, the author is primarily referring to the Tatars from the Volga and Crimea. However,
        the term tatar is also applied to any Turkic nomads.'"/>

    <xsl:map-entry key="'московским'" select="'The Muscovites were the citizens and subjects of Muscovy.'"/>

    <xsl:map-entry key="'Польские'" select="'The Polish are the people of Poland, and are Slavic by ethnicity.'"/>

    <xsl:map-entry key="'турками'" select="'Typically when referring to the Turks, this book is referring to the citizens
        of the Ottoman Empire, specifically those who lived in modern day Turkey.'"/>

    <xsl:map-entry key="'чувашей'" select="'The Chuvash people traditionally inhabit the Volga region near the city of
        Kazan, and are Turkic by ethnicity.'"/>

    <xsl:map-entry key="'башкир'" select="'The Bashkirs are people who traditionally inhabit the southern Volga region, and
        are Turkic by ethnicity.'"/>

    <xsl:map-entry key="'прибалтийскими_немцами'" select="'The Baltic Germans are Germans who live in the Baltics, many of
        which are descended from either clergy or Teutonic Order knights. After the advent of WWII,
        the number of Baltic Germans has declined considerably.'"/>

    <xsl:map-entry key="'Шведы'" select="'The Swedes are the people of Sweden, and are Germanic by ethnicity.'"/>

    <xsl:map-entry key="'бояр'" select="'The boyars are a class of high ranking and influential nobility that owned land
        and eventually serfs in the Kievan Rus, Muscovy, and the early Russian Empire. Frustrated
        with the power they lost under Ivan III, they resisted the rule of Ivan IV.'"/>

    <xsl:map-entry key="'опричниками'" select="'The Oprichnina were a special military/police force implemented by Ivan IV
        meant to suppress boyars who resisted his rule. The organization was disbanded before the
        end of the 16th century.'"/>

    <xsl:map-entry key="'крепостников'" select="'Serfs were members of a legally defined class that tied them to the land
        they worked and the owner of said land. Typically rural farmers, serfs held no political
        power and were often involved with revolts such as Pugachevs Rebellion. Millions of serfs
        would be emancipated in 1861, although most did not have the means to leave the land they
        worked.'"/>

    <xsl:map-entry key="'пролетариат'" select="'In Marxist political philosophy, the proletariat are the working masses
        that, in capitalist society, are alienated from the means of production, such as factories,
        machinery, materials, etc.'"/>

    <xsl:map-entry key="'Буржуазия'" select="'In Marxist political philosophy, the bourgeoisie are the people who control
        the means of production and do not work for a wage, such as factory owners.'"/>

    <xsl:map-entry key="'земские_управы'" select="'A Zemstvo was a form of localized government implemented into the
        Russian Empire by Alexander II. The Zemstvo were composed of local gentry and elites, and
        were responsible for collecting taxes, building infrastructure, and lending money to freed
        serfs.'"/>

    <xsl:map-entry key="'кулаки'" select="'The kulaks were a legal category of serfs that owned a large plot of land or
        lent out money to other serfs. Associated with land ownership, the Soviet Union associated
        them with the petty bourgeoisie, and implemented many policy changes to limit their power
        over other peasants.'"/>

    <xsl:map-entry key="'дума'" select="'The Duma was a political institution of elected officials to the Russian
        legislative branch, of which also contained the State council. Despite being elected, the
        duma had no real power in the government, and was disbanded in 1917.'"/>

    <xsl:map-entry key="'муллы'" select="'Mullah is a title given to local spiritual leaders of Islam, predominantly used
        in Central Asia and Iran.'"/>

    <xsl:map-entry key="'мелкобуржуазных'" select="'In Marxist political philosophy, the petty bourgeois are those who own
        their own means of production and have aspirations similar to the bourgeoisie, but are
        economically in a position similar to the proletariat. This social class includes people
        such as artisans and small business owners.'"/>

    <xsl:map-entry key="'Народники'" select="'The Populists were a group of radicals influenced by the works of agrarian
        socialists such as Herzen, who were primarily people from elite backgrounds.'"/>

    <xsl:map-entry key="'большевиков'" select="'The Bolsheviks were a radical communist party that would form the official
        Communist Party of the Soviet Union. Originally founded as the RSDLP in 1898, the Bolsheviks
        would split with the Mensheviks over political disagreements in 1903. Important Bolsheviks
        include Lenin, Stalin, and Trotsky.'"/>

    <xsl:map-entry key="'казаков'" select="'The Cossacks were a loosely defined group consisting predominantly of poorer
        Slavic peoples who rode on horseback and occupied territory around the Dnieper River, living
        lives similar to nomads. Historically, Cossacks made up considerable portions of a nations
        army, with most of the Russian Empires cavalry being Cossacks.'"/>

    <xsl:map-entry key="'меньшевиками'" select="'The Mensheviks were a radical communist party that split off from the
        Bolsheviks in 1903. While still extremely radical, the Mensheviks were more open to
        political compromise, and would fight the Bolsheviks in the Russian Civil War.'"/>
    </xsl:map>
    </xsl:variable>
<xsl:variable name="religion" as="map(xs:string, xs:string)">
    <xsl:map>
    <xsl:map-entry key="'греческой_верой'" select="'When mentioning the Greek faith, the text is referring specifically
        to Orthodox Christianity.'"/>

    <xsl:map-entry key="'христианство'" select="'Typically when talking about Christianity, this text is referring to
        Orthodox Christianity.'"/>

    <xsl:map-entry key="'языческая'" select="'Rus paganism was the religion that preceded their adoption of
        Christianity. Specific deities include the god of beasts and war, Volos, and the god of
        thunder, Perun.'"/>
    </xsl:map>
    </xsl:variable>
<xsl:variable name="system" as="map(xs:string, xs:string)">
    <xsl:map>
    <xsl:map-entry key="'крепостнический_строй'" select="'Serfdom was the legal system that bound Russian peasants to a
        member of the gentry and the land they owned, becoming popular in the 16th century. Serfdom
        was the cause of many uprisings and revolts in Russian history, and was a political sticking
        point among Russian intellectuals. Serfdom would be abolished by Alexander II in 1861.'"/>
    <xsl:map-entry key="'Совет_Народных_Комиссаров'" select="'The Council of Peoples Commissars was an administrative unit
        within the Soviet Union formed after the October Revolution, and was responsible for most
        issues relating to the state. The members of the Council of Peoples Commissars were the
        highest ranking executive authorities, and the council would be disbanded by 1946.'"/>
    </xsl:map>
    </xsl:variable>
</xsl:stylesheet>

<!--Regex for changing original format, just in case, was find "<territory_([^>]+)>\s*(.*?)\s*</territory_\1>" and replace with "<xsl:map-entry key="'$1'" select="'$2'"/>"-->
