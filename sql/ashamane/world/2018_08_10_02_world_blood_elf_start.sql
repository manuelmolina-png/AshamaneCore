DELETE FROM `gameobject` WHERE `guid` = 19451;

DELETE FROM `creature` WHERE `guid` IN (54985, 67410, 67407);
INSERT INTO `creature` VALUES (67407, 15295, 530, 0, 0, 1, 0, 0, 0, -1, 0, 1, 10376.5, -6406.71, 49.7156, 3.36024, 300, 0, 0, 2260, 2175, 0, 0, 0, 0, 0, 0, '', 0);

UPDATE `quest_template_addon` SET `PrevQuestID`='8326' WHERE `ID` IN (8336, 37440, 8346, 37439, 8345, 37442, 37443, 8330);

UPDATE `quest_objectives` SET `Flags` = 4, `Flags2` = 0 WHERE `ID` = 258311;
UPDATE `quest_objectives` SET `Flags` = 4 WHERE `ID` IN (259342, 260518, 257507, 257005, 259937, 260364, 252881, 260329, 262444);

DELETE FROM `gossip_menu` WHERE MenuId = 99915;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES ('99915', '7788');

UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`='11731' WHERE (`MenuId`='6953') AND (`OptionIndex`='0') LIMIT 1;

DELETE FROM `gossip_menu_option_action` WHERE MenuId = 6953;
INSERT INTO `gossip_menu_option_action` (`MenuId`, `ActionMenuId`) VALUES ('6953', '21311');

DELETE FROM `creature_queststarter` WHERE (`id`='15403') AND (`quest`='8482');
DELETE FROM `creature_queststarter` WHERE (`id`='16924') AND (`quest`='8468');

UPDATE `creature_template` SET `gossip_menu_id` = '99915' WHERE `entry` = 15301;
UPDATE `creature_template` SET `gossip_menu_id` = '6953' WHERE `entry` = 15420;
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` IN (15418, 15297, 15296, 17849, 15941, 15945, 15417);

UPDATE `npc_text` SET `BroadcastTextID0`='11730' WHERE (`ID`='8240') LIMIT 1;

REPLACE INTO `quest_template_locale` (`ID`, `locale`, `LogTitle`, `LogDescription`, `QuestDescription`) VALUES 
('8472', 'ruRU', 'Серьезная поломка', 'Соберите 6 волшебных сердечников с волшебных часовых, которые бродят по руинам Луносвета, и принесите их магистру Джаронису на площадь Соколиных Крыльев в лесах Вечной Песни.', 'Волшебные часовые, которых наши предки изготовили, чтобы охранять город, в последнее время пришли в полную негодность. Они уже не признают в нас своих хозяев и нападают, как только увидят!$B$BОни созданы много лет назад, но волшебные сердечники, на которых они работают, все еще вполне пригодны. Собери эти сердечники и принеси мне, чтобы я мог пустить их в дело. Часовые бродят по разрушенным кварталам Луносвета, на северо-западе.'),
('8486', 'ruRU', 'Магическая нестабильность', 'Убейте 5 магических призраков и 5 ловчих маны по просьбе хранительницы энергии Велании.', 'Ну наконец-то этот олух, Кайданис, прислал хоть кого-то!$B$BА я предупреждала о том, что опасно перегружать Западное святилище! И вот теперь один из энергетических конвертеров уничтожен, а из святилища лезут чародейские призраки!$B$BМне нужна твоя помощь, чтобы разобраться с этими существами, прежде чем мы отправим туда ремонтников. Быстрее!'),
('8482', 'ruRU', 'Обличающие бумаги', 'Отнесите обличающие бумаги Аэльдону Озаренному Солнцем на площади Соколиных Крыльев в лесах Вечной Песни.', 'В бумагах содержатся подробные карты различных стратегически важных зданий лесов Вечной Песни. Прилагается также план волшебного святилища. Кроме того, присутствует множество заметок на неизвестном вам языке.$B$BПоскольку все это нашли у дарнасского шпиона, пожалуй, стоит отнести это начальнику стражи – Аэльдону Озаренному Солнцем.'),
('8483', 'ruRU', 'Дворфийский шпион', 'Принесите голову геолога Стража Наковальни Аэльдону Озаренному Солнцем на площадь Соколиных Крыльев в лесах Вечной Песни.', 'Слушай, $n. Ситуация очень деликатная. Мы вычислили шпиона, но убить его открыто не можем. Не можем мы и попытаться его схватить – слишком велик риск, что уйдет.$B$BПрошу тебя: пойди в Северное святилище, найди там геолога Стража Наковальни и убей его. Только тихо: мы не хотим, чтобы пошли разговоры, что мы допустили в свой город шпиона.$B$BПринеси мне в доказательство его голову. Пусть стальгорнцы знают, что к син''дорай соваться опасно.'),
('8491', 'ruRU', 'Добывание шкур', 'Принести 6 шкур прыголапа Велану Светлому Тополю из деревни Легкий Ветерок в лесах Вечной Песни', 'Прыголапы, которые водятся в здешних краях, славятся своими превосходными шкурами. Порой даже эти мошенники, ночные эльфы, забредают к нам, чтобы побраконьерствовать.$B$BИз-за стычек с троллями Амани все припасы у нас иссякли, и нашим следопытам не до добывания шкур. Если ты согласишься помочь нам добывать шкуры прыголапов, я вознагражу тебя надежной броней. Прыголапов-охотников легко встретить в лесах к северу отсюда.'),
('8475', 'ruRU', 'Тропа Мертвых', 'Убейте 8 чумнокостных погромщиков и вернитесь к следопыту Джаеле на Тропе Мертвых в лесах Вечной Песни.', 'Полоса выжженной земли, которая тянется через леса Вечной Песни, как постоянное напоминание о том дне, когда Артас привел Плеть в наш возлюбленный город...$B$BЭто хуже, чем бельмо на глазу: даже теперь по ней в Луносвет приходят прислужники Плети из Призрачных земель.$B$BСтупай, $n, и помоги моим воинам убивать лишенную разума нежить, которая приходит Тропой Мертвых.');

