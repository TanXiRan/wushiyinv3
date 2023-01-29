from models import *

qingping = 'あ,い,う,え,お,か,き,く,け,こ,さ,し,す,せ,そ,た,ち,つ,て,と,な,に,ぬ,ね,の,は,ひ,ふ,へ,ほ,ま,み,む,め,も,や,ゆ,よ,ら,り,る,れ,ろ,わ,を,ん'
qingpian = 'ア,イ,ウ,エ,オ,カ,キ,ク,ケ,コ,サ,シ,ス,セ,ソ,タ,チ,ツ,テ,ト,ナ,ニ,ヌ,ネ,ノ,ハ,ヒ,フ,ヘ,ホ,マ,ミ,ム,メ,モ,ヤ,ユ,ヨ,ラ,リ,ル,レ,ロ,ワ,ヲ,ン'
qingspell = 'a,i,u,e,o,ka,ki,ku,ke,ko,sa,si,su,se,so,ta,ti,tu,te,to,na,ni,' \
            'nu,ne,no,ha,hi,hu,he,ho,ma,mi,mu,me,mo,ya,yu,yo,ra,ri,ru,re,ro,wa,wo,n'

zhuoping = 'が,ぎ,ぐ,げ,ご,ざ,じ,ず,ぜ,ぞ,だ,ぢ,づ,で,ど,ば,び,ぶ,べ,ぼ,ぱ,ぴ,ぷ,ぺ,ぽ'
zhuopian = 'ガ,ギ,グ,ゲ,ゴ,ザ,ジ,ズ,ゼ,ゾ,ダ,ヂ,ヅ,デ,ド,バ,ビ,ブ,ベ,ボ,パ,ピ,プ,ペ,ポ'
zhuospell = 'ga,gi,gu,ge,go,za,zi,zu,ze,zo,da,di,du,de,do,ba,bi,bu,be,bo,pa,pi,pu,pe,po'

aoping = 'きゃ,きゅ,きょ,ぎゃ,ぎゅ,ぎょ,しゃ,しゅ,しょ,じゃ,じゅ,じょ,ちゃ,ちゅ,ちょ,にゃ,にゅ,にょ,ひゃ,ひゅ,ひょ,びゃ,びゅ,びょ,ぴゃ,ぴゅ,ぴょ,みゃ,みゅ,みょ,りゃ,りゅ,りょ'
aospell = 'kya,kyu,kyo,gya,gyu,gyo,sha,shu,sho,ja,ju,jo,cha,chu,cho,nya,' \
          'nyu,nyo,hya,hyu,hyo,bya,byu,byo,pya,pyu,pyo,mya,myu,myo,rya,ryu,ryo'
aopian = 'キャ,キュ,キョ,ギャ,ギュ,ギョ,シャ,シュ,ショ,ジャ,ジュ,ジョ,チャ,チュ,チョ,ニャ,ニュ,ニョ,ヒャ,ヒュ,ヒョ,ビャ,ビュ,ビョ,ピャ,ピュ,ピョ,ミャ,ミュ,ミョ,リャ,リュ,リョ'

ping_path = "/static/images/pings/{}.gif"
pian_path = "/static/images/pians/{}.gif"
spelling_path = "/static/audios/pronunciations/{}.mp3"
pro_skill_image_path = "/static/images/proskills/{}.png"
memory_path = "/static/images/astmemories/{}.jpg"
scene_gif_path = "/static/images/scenes/{}.gif"
scene_spelling_path = "/static/audios/scenes/{}.mp3"

ping = aoping.split(',')
pian = aopian.split(',')
spell = aospell.split(',')
# ping = qingping.split(',')[5:]
# pian = qingpian.split(',')[5:]
# spell = qingspell.split(',')[5:]
# ping = zhuoping.split(',')
# pian = zhuopian.split(',')
# spell = zhuospell.split(',')
# 6, 12, 17
for i in range(len(ping)):
    cha = Chapter.objects.filter(id__gt=16).filter(name__contains=ping[i]).first()
    info = {
        'ping': ping[i],
        'pian': pian[i],
        'spelling': spell[i],
        'chapter': cha,
        'ping_path': ping_path.format(ping[i]),
        'pian_path': pian_path.format(pian[i]),
        'spelling_path': spelling_path.format(ping[i]),
        'memory_path': memory_path.format(ping[i]),
        'scene_gif_path': scene_gif_path.format(ping[i]),
        'scene_spelling_path': scene_spelling_path.format(ping[i])
    }
    Character.objects.create(**info)
    print('success!')
# filter(id__gt=4).
#         'pro_skill_image_path': pro_skill_image_path.format(ping[i]),
# 更新普通字段
# 更新外键，更新多对多，都需要使用对应的实例


cha_qs = Character.objects.filter(id__gt=46)
for cha in cha_qs:
    cha.ping_path = ''
    cha.pian_path = ''
    cha.save()
    print('success!')

