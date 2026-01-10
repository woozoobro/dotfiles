# Dotfiles

내 Mac 환경 백업 및 복원용 저장소

---

## 새 PC에서 (복원)

### 1. Homebrew 설치
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. 클론 및 셋업
```bash
git clone https://github.com/woozoobro/dotfiles.git ~/dotfiles
cd ~/dotfiles
./setup.sh
```

끝!

---

## 기존 PC에서 (백업/업데이트)

```bash
brew bundle dump --file=~/dotfiles/Brewfile --force
cd ~/dotfiles
git add . && git commit -m "Update Brewfile" && git push
```

---

## 설치되는 패키지 목록

### Homebrew Formulae
| 패키지 | 설명 |
|--------|------|
| ffmpeg | 미디어 변환 |
| node | Node.js |
| gh | GitHub CLI |
| maven | Java 빌드 도구 |
| ollama | 로컬 LLM |
| openjdk@17 | Java 17 |
| uv | Python 패키지 매니저 |
| bun | JavaScript 런타임 |
| gemini-cli | Gemini CLI |
| opencode | OpenCode CLI |

### Homebrew Casks (앱)
| 앱 | 설명 |
|----|------|
| claude | Claude 앱 |
| claude-code | Claude Code |
| chatgpt | ChatGPT 앱 |
| codex | Codex CLI |
| figma | 디자인 툴 |
| github | GitHub Desktop |
| maccy | 클립보드 매니저 |
| notion-calendar | 노션 캘린더 |
| obsidian | 노트 앱 |
| rectangle | 윈도우 매니저 |
| screen-studio | 화면 녹화 |
| slack | 슬랙 |
| visual-studio-code | VS Code |
| warp | 터미널 |

### VS Code Extensions
- claude-code, tailwindcss, eslint, prettier
- github-vscode-theme, rainbow-csv
- python, debugpy, pylance
- react-snippets, excalidraw-editor, pdf

---

## 팁

- 패키지 추가/삭제 후에는 Brewfile 업데이트하기
- `brew bundle list --file=~/dotfiles/Brewfile` 로 목록 확인