REPLACE INTO `quest_request_items_locale` VALUES
(8325, 'ruRU', '$n, возрождение нашего народа начинаеться с этого острова. Когда мы обезопасим наш дом, можно будет расширять границы влияния', 25549),
(8326, 'ruRU', 'Мне не доставляет никакого удовольствия просить тебя убивать этих животных. В прошлом мы жили в относительной гармонии с лесными тварями, но настали другие времена. Главная задача син\'дорай – выжить. Помни об этом.', 25549),
(8330, 'ruRU', 'Тебе удалось найти мои вещи? Как только мы укрепим нашу власть на Острове Солнечного Скитальца, они понадобятся мне для работы. А пока я должен следить за Колодцем... точнее за тем, что от него осталось.', 25549),
(8334, 'ruRU', 'Лучше тебе узнать о выживании - и его цене - сейчас, чем потом. Ты $gэльф:эльфийка; крови, и  тебе придеться привыкнуть к жесткой деятельности.$B$BНикто не помог нам, когда удар Плети рассек наш дом пополам. Мы сами, без чьей-либо помощи вытащили себя буквально за шкирку', 25549),
(8335, 'ruRU', 'Помни: Фелендрен Изгой – всего лишь вестник куда большей беды. Его уничтожение решит лишь наши сегодняшние проблемы, но всем эльфам крови грозит та же участь, если мы не научимся обуздывать свою тягу к магии.', 25549),
(8338, 'ruRU', 'Судя по всему, у тебя какое-то срочное дело. Чем я могу помочь?', 25549),
(8350, 'ruRU', 'Добро пожаловать в мою таверну, $c. Я вижу, ты что-то мне $gпринес:принесла;?', 25549),
(8463, 'ruRU', 'Ну что, удалось тебе отыскать похищенное?', 25549),
(8468, 'ruRU', 'Ты хочешь мне что-то показать?', 25549),
(8472, 'ruRU', 'Ну что, $n, удалось тебе собрать волшебные сердечники?', 25549),
(8474, 'ruRU', 'Ты хочешь мне что-то показать?', 25549),
(8477, 'ruRU', 'Ну что, $n, ты $gпринес:принесла; мне молот Отембе?', 25549),
(8479, 'ruRU', '$gПринес:Принесла; ли ты голову Зул\'Мароша?', 25549),
(8480, 'ruRU', 'Ну что, удалось тебе собрать потерянное оружие?', 25549),
(8482, 'ruRU', 'Ты мне что-то $gпринес:принесла;? Дай-ка взглянуть...\r\n', 25549),
(8483, 'ruRU', 'Ну что, удалось тебе разобраться с этим прохвостом?', 25549),
(8487, 'ruRU', 'Ну что, $n, готовы ли образцы, которые я просила?', 25549),
(8490, 'ruRU', 'Ну что, $n, удалось ли тебе зарядить рунный камень?', 25549),
(8491, 'ruRU', 'А, ты уже здесь! Ну, где же шкуры?', 25549),
(8884, 'ruRU', 'Мы, следопыты из Обители Странников, делаем все, чтобы исправить урон, нанесенный нашим прекрасным землям. И ради этого мы готовы на все!$B$BНу что, где головы мурлоков?', 25549),
(8885, 'ruRU', 'Ты, $c, – оружие моей мести и победы! Ну что, кольцо у тебя с собой?', 25549),
(8886, 'ruRU', 'Я так рада, что ты мне помогаешь, $n! Я даже могу улыбаться, впервые за много дней. Но как подумаю, что эти чудища сделали с моим кораблем и что происходит с Кель\'Таласом...$B$BНу что, удалось тебе найти хотя бы часть груза?', 25549),
(8887, 'ruRU', 'Привет тебе, $c! Ты – услада для моих усталых глаз. Я понимаю, что глупо сидеть тут, когда стоянка захвачена Презренными. Велендрис и его следопыты поклялись защищать меня, при условии, что я уберусь отсюда, как только получу обратно свой груз.$B$BА что это там у тебя? Оно выглядит смутно знакомым...', 25549),
(8889, 'ruRU', 'Удалось ли тебе отключить источники энергии? Мне отсюда плохо видно...', 25549),
(8891, 'ruRU', 'Что это? Какая знакомая тетрадка... О нет! Этот журнал... мои исследования... с них-то все и началось!', 25549),
(8895, 'ruRU', 'Да, $c?', 25549),
(9062, 'ruRU', 'Что, нету? Ну, ищи дальше! Это очень важная книга, $c!', 25549),
(9064, 'ruRU', 'С какой целью ты прерываешь мою лекцию, $c?', 25549),
(9066, 'ruRU', 'Ну что, $n, $gвыполнил:выполнила; ли ты то, о чем я просил?', 25549),
(9067, 'ruRU', 'Это тебя я только что послал за припасами для праздника? Или это был не ты? Ну, в конце концов, не могу же я всех в лицо помнить! У меня ведь столько... интересных знакомых!$B$BТак чего тебе надо?', 25549),
(9076, 'ruRU', 'Ну так что, удалось тебе добыть его голову или нет? У меня нет лишнего времени, $n!', 25549),
(9130, 'ruRU', 'Да, что тут у тебя?', 25549),
(9133, 'ruRU', 'Список довольно длинный, $gдруг:подруга;. Дайте-ка посмотреть.', 25549),
(9134, 'ruRU', 'О, с виду – увесистый ящик! Ты хочешь погрузить его на одну из моих крылатых красоток?', 25549),
(9135, 'ruRU', '$c, ты так скоро $gвернулся:вернулась;? Не похоже, чтобы тут было все, что я запрашивала!', 25549),
(9147, 'ruRU', 'Ну? Ты $gпринес:принесла; то, что я просила? Поспеши, иначе этот прекрасный юный эльф умрет!', 25549),
(9148, 'ruRU', 'Письмо при тебе?', 25549),
(9255, 'ruRU', 'У тебя что-то есть для меня?', 25549),
(9360, 'ruRU', 'Что это у тебя?', 25549),
(9403, 'ruRU', 'Только вода из водопада Элрендар достаточно чиста, чтобы использовать ее в магии! Есть ли у тебя такая вода?', 25549),
(9404, 'ruRU', 'Ну что, где ветка? Неси ее скорее!', 25549),
(9705, 'ruRU', 'Что тебе удалось найти, $n?', 25549),
(10166, 'ruRU', 'Ты $gвернулся:вернулась;, $n! $gСделал:Сделала; ли ты то, о чем я просила?', 5549),
(11403, 'ruRU', '$n, рад снова Вас видеть. Я уверен, что дети наслаждаются рассказами о вашем героизме.', 25549),
(11966, 'ruRU', 'Пламенный привет тебе, почтенный $c. Добро пожаловать на священную землю праздника Огненного солнцеворота.', 25549),
(12133, 'ruRU', 'Да, $n?', 25549),
(12155, 'ruRU', 'Да, $n?', 25549),
(13479, 'ruRU', 'Где же скорлупа?', 25549),
(13503, 'ruRU', 'Ты $gпринес:принесла; десять шоколадных яиц?', 25549),
(14081, 'ruRU', 'Ах, вы получили мое письмо? Хорошо.', 25549),
(14171, 'ruRU', 'Ты уже $gпринес:принесла; поминальный хлеб?', 25549),
(31580, 'ruRU', 'Как там твои питомцы?', 25549),
(37440, 'ruRU', 'Некогда при помощи магии мы подчинили себе многие существа этого острова. Но когда Плеть уничтожила Солнечный Колодец, наша власть над здешними животными ослабла. Магические осколки – все, что осталось от наших заклинаний, и мы надеемся создать из них новое устройство, чтобы вновь подчинить себе местную фауну.$B$BВозможно, осколки также помогут нам понять, что за проклятие поразило наш остров...', 25549),
(37443, 'ruRU', 'Тебе удалось найти мои вещи? Как только мы укрепим нашу власть на Острове Солнечного Скитальца, они понадобятся мне для работы. А пока я должен следить за Колодцем... точнее за тем, что от него осталось.', 25549),
(94020, 'ruRU', 'Ну, как водичка?', 25549);

