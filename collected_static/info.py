from api.models import *

# 字符
ping_url = "static/images/pings/"
pian_url = "static/images/pians/"
spelling = "static/audios/pronunciations/"
pro_skill_url = "static/images/proskills/"
memory_url = "static/images/astmemories/"

# 名场面
gif_url = "static/images/scenes/"
spelling_url = "static/audios/scenes/"

# 单词
pronounce_url = "/static/audios/words/{}.mp3"

chapter_ls = [
    {
        "name": "",
        "proskill": "",
        "memory": "",
        "scene": "",
        "words": [],
    },
]

scene_ls = [
    {
        "name": "",
        "text": "",
        "cn_text": "",
        "text_from": "",
    }
]

word_ls = [
    {
        "name": "赤い[あかい]",
        "explanation": "（形）红色的",
    },
    {
        "name": "顔[かお]",
        "explanation": "（名）脸",
    },
    {
        "name": "秋[あき]",
        "explanation": "（名）秋天",
    },
    {
        "name": "柿[かき]",
        "explanation": "（名）柿子",
    },
    {
        "name": "行く[いく]",
        "explanation": "（动）去",
    },
    {
        "name": "書く[かく]",
        "explanation": "（动）写",
    },
    {
        "name": "ケア[care]",
        "explanation": "（名）看护；照料",
    },
    {
        "name": "ここ",
        "explanation": "（代）这里",
    },
    {
        "name": "咲く[さく]",
        "explanation": "（花）开",
    },
    {
        "name": "餌[えさ]",
        "explanation": "（名）鱼饵；诱饵",
    },

    {
        "name": "牛[うし]",
        "explanation": "（名）牛",
    },
    {
        "name": "試合[しあい]",
        "explanation": "（名）比赛",
    },
    {
        "name": "寿司[すし]",
        "explanation": "（名）寿司",
    },
    {
        "name": "好き[すき]",
        "explanation": "（名、形动）喜欢",
    },
    {
        "name": "世界[せかい]",
        "explanation": "（名）世界",
    },
    {
        "name": "席[せき]",
        "explanation": "（名）座位",
    },
    {
        "name": "嘘[うそ]",
        "explanation": "（名）谎言",
    },
    {
        "name": "そこ",
        "explanation": "（代）那儿，那里",
    },
    {
        "name": "蛸[たこ]",
        "explanation": "（名）章鱼",
    },
    {
        "name": "高い[たかい]",
        "explanation": "（形）高的；贵的",
    },
    {
        "name": "父[ちち]",
        "explanation": "（名）父亲",
    },
    {
        "name": "口[くち]",
        "explanation": "（名）嘴巴",
    },
    {
        "name": "机[つくえ]",
        "explanation": "（名）书桌",
    },
    {
        "name": "暑い[あつい]",
        "explanation": "（形）热的",
    },
    {
        "name": "手[て]",
        "explanation": "（名）手",
    },
    {
        "name": "地下鉄[ちかてつ]",
        "explanation": "（名）地铁",
    },
    {
        "name": "時[とき]",
        "explanation": "（名）时间，时候",
    },
    {
        "name": "テスト[test]",
        "explanation": "（名）考试",
    },
    {
        "name": "夏[なつ]",
        "explanation": "（名）夏天",
    },
    {
        "name": "貴方[あなた]",
        "explanation": "（代）你",
    },

    {
        "name": "肉[にく]",
        "explanation": "（名）肉",
    },
    {
        "name": "鬼[おに]",
        "explanation": "（名）鬼",
    },
    {
        "name": "犬[いぬ]",
        "explanation": "（名）狗",
    },
    {
        "name": "死ぬ[しぬ]",
        "explanation": "（动）死亡",
    },
    {
        "name": "猫[ねこ]",
        "explanation": "（名）猫",
    },
    {
        "name": "稲[いね]",
        "explanation": "（名）稻子",
    },
    {
        "name": "布[ぬの]",
        "explanation": "（名）布",
    },
    {
        "name": "残す[のこす]",
        "explanation": "（动）留下",
    },
    {
        "name": "花[はな]",
        "explanation": "（名）花",
    },
    {
        "name": "母[はは]",
        "explanation": "（名）母亲",
    },
    {
        "name": "日[ひ]",
        "explanation": "（名）太阳",
    },
    {
        "name": "一つ[ひとつ]",
        "explanation": "（名）一个",
    },
    {
        "name": "船[ふね]",
        "explanation": "（名）船",
    },
    {
        "name": "服[ふく]",
        "explanation": "（名）衣服",
    },
    {
        "name": "下手[へた]",
        "explanation": "（形动）笨拙；不擅长",
    },
    {
        "name": "臍[へそ]",
        "explanation": "（名）肚脐",
    },
    {
        "name": "細しい[ほそい]",
        "explanation": "（形）细的",
    },
    {
        "name": "阿呆[アホ]",
        "explanation": "（名）白痴",
    },
    {
        "name": "町[まち]",
        "explanation": "（名）城市",
    },
    {
        "name": "旨し[うまい]",
        "explanation": "（形）美味的，很棒的",
    },

    {
        "name": "店[みせ]",
        "explanation": "（名）商店",
    },
    {
        "name": "味噌[みそ]",
        "explanation": "（名）酱",
    },
    {
        "name": "胸[むね]",
        "explanation": "（名）胸，心胸",
    },
    {
        "name": "昔[むかし]",
        "explanation": "（名）过去",
    },
    {
        "name": "目[め]",
        "explanation": "（名）眼睛",
    },
    {
        "name": "飯[めし]",
        "explanation": "（名）饭",
    },
    {
        "name": "桃[もも]",
        "explanation": "（名）桃子",
    },
    {
        "name": "餅[もち]",
        "explanation": "（名）年糕",
    },
    {
        "name": "野菜[やさい]",
        "explanation": "（名）蔬菜",
    },
    {
        "name": "休み[やすみ]",
        "explanation": "（名）休息",
    },
    {
        "name": "雪[ゆき]",
        "explanation": "（名）雪",
    },
    {
        "name": "冬[ふゆ]",
        "explanation": "（名）冬天",
    },
    {
        "name": "良い[よい]",
        "explanation": "（形）好的",
    },
    {
        "name": "読む[よむ]",
        "explanation": "（动）阅读",
    },
    {
        "name": "楽[らく]",
        "explanation": "（名）快乐，舒适",
    },
    {
        "name": "未来[みらい]",
        "explanation": "（名）未来",
    },
    {
        "name": "理解[りかい]",
        "explanation": "（名、动）理解",
    },
    {
        "name": "リスト[list]",
        "explanation": "（名）列表",
    },
    {
        "name": "留守[るす]",
        "explanation": "（名、动）不在家",
    },
    {
        "name": "ホテル[hotel]",
        "explanation": "（代）宾馆",
    },

    {
        "name": "歴史[れきし]",
        "explanation": "（名）历史",
    },
    {
        "name": "トイレ[toilet]",
        "explanation": "（名）洗手间",
    },
    {
        "name": "色[いろ]",
        "explanation": "（名）颜色",
    },
    {
        "name": "広い[ひろい]",
        "explanation": "（形）宽阔的",
    },
    {
        "name": "私[わたし]",
        "explanation": "（代）我",
    },
    {
        "name": "悪い[わるい]",
        "explanation": "（形）不好的",
    },
    {
        "name": "天気[てんき]",
        "explanation": "（名）天气",
    },
    {
        "name": "日本[にほん]",
        "explanation": "（名）日本",
    },
    {
        "name": "こんにちは",
        "explanation": "（问候语）你好",
    },
    {
        "name": "すみません",
        "explanation": "（道歉语）对不起",
    },
    {
        "name": "雅楽[ががく]",
        "explanation": "（名）雅乐，宫廷古乐",
    },
    {
        "name": "技師[ぎし]",
        "explanation": "（名）技师",
    },

    {
        "name": "鍵[かぎ]",
        "explanation": "（名）钥匙",
    },
    {
        "name": "具合[ぐあい]",
        "explanation": "（名）情况",
    },
    {
        "name": "家具[かぐ]",
        "explanation": "（名）家具",
    },
    {
        "name": "元気[げんき]",
        "explanation": "（形动）精力；健康",
    },
    {
        "name": "髭[ひげ]",
        "explanation": "（名）胡子",
    },
    {
        "name": "ご飯[ごはん]",
        "explanation": "（名）饭",
    },
    {
        "name": "林檎[りんご]",
        "explanation": "（名）苹果",
    },
    {
        "name": "座席[ざせき]",
        "explanation": "（名）座位",
    },
    {
        "name": "事故[じこ]",
        "explanation": "（名）事故",
    },
    {
        "name": "地図[ちず]",
        "explanation": "（名）地图",
    },
    {
        "name": "ゼミ[Seminar]",
        "explanation": "(名)小组讨论",
    },
    {
        "name": "俗語[ぞくご]",
        "explanation": "（名）俗语",
    },

    {
        "name": "大学[だいがく]",
        "explanation": "（名）大学",
    },
    {
        "name": "縮む[ちぢむ]",
        "explanation": "（动）缩小",
    },
    {
        "name": "続く[つづく]",
        "explanation": "（动）继续",
    },
    {
        "name": "電話[でんわ]",
        "explanation": "(名)电话",
    },
    {
        "name": "ドア[door]",
        "explanation": "(名)门",
    },
    {
        "name": "場合[ばあい]",
        "explanation": "(名)场合",
    },
    {
        "name": "ビザ[visa]",
        "explanation": "(名)签证",
    },
    {
        "name": "豚[ぶた",
        "explanation": "(名)猪",
    },
    {
        "name": "便利[べんり]",
        "explanation": "(名·形动)方便",
    },
    {
        "name": "僕[ぼく]",
        "explanation": "(名)我（男子用语）",
    },

    {
        "name": "パンダ[panda]",
        "explanation": "(名)熊猫",
    },
    {
        "name": "ピンク[pink]",
        "explanation": "(名)粉色",
    },
    {
        "name": "プラス[plus]",
        "explanation": "(名)加号；正数",
    },
    {
        "name": "ペン[pen]",
        "explanation": "(名)钢笔",
    },
    {
        "name": "ポスト[post]",
        "explanation": "(名)邮筒；信箱",
    },
    {
        "name": "客[きゃく]",
        "explanation": "(名)客人",
    },
    {
        "name": "野球[やきゅう]",
        "explanation": "(名)棒球",
    },
    {
        "name": "去年[きょねん]",
        "explanation": "(名)去年",
    },
    {
        "name": "逆[ぎゃく]",
        "explanation": "(名)逆，倒，颠倒",
    },

    {
        "name": "牛肉[ぎゅうにく]",
        "explanation": "(名)牛肉",
    },
    {
        "name": "餃子[ぎょうざ]",
        "explanation": "(名)饺子",
    },
    {
        "name": "写真[しゃしん]",
        "explanation": "(名)照片",
    },
    {
        "name": "宿題[しゅくだい]",
        "explanation": "(名)课外作业",
    },
    {
        "name": "辞書[じしょ]",
        "explanation": "(名)词典",
    },
    {
        "name": "ジャズ",
        "explanation": "(名)爵士乐",
    },
    {
        "name": "塾[じゅく]",
        "explanation": "(名)补习学校",
    },
    {
        "name": "彼女[かのじょ]",
        "explanation": "(代)她",
    },
    {
        "name": "玩具[おもちゃ]",
        "explanation": "(名)玩具",
    },
    {
        "name": "中国[ちゅうごく]",
        "explanation": "(名)中国",
    },
    {
        "name": "チョーク[chalk]",
        "explanation": "(名)粉笔",
    },
    {
        "name": "二ャーニャー",
        "explanation": "(副)喵呜，猫叫声",
    },
    {
        "name": "ニュース[news]",
        "explanation": "(名)新闻",
    },
    {
        "name": "如実[にょじつ]",
        "explanation": "(名)真实，如实",
    },
    {
        "name": "百[ひゃく]",
        "explanation": "(名)百",
    },
    {
        "name": "ヒューマン",
        "explanation": "(名·形动)人道的",
    },
    {
        "name": "評判[ひょうばん]",
        "explanation": "(名)名声，有名",
    },
    {
        "name": "びゃっこ",
        "explanation": "(名)白虎，四神之一",
    },
    {
        "name": "ビュッフエ",
        "explanation": "(名)自助餐，冷餐会",
    },

    {
        "name": "病院[びょういん]",
        "explanation": "(名)医院",
    },
    {
        "name": "六百[ろっぴゃく]",
        "explanation": "(数)六百",
    },
    {
        "name": "ピュア",
        "explanation": "(形容)纯洁，纯粹",
    },
    {
        "name": "ぴょこぴょこ",
        "explanation": "(副)一个劲（点头）",
    },
    {
        "name": "動脈[どうみゃく]",
        "explanation": "(名)动脉",
    },
    {
        "name": "ミュージカル",
        "explanation": "(名)音乐剧，音乐的",
    },
    {
        "name": "明日[みょうにち]",
        "explanation": "(名)明天，明日",
    },
    {
        "name": "略[りゃく]",
        "explanation": "(名)省略",
    },
    {
        "name": "留学[りゅうがく]",
        "explanation": "(名)留学",
    },
    {
        "name": "旅行[りょこう]",
        "explanation": "(名・动)旅行",
    },
    {
        "name": "お母さん[おかあさん]",
        "explanation": "(名)妈妈",
    },
    {
        "name": "おじいさん",
        "explanation": "(名)爷爷；姥爷",
    },
    {
        "name": "数学[すうがく]",
        "explanation": "(名)数学",
    },
    {
        "name": "先生[せんせい]",
        "explanation": "(名)老师",
    },
    {
        "name": "姉さん[ねえさん]",
        "explanation": "(名)姐姐",
    },
    {
        "name": "お父さん[おとうさん]",
        "explanation": "(名)爸爸",
    },
    {
        "name": "大きい[おおきい]",
        "explanation": "(形)大",
    },
    {
        "name": "ケーキ[cake]",
        "explanation": "(名)蛋糕",
    },
    {
        "name": "スープ[soup]",
        "explanation": "(名)汤",
    },
    {
        "name": "合作[がっさく]",
        "explanation": "(名・动)合作",
    },
    {
        "name": "欠席[けっせき]",
        "explanation": "(名・动)缺席",
    },
    {
        "name": "切手[きって]",
        "explanation": "(名)邮票",
    },
    {
        "name": "切符[きっぷ]",
        "explanation": "(名)票",
    },

    {
        "name": "はっきり",
        "explanation": "(副·动)清楚地",
    },
    {
        "name": "いっぱい",
        "explanation": "(副)很多；满满的",
    },
    {
        "name": "ポット[pot]",
        "explanation": "(名)壶；热水瓶",
    },
    {
        "name": "雑誌[ざっし]",
        "explanation": "(名)杂志",
    }
]

for w in word_ls:
    w['pronounce_url'] = pronounce_url.format(w['name'])
    Word.objects.create(**w)
    print('success!')
# 更新普通字段
# 更新外键，更新多对多，都需要使用对应的实例

c = 0
info_ls = []
with open('h.txt', 'r') as f:
    # Read the first line
    line = f.readline()
    while line:
        c += 1
        d = dict()
        ls = [
            'pro_skill',
            'memory',
            'scene_text',
            'scene_cn_text',
            'scene_text_from',
        ]
        for i in range(5):
            d[ls[i]] = line.strip()
            line = f.readline()
        info_ls.append(d)
        print(d)
print(c)
# len(info_ls)+1
for i in range(2, len(info_ls)+1):
    qs = Character.objects.filter(id=i)
    qs.update(**info_ls[i-1])
