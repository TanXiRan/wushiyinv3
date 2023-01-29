from gtts import gTTS, gTTSError
from io import BytesIO


def get_volume(text):
    mp3 = BytesIO()
    try:
        tts = gTTS(text, lang='ja')
        tts.write_to_fp(mp3)
        return mp3.getvalue()
    except gTTSError:
        return None