REPLACE INTO `quest_offer_reward_locale` VALUES
(8325, 'ruRU', 'Что же, ты успешно $gсправился:справилась; со своим первым заданием, прими мои поздравления. Твои успехи вселяют в меня уверенность, что ты пойдешь гораздо дальше, чем те молодые эльфы крови, что пропускают мимо ушей уроки наставников. Дальнейшие успехи будут вознаграждаться, и не только знаниями, но и кое-чем более ощутимым.$B$BОднако твоя работа здесь пока не закончена. Тебе еще многому предстоит научиться...', 25549),
(8326, 'ruRU', 'Теперь башня и ее окрестности станут относительно безопасными, пусть и ненадолго. Ты хорошо $gпотрудился:потрудилась;, но если мы хотим здесь прочно обосноваться, необходимо взять под контроль весь остров. А для этого придется сталкиваться с куда более грозными противниками, чем обезумевшие маназмеи и рыси.$B$BВозьми мой подарок, $n, он тебе, несомненно, пригодится в дальнейшем.', 25549),
(8327, 'ruRU', '$n, магистр Эрона говорила мне, что ты скоро прибудешь. Видишь на западе высокое здание с резными шпилями, парящее в воздухе? Это Академия Фалтриена. Тебе предстоит отбить ее у одного из Презренных – эльфов крови, поддавшихся своим самым низменным страстям.$B$BНадеюсь, ты $gготов:готова; к битве. Это станет для тебя не просто уроком доблести, но и примером того, что с тобой случится, если ты забудешь о том, кто ты есть.', 25549),
(8330, 'ruRU', 'Отлично! Я знал, что ты прекрасно справишься. Как только мы почувствуем себя в безопасности на этом острове, я сумею найти этим вещам хорошее применение.$B$BКак я и обещал, сумка теперь твоя. Думаю, это справедливая награда!', 25549),
(8334, 'ruRU', 'Хотя гибель древунов не приносит мне радости, твое свершение показывает мне, что ты $gсозрел:созрела; для выполнения важнейшей задачи на Острове Солнечного Скитальца. Выбери награду – для следующего задания тебе понадобится надежное оружие. От твоего успеха зависит дальнейшая судьба острова.', 25549),
(8335, 'ruRU', 'Голова Фелендрена... ты $gдостоин:достойна; похвалы, $n. Ты $gпреуспел:преуспела; там, где прочие, как и Фелендрен, потерпели крах. Возможно, ты и правда уже $gготов:готова; совершать подвиги во имя эльфов крови.$B$BТвой успех говорит о том, что ты $gспособен:способна; преодолеть серьезные испытания, таящиеся в чащобах Лесов Вечной Песни... и поверь мне, они уже ждут тебя.', 25549),
(8338, 'ruRU', 'Как интересно... Когда я говорю \"интересно\", это значит, что я крайне взволнован.$B$BВосстановление контроля над островом после разрушения Солнечного Колодца – задача чрезвычайно тяжелая. Подозреваю, что за всеми нашими бедами стоит одна и та же злая сила, и этот осколок поможет мне понять, что же на самом деле происходит.$B$BТы мудро $gпоступил:поступила;, принеся его мне, $n. Вот, возьми это в награду за предусмотрительность. Благодарю тебя.', 25549),
(8345, 'ruRU', 'Ах, $n, благодарю тебя за то, что ты $gпосетил:посетила; святилище Дат\'Ремара. Прежде всего следует похвалить тебя за чувство долга и почтительность – они послужат тебе не только здесь, но и повсюду в Азероте.$B$BЧто до странных ощущений – несомненно, это от порчи, поразившей Остров Солнечного Скитальца. Мы обратим на это внимание; спасибо за предупреждение!', 25549),
(8346, 'ruRU', 'Сегодня ты славно $gпотрудился:потрудилась;, $n. Твоя тяга к учебе показывает мне, что ты одолеешь неутолимую жажду, которую приходится терпеть всем эльфам крови.$B$BОднако не зазнавайся. Стремись к новым знаниям и неустанно применяй их. Только усердие спасет нашу расу.$B$BВозьми этот подарок – он тебе пригодится. Теперь ступай и верни былую славу нашему народу!', 25549),
(8347, 'ruRU', 'О, привет, $c! Дошел до меня слух, что $gмолодой:молодая; и $gталантливый:талантливая; $gэльф:эльфийка;, хорошо послуживший магистру Эроне, направляется сюда, дабы помочь Курьерам. Мы не откажемся от помощи, зная, что ты $gпроявил:проявила; себя так хорошо.$B$BНадеюсь, ты выполнишь для нас парочку поручений?', 25549),
(8350, 'ruRU', 'Благодарю за быструю доставку.$B$BИ пока ты здесь, чувствуй себя как дома. Если у тебя еще нет камня возвращения – возьми его. Он позволит тебе мгновенно перенестись в таверну – но не чаще, чем раз в полчаса. Если вдруг потеряешь свой камень возвращения – просто зайди в любую таверну, и хозяин охотно даст тебе другой камень.', 25549),
(8463, 'ruRU', 'Прекрасно, $n!', 25549),
(8468, 'ruRU', 'Наконец-то этот негодяй, Таэлис, получил по заслугам! Молодец, $n. Теперь-то Презренные присмиреют хотя бы на время!', 25549),
(8472, 'ruRU', 'Молодец, $n! Теперь, когда наши волшебные святилища не работают в полную силу, эти энергетические сердечники очень сильно поспособствуют решению наших проблем.', 25549),
(8473, 'ruRU', 'Значит, дело сделано... Будь прокляты эти времена, вынудившие нас пойти на крайние меры... и будь проклята Плеть!$B$BЗапомни, $n: мы должны защищать свои земли во что бы то ни стало! И мы победим!', 25549),
(8474, 'ruRU', 'О-о... эта подвеска... Я подарила ее Старому Белостволу, после того как его народ помог нам отстроить нашу деревню.$B$BБоюсь, это означает, что он…$B$B*Эльфийка откашливается и берет себя в руки.*$B$BСпасибо, что $gпринес:принесла; мне эту вещь, $n. Я хотела бы попросить тебя об одной услуге...', 25549),
(8475, 'ruRU', 'Разумеется, Плеть еще нескоро отступится от нас, но все же оборонять тропу Мертвых необходимо, и мы ценим любую помощь!', 25549),
(8476, 'ruRU', 'Молодец, $n! Чем больше у нас будет таких, как ты, то тем быстрее мы вернем нашим землям прежнее великолепие.', 25549),
(8477, 'ruRU', 'Да, $n, слухи не лгали! Этот молот – легкий, и в то же время мощный. Теперь я смогу завершить несколько начатых и не оконченных мною вещей! И, разумеется, первая же из них – твоя!', 25549),
(8479, 'ruRU', 'О да! Наконец-то Зул\'Марош получил по заслугам! Он сжег деревню Вень\'яши. Я убил много Амани, прежде чем меня затолкали в эту клетку! Я спрятал кое-что в песке – это будет мой дар тебе.$B$BОх... яд расходится по жилам... Пора мне помирать...', 25549),
(8480, 'ruRU', 'Отлично, $n! Зададим жару этим Презренным!', 25549),
(8482, 'ruRU', 'Все это было у ночного эльфа? Точно? Язык-то явно дворфийский…$B$BНасколько я понимаю из письма, тот, кто его написал, не сам устроил аварию, но был прислан сюда, чтобы понаблюдать за ее результатами. Тут сказано, что наши усилия опасны и безрассудны... но вот кто это был?$B$BНу разумеется! Тот посланец из Стальгорна! Не глупо ли было доверяться тому, кто принадлежит к Альянсу?', 25549),
(8483, 'ruRU', 'Ага, дело сделано! Прекрасно.$B$BПредводителю следопытов уже обо всем сообщили – поверь мне, дворфы дорого заплатят за предательство.$B$BСегодня ты $gоказал:оказала; большую услугу своему народу, $n!', 25549),
(8486, 'ruRU', 'Спасибо, $n. Теперь, когда ситуация под контролем, можно отправить туда рабочих и все наладить. Надеюсь, там ничего серьезного...', 25549),
(8487, 'ruRU', 'Отлично! Я наложу на эти образцы заклятие усиления, чтобы порча стала заметнее...', 25549),
(8488, 'ruRU', 'Нет, $n, мои надежды тщетны... Сама природа этой почвы изменилась. Спасибо тебе за помощь. Напоследок окажи мне, пожалуйста, еще одну услугу.', 25549),
(8490, 'ruRU', 'Отлично! Значит, наша оборона от Плети продержится еще немного. Спасибо тебе за помощь, $n!', 25549),
(8491, 'ruRU', 'Отлично, $n! Вот, возьми в награду эту часть доспеха. Из доставленных тобою шкур я смогу сделать еще.', 25549),
(8884, 'ruRU', 'Молодец, $c, ты неплохо $gпотрудился:потрудилась;! Судя по запаху, тебе удалось добыть все, что я просил – а может, и более того. Эти головы нам еще пригодятся. На уху или еще куда-нибудь...$B$BУвы, но, боюсь, твои усилия результата не дали. Мурлоки и не думают отступать! Нам надо действовать более решительно!', 25549),
(8885, 'ruRU', 'Наконец-то! Правда, мурлоки так и не ушли, но все же приятно было видеть, как они забегали в панике, когда ты $Gсразил:сразила; их так называемого \"вождя\". Я благодарю тебя, а вместе со мной – и все син\'дорай Луносвета!$B$BПожалуйста, выбери одну из этих вещей в награду за оказанную тобой услугу!', 25549),
(8886, 'ruRU', 'Да! Вот он! Ты спасаешь меня от разорения! Тебе удалось отомстить этим мерзким тварям!$B$BНу, теперь, если мне только удастся уговорить наших славных следопытов помочь мне с грузом, я наконец-то выберусь отсюда! Надо было вернуться сразу, как только Велендрис сумел отбить верфь.$B$BВот, возьми эту монету. Большего я себе позволить не могу, но должна же я хоть как-то вознаградить тебя за труды!', 25549),
(8887, 'ruRU', 'Ох, $n, ты прелесть, просто прелесть! Я и понятия не имела, что эти гадкие мурлоки из племени Темной Чешуи украли еще и навигационные карты! А ведь без них я не смогла бы ходить по морю, даже если бы мы отвоевали стоянку и отремонтировали корабль!$B$BСпасибо тебе большое! Вот, возьми эту монету, как знак моей благодарности!', 25549),
(8888, 'ruRU', 'Ах, магистр обо мне тревожится? Как это мило. Лучше бы он обо мне побеспокоился раньше, когда мы были еще в замке!\r\n\r\n$B$BНу, неважно. Пожалуйста, $c, выслушай меня внимательно. Мне придется попросить тебя об услуге.', 25549),
(8889, 'ruRU', 'Я так благодарна тебе за помощь! Однако печально слышать, что некоторые из моих сотоварищей поддались искушению…$B$BТеперь, когда источники энергии отключены, я, пожалуй, побуду здесь и подожду, пока все успокоится, а потом проберусь внутрь и заберу их останки...', 25549),
(8890, 'ruRU', 'О нет! Значит, я опоздал... Это все моя вина.$B$BМои исследования альтернативных источников магии зашли слишком далеко, прежде чем я догадался положить этому конец. Если бы только я отправился туда сам... или если бы они вняли моим предупреждениям!$B$BИх судьба на моей совести, $c. Но все равно, я благодарю тебя за то, что ты $gпомог:помогла; истерзанным душам моих бывших учеников обрести покой. Меня отчасти утешает то, что они недолго пребывали в этом состоянии, которое для эльфа хуже смерти.', 25549),
(8891, 'ruRU', 'Вот оно, $n. Свидетельство моего преступления. В этом дневнике описаны все мои безрассудные исследования.$B$BЯ не внимал предостережениям, упрямо продолжал свое дело и чуть не пропустил момент, после которого стало бы слишком поздно. Осознав свою ошибку, я сделал все, что мог. Но, увы, некоторые мои ученики успели зайти слишком далеко. Я объявил эвакуацию Шпиля, чтобы увести всех подальше от порчи, но в спешке забыл отключить энергию.$B$BЯ сожгу эту рукопись, чтобы более никто не пал ее жертвой. Я лишь хотел помочь син\'дорай.', 25549),
(8892, 'ruRU', 'Пусть знают, что с нами лучше не связываться! Молодец, $n.', 25549),
(8894, 'ruRU', 'Ну, думаю, этого должно быть достаточно, не правда ли? Спасибо за помощь, $c. Могу только надеяться, что этот беспорядок окончательно ликвидируют к тому времени, как в Замок Блеклых Сумерек вернется магистр.$B$BНа вот, возьми эту мелочь. Это немного, но больше у меня при себе сейчас нет. Можешь перед уходом ликвидировать еще нескольких тварей, если тебя не затруднит.', 25549),
(8895, 'ruRU', 'Спасибо, $n. Я ждал этого письма.', 25549),
(9035, 'ruRU', 'Все, сбежали. Видно, не понравился им мой огненный шар! Но вот вещи наши они побросали в реку...', 25549),
(9062, 'ruRU', 'Ой, она вся промокла! Что же делать? Инструктор Антеол этого не одобрит!$B$BСлушай, вот тебе деньги! И у меня есть идея...', 25549),
(9064, 'ruRU', 'Так ты говоришь, что эти два остолопа сулили тебе взятку за то, чтобы обмануть меня? Очень хорошо, что ты ко мне $gпришел:пришла;, $n!', 25549),
(9066, 'ruRU', 'Превосходно, $n! Не волнуйся, они не останутся в этом облике навечно. Однако из числа моих учеников они исключены до тех пор, пока не докажут, что достойны у меня учиться.\r\n', 25549),
(9067, 'ruRU', 'О, ты оказываеться, весьма $gэнергичный:энергичная; $gюноша:барышня!$B$BДа, это все как раз то, что надо. Ты, несомненно, заслуживаешь награды за то, что $gраздобыл:раздобыла; для меня все это. И, наверное, что-нибудь сверх обещанной платы...$B$BДа-да, совсем забыл: вот тебе приглашение на праздник! И в следующий раз, как будешь у меня, $c, прошу тебя, переоденься во что нибудь... более праздничное.  ', 25549),
(9076, 'ruRU', 'Ага, тебе все-таки удалось его одолеть! Ну, конечно, вряд ли бы ты его $gпоймал:поймала;, если бы мои воины его не загнали…$B$BДа шучу я, шучу! Молодец, $c. Ты еще завоюешь себе славу.', 25549),
(9119, 'ruRU', 'Оглядись вокруг. Нельзя сказать, что все в порядке!$B$BВ Западном святилище произошла серьезная авария. Нужно сделать все, чтобы ситуация не ухудшилась!', 25549),
(9130, 'ruRU', 'Значит, Сатиэль просит тебя отправиться в Луносвет и доставить ее товар? Долетим во мгновение ока… за скромную плату, естественно.', 25549),
(9133, 'ruRU', 'Это еще что? Сатиэль нужен весь этот товар?!$B$BУ тебя хотя бы есть помощник? $gСам:Сама; ты вряд ли справишься.', 25549),
(9134, 'ruRU', 'Возвращаешься в деревню Легкий Ветерок, в леса Вечной Песни? Доставлю с ветерком!', 25549),
(9135, 'ruRU', 'Ну ладно, раз уж он пообещал, что остальное прибудет отдельным грузом, то положусь на его слово. Хотя работаем вместе мы и недолго, но пока он всегда доставлял товар в срок.$B$BСпасибо, $n. И вот тебе монетка за труды... все равно она только без толку карман тянет.', 25549),
(9144, 'ruRU', 'Пожалуйста, помоги... Я... мне нужно... в Транквиллион... Мне нельзя подвести…$B$B*Эльф крови снова впадает в забытье, взгляд его становится стеклянным.*', 25549),
(9147, 'ruRU', 'Вовремя, $n! Я уж собралась было копать могилку нашему приятелю.$B$BПохоже, мое зелье действует – мальчик-то приходит в себя.$B$BЭй, похоже, он хочет что-то тебе сказать! Почему бы тебе не поговорить с ним?', 25549),
(9148, 'ruRU', 'Наконец-то! Мы ждали ответа от лорда-регента несколько недель! Посмотрим, что он пишет...$B$B*Вандрил начинает читать письмо.*$B$BЧто такое? Тьма? Он ощущает присутствие тьмы в Призрачных землях?! Будто я сам не вижу!$B$BИ этого ответа мы так долго дожидались?', 25549),
(9252, 'ruRU', 'Спасибо тебе большое, $n. Работа у нас неблагодарная, но твоими стараниями она станет чуть-чуть полегче.', 25549),
(9253, 'ruRU', 'Должно быть, тебя прислал кто-то из деревни Легкий Ветерок? Я знал, что рано или поздно помощь непременно подоспеет.', 25549),
(9254, 'ruRU', 'Очень приятно, что моя бывшая наставница обо мне не забывает. Как жаль, что она давно утратила веру в мой успех!$B$BНе пытайся уговорить меня вернуться к ней, не трать времени зря. Лучше помоги мне в исследованиях либо уходи.', 25549),
(9255, 'ruRU', 'Эти записи... шокируют. Если все это правда, то урон, нанесенный земле Тропы Мертвых, необратим!$B$BЯ немедленно сообщу об этом великому магистру! Тем больше причин нашему народу оставить этот мир и искать свою истинную судьбу в Запределье!', 25549),
(9256, 'ruRU', 'Спасибо, что $gпришел:пришла;, $n. Все хуже, чем мы думали. Презренные захватили Причал Солнечного Паруса!', 25549),
(9258, 'ruRU', 'А, тебя прислал мой брат! Да, у меня есть дело, в котором мне пригодится помощь.', 25549),
(9352, 'ruRU', 'Ночные эльфы? Здесь? Вот крысы!$B$BКак ты думаешь, имеют ли они отношение к аварии в моем святилище? Если у тебя есть какие-то сведения, лучше незамедлительно передать их капитану Печати Солнца!', 25549),
(9358, 'ruRU', 'Ты здесь, чтобы нам помогать? Так что же ты молчишь? Помощь нам всегда требуется!', 25549),
(9359, 'ruRU', 'Ты хочешь нам помочь? Замечательно!$B$BБорьба с троллями Амани дается нам недешево, и хорошие бойцы вроде тебя нам всегда нужны.', 25549),
(9360, 'ruRU', 'Тролли отвлекали нас своими атаками, планируя нападение на деревню Легкий Ветерок? Мы этого совершенно не ожидали!', 25549),
(9363, 'ruRU', 'Ты $gпринес:принесла; очень важные сведения, $n. Теперь, когда мы знаем о планах троллей, мы будем готовы к нападению.$B$BНас не застанут врасплох!', 25549),
(9394, 'ruRU', 'Кто ты? Ты не из учеников магистра, это точно!$B$BТебя прислали помочь мне ликвидировать все это безобразие?', 25549),
(9395, 'ruRU', 'О, магистр Рассветная Странница наконец-то откликнулась на мои огромные просьбы! Как это мило с ее стороны. Надо будет доложить о ее поведении лорду-регенту в Луносвет. Она чудовищно груба!$B$BНо вам тут не о чем тревожиться. Полагаю, ваше появление означает, что я наконец-то получу долгожданные припасы для моей вечеринки!', 25549),
(9402, 'ruRU', 'Что ж, молодец, молодец... Стоило мне попросить тебя прыгнуть в пруд, и ты это $gсделал:сделала;! Интересно, чего бы ты ни сделал, если бы тебя попросил об этом один из лучших друзей!$B$BЕсли ты ждешь награды за труд, вот тебе в награду совет: никогда не берись за дело, не узнав сначала, что ты с этого будешь иметь. Главное оружие мага – это его ум. Запомни это и постарайся впредь первым делом пускать в ход мозги.', 25549),
(9403, 'ruRU', 'Ну-с, посмотрим, что там у тебя…$B$B*Антеол рассматривает флакон на просвет.*$B$BДа, это подойдет. Молодец, $n.', 25549),
(9404, 'ruRU', 'Ты $gвыполнил:выполнила; мою просьбу, $n, и можешь получить заслуженную награду.', 25549),
(9704, 'ruRU', 'С тела курьера похищено все, кроме одного свертка. Судя по описанию Аларион, это и есть сверток Эроны.', 25549),
(9705, 'ruRU', 'Во имя Солнечного Колодца! Это третий курьер, которого мы потеряли за последний месяц!$B$BЯ ценю твою отвагу – не каждый осмелится сунуться на Рассветную улицу. Стражам нужно лучше следить за этими злосчастными Презренными.', 25549),
(10166, 'ruRU', 'Я более не принадлежу к этому миру и вынужден признать свое поражение. Мир изменился навеки, ничто уже не будет прежним.$B$BОставь подвеску здесь, со мной, $n. Может быть, в один прекрасный день, когда эльфы исчезнут, на этом самом месте прорастет новое дерево – среди сгоревшего леса и остовов мертвых древней.', 25549),
(11357, 'ruRU', 'Детям нравится наблюдать за героями в деле. Надеюсь, что однажды эти сиротки станут сильными воителями Орды и погибнут в славной битве!$B$BАх, у меня все в глазах плывет от одной мысли о столь блистательной кончине...', 25549),
(11361, 'ruRU', 'Славная работа, $n! Детишки, берите пример с этой $c. Растите сильными и отважными, как она и настанет день, когда вы тоже будете сражаться за Орду!', 25549),
(11403, 'ruRU', 'Что? Этот святой томе когда-то принадлежал к пресловутому паладину альянса. Что такое Безголовый всадник? Означает ли это, что всадник потерпел поражение?$B$BЭто славный день, $n! Ваша легенда хочет сиять ярким светом, и это может продолжаться два года, когда царит страх всадника.', 25549),
(11446, 'ruRU', 'Что?! Бесплатное пиво? Да, да. Кажется, мы обещали нечто подобное.', 25549),
(11449, 'ruRU', 'Отлично, $n. Дети, посмотрите на этого $r. Да будет $gон:она; вам примером!', 25549),
(11450, 'ruRU', 'Отлично, $n. Дети, посмотрите на этого $r. Да будет $gон:она; вам примером!', 25549),
(11732, 'ruRU', 'Оскверните большой костер Альянса на нагорье Арати!', 25549),
(11755, 'ruRU', 'Оскверните большой костер Альянса во Внутренних землях!', 25549),
(11766, 'ruRU', 'Оскверните большой костер Орды в Бесплодных землях!', 19865),
(11786, 'ruRU', 'Оскверните большой костер Орды в Тирисфальских лесах!', 19865),
(11915, 'ruRU', 'Привет. Хочешь научиться новым трюкам с огнем?', 25549),
(11966, 'ruRU', 'О, что это? Какое благоухание! Уверен, это расцветет чистейшим и ярчайшим пламенем!$B$BПрими этот цветок, $n. Прими и оставь меня... Хочу насладиться этим изысканным ароматом…', 25549),
(11971, 'ruRU', 'Я был бы рад рассказать вам, что я знаю.', 25549),
(12133, 'ruRU', 'Ты $gнашел:нашла; это в тыкве Всадника без головы? Это древний символ Света. Наверняка он прежде принадлежал Всаднику, еще до того, как на него пало проклятье, и он превратился в чудовище. Спасибо тебе, $n. Этот символ следует отдать паладинам. Я постараюсь, чтобы он попал к ним.$B$BО, я чуть не забыла! У тебя есть тайный поклонник...$B$BОдин из моих подопечных хочет, чтобы я тебе передала вот это. Он слишком стесняется, чтобы отдать тебе это лично.', 25549),
(12139, 'ruRU', 'Пожар потушен! Вы с пожарной бригадой победили! Ха!$B$BНападение Всадника без головы провалилось, но пока он и его голова не уничтожены, он будет возвращаться.$B$BА пока утешайтесь тем, что вы спасли наших детей. Для меня великая честь быть свидетельницей вашей отваги!', 25549),
(12155, 'ruRU', 'Ты $gнашел:нашла; это в тыкве Всадника без головы? Это древний символ Света. Наверняка он прежде принадлежал Всаднику, еще до того, как на него пало проклятье, и он превратился в чудовище. Спасибо тебе, $n. Этот символ следует отдать паладинам. Я постараюсь, чтобы он попал к ним.$B$BО, я чуть не забыла! У тебя есть тайный поклонник...$B$BОдин из моих подопечных хочет, чтобы я тебе передала вот это. Он слишком стесняется, чтобы отдать тебе это лично.', 25549),
(13479, 'ruRU', 'Прекрасно, большое спасибо! В будущем мне могут понадобиться еще образцы, имей в виду.', 25549),
(13483, 'ruRU', 'Да-да, у меня как раз есть для тебя задание...', 25549),
(13503, 'ruRU', 'Молодчина! Нет-нет, оставь корзину себе.', 25549),
(14036, 'ruRU', 'Если хочешь научиться готовить особые блюда Пиршества странников – я могу тебе помочь. Главное – знать основы кулинарии!', 25549),
(14065, 'ruRU', 'Ах, какой пир!$B$BСпасибо, что $gприсоединился:присоединилась; к празднованию Пиршества странников!', 25549),
(14081, 'ruRU', 'Итак, начнем урок обучение верховой езды?', 25549),
(14171, 'ruRU', 'Какой же все-таки вкусный этот поминальный хлеб!$B$BПрошу, прими вот это в знак моей благодарности... Веселого тебе праздника!', 25549),
(29400, 'ruRU', 'Праздник Плетеного человека имеет богатую историю. Приятно, что Орда теперь тоже присоединится к празднованиям.', 25549),
(31579, 'ruRU', 'Отлично, $n! Ты управляешься с питомцами даже лучше, чем я $gдумал:думала;', 25549),
(31580, 'ruRU', 'Вот теперь я вижу, $n, что твои питомцы вполне здоровы. Помни, что ты в любое время можешь вылечить или оживить всех своих питомцев, обратившись к смотрителю стойл.', 25549),
(31581, 'ruRU', 'Что ж,прекрасный выбор. Рано или поздно ты соберешь отличную коллекцию!$B$BПомни, любого питомца, с которым можно драться, можно и поймать, так что не упускай такую возможность, если она вдруг появиться.', 25549),
(31824, 'ruRU', 'Отлично, $n! Теперь поговорим о том, как ловить питомцев', 25549),
(32668, 'ruRU', 'Не забудь купить скакуна, пока ты здесь. С этим тебе поможет Винестра, ее можно найти сразу за городскими воротами.', 25549),
(37439, 'ruRU', 'Сегодня ты славно $gпотрудился:потрудилась;, $n. Твоя тяга к учебе показывает мне, что ты одолеешь неутолимую жажду, которую приходится терпеть всем эльфам крови.$B$BОднако не зазнавайся. Стремись к новым знаниям и неустанно применяй их. Только усердие спасет нашу расу.$B$BВозьми этот подарок – он тебе пригодится. Теперь ступай и верни былую славу нашему народу!', 25549),
(37440, 'ruRU', 'Замечательно! Как раз то, что нужно. Я много размышлял о проклятии, поразившем Остров Солнечного Скитальца. Одно из возможных решений проблемы – собирать магические осколки и проводить эксперименты над ними. Не лучший путь, но другого я пока не вижу.$B$BКак бы то ни было, я продолжу свои исследования. Сейчас я наложу на тебя заклятие. Уверен, оно тебе поможет!', 25549),
(37442, 'ruRU', 'Ах, $n, благодарю тебя за то, что ты $gпосетил:посетила; святилище Дат\'Ремара. Прежде всего следует похвалить тебя за чувство долга и почтительность – они послужат тебе не только здесь, но и повсюду в Азероте.$B$BЧто до странных ощущений – несомненно, это от порчи, поразившей Остров Солнечного Скитальца. Мы обратим на это внимание; спасибо за предупреждение!', 25549),
(37443, 'ruRU', 'Отлично! Я знал, что ты прекрасно справишься. Как только мы почувствуем себя в безопасности на этом острове, я сумею найти этим вещам хорошее применение.$B$BКак я и обещал, сумка теперь твоя. Думаю, это справедливая награда!', 25549);

REPLACE INTO `page_text_locale` (`ID`, `locale`, `Text`, `VerifiedBuild`) VALUES ('2936', 'ruRU', 'Вы нашли святилище! Осмотрев его, вы начинаете чувствовать присутствие таинственной силы, окутывающей остров. Вам становится не по себе…$B$BНа стене вы видите бронзовую табличку с надписью:$B$B\"Это святилище Дат\'Ремара, дань уважения благороднейшему из эльфов. Пусть всякий, кто придет сюда, вспомнит о жертве, которую он принес в борьбе с Плетью, а также о его беззаветной преданности нашему народу. Процветание Кель\'Таласа – его заслуга\".', '15595');

REPLACE INTO `creature_text_locale` VALUES (15367, 0, 0, 'ruRU', 'ћужайс¤! “вои друзь¤ недолго будут оплакивать твою гибель!');