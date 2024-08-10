# Github Actions

- 제공형태 : self-hosted, github-hosted
- 사용언어 : YAML
- 기본경로 : .github/workflows/\*.yml

`구성요소`

- Workflow : 하나 이상의 Job으로 구성된 프로세스
- Event : workflow를 동작시키는 trigger
- Job : 동일한 runner에서 실행되는 step의 모음
- Action : custom application
- Runner : workflow를 수행하는 서버
- Artifact : 작업 완료 후 보관하는 결과물
- Cache : 자주 사용되는 패키지나 Tool
  - maven, gradle, npm, yarn, pip
