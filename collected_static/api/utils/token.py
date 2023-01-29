import time
import jwt
from api.models import User
# from django.core.exceptions import ObjectDoesNotExist

JWT_KEY = "secret"


def create_token(username, password):
    """
    生成jwt
    :param payload: dict 载荷
    :param expiry: datetime 有效期
    :param JWT_KEY: 密钥
    :return: jwt
    """
    payload = {
        "iat": int(time.time()),
        "exp": int(time.time()) + 3600 * 12,
        "password": password,
        "username": username,
    }
    token = jwt.encode(payload, JWT_KEY, algorithm='HS256')
    return token


def verify_token(token):
    """
    :param token: jwt
    :param JWT_KEY: 密钥
    :return: dict: payload
    """
    try:
        payload = jwt.decode(token, JWT_KEY, algorithms=['HS256'])
        # filter过滤的结果，如果没有符合条件的结果，是一个空querySet，first之后不会报错，所以不同捕获 ObjectDoesNotExist 错误
        user = User.objects.filter(username=payload['username']).first()
        if not user:
            return {'verified': False, 'msg': '用户不存在！'}
        return {'verified': True, 'msg': '校验成功', 'user': user}
    except jwt.PyJWTError:
        return {'verified': False, 'msg': 'Token异常！'}
    # except ObjectDoesNotExist:
    #     return {'verified': False, 'msg': '用户不存在！'}
