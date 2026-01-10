# Dotfiles

내 Mac 환경 백업 및 복원용 저장소

---

## 기존 PC에서 (백업/업데이트)

### 1. Brewfile 업데이트
새로운 패키지를 설치했다면 Brewfile을 갱신한다.

```bash
brew bundle dump --file=~/dotfiles/Brewfile --force
```

### 2. 변경사항 저장
```bash
cd ~/dotfiles
git add .
git commit -m "Update Brewfile"
git push
```

---

## 새 PC에서 (복원)

### 1. Homebrew 설치
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. GitHub CLI 설치 및 로그인
```bash
brew install gh
gh auth login
```

### 3. 클론 및 셋업
```bash
git clone https://github.com/woozoobro/dotfiles.git ~/dotfiles
cd ~/dotfiles
./setup.sh
```

끝! 모든 패키지가 자동으로 설치된다.

---

## 포함된 파일

| 파일 | 설명 |
|------|------|
| `Brewfile` | Homebrew 패키지 목록 |
| `setup.sh` | 자동 설치 스크립트 |

---

## 팁

- 패키지 추가/삭제 후에는 항상 Brewfile 업데이트하기
- `brew bundle list --file=~/dotfiles/Brewfile` 로 목록 확인 가능
