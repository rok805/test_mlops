from flask import Flask

# Flask 애플리케이션을 생성합니다.
app = Flask(__name__)

# 루트 경로 ("/")에 대한 요청을 처리하는 뷰 함수를 정의합니다.
@app.route('/')
def hello_world():
    return 'Hello, World!'

# 애플리케이션을 실행합니다.
if __name__ == '__main__':
    app.run(port=5000)
