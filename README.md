## CodeDetector, a TextEdit plugin based on SIBML

Code Detector for TextEdit는 Mac OS X의 내장 텍스트 에디터의 기능을 보강하기 위한 SIMBL 기반의 플러그인으로, 내장 텍스트 에디터에서 코드 페이지를 제대로 분류하지 못해서 파일을 제대로 열지 못하는 문제를 해결합니다.

### Downloads

- ~~Code Detector for TextEdit for Leopard(10.5.2)~~
- [Code Detector for TextEdit source code(LGPL)](https://github.com/maidaro/codedetector/archive/refs/tags/1.0.zip)

### 설치 방법

1. SIMBL를 다운받아 설치합니다.
2. Code Detector for TextEdit 바이너리를 다운받아 Library/Application Support/SIMBL/Plugins 폴더에 복사합니다. 만일 폴더를 찾을 수 없는 경우 새로 만들어 주세요.

### 개량된 UniversalDetector 탑재

개량된 모질라의 UniversalDetector를 사용하여 내장 텍스트 에디터의 기능에 의존하지 않고 자체적으로 코드 페이지를 검사하기 때문에 보다 정확한 방법으로 텍스트 파일의 인코딩을 찾아냅니다.

### Mac OS X 내장 텍스트 에디터에 대하여

Mac OS X의 내장 텍스트 에디터는 파일 읽기를 위한 인코딩 설정을 자동으로 해놓을 경우 일부 한글 문서의 코드 페이지를 제대로 검출해내지 못해서 에러 메시지를 뱉어냅니다. 사실 완벽하게 코드 페이지를 구분하는 것 자체가 거의 불가능하지만, 내장 텍스트 에디터의 코드 페이지 검출 능력은 웹 브라우저의 코드 페이지 검출 능력에 비해 현저히 낮습니다. 내장 텍스트 에디터의 이런 한계 때문에 텍스트를 읽을 때 기본 인코딩 옵션을 한국어로 지정해 둘 경우 일본어 문서와 같은 비 한글 문서를 읽을 때 문제가 생기는 등 부작용이 발생하기 때문에 결국 최선의 방법으로는 “자동” 옵션으로 두는 방법입니다.

### 플러그인 개요

SIMBL 플러그인을 테스트를 하면서 발견한 사실은 내장 텍스트 에디터는 “자동”옵션에서 코드 페이지를 명확하게 판단하지 못하는 경우 OS의 기본 언어 설정과 같은 임의의 코드 페이지로 열기보다는 그냥 에러 메시지를 출력하도록 되어 있습니다. 이 점에 착안 TextEditPlugin의 개발 방향은 우선 기본 인코딩 옵션으로 파일 열기를 시도한 뒤 실패할 경우 플러그인의 옵션에 지정된 코드 페이지로 다시 여는 것으로 결정했습니다.
