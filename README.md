# 나의 Neovim 설정 (My Neovim Configuration)

이 저장소는 Lua 기반의 현대적이고 모듈화된 Neovim 설정을 담고 있습니다. 플러그인 관리는 `lazy.nvim`을 사용하며, 가독성과 유지보수성을 최우선으로 고려하여 구성되었습니다.

## ✨ 주요 특징

* **빠른 속도**: `lazy.nvim`을 사용한 플러그인 지연 로딩
* **모듈화된 구조**: 기능별(옵션, 키맵, 플러그인)로 분리된 깔끔한 설정
* **Lua 기반**: Vimscript를 최소화한 완전한 Lua 설정
* **주요 기능**: 향상된 구문 분석, 퍼지 파인더, 파일 탐색기, 빠른 커서 이동 등 필수 개발 기능 포함
* **개선된 라인 넘버링**: 일반 모드에서는 상대 번호, 입력 모드에서는 절대 번호를 표시하여 가독성 향상

---
## 📂 파일 구조

```bash
~/.config/nvim/
├── init.lua         -- 메인 진입점
└── lua/
    ├── config/      -- 핵심 설정
    │   ├── autocmds.lua
    │   ├── keymaps.lua
    │   ├── line_numbering.lua
    │   └── options.lua
    └── plugins/       -- 플러그인 관련 설정 (Lazy.nvim)
        ├── init.lua
        └── spec/
            ├── colorscheme.lua
            ├── comment.lua
            ├── hop.lua
            ├── indent_blankline.lua
            ├── lualine.lua
            ├── lsp.lua(mason.nvim)
            ├── neotree.lua
            ├── surround.lua
            ├── telescope.lua
            └── treesitter.lua
```

## 📦 설치된 플러그인

| 플러그인 | 설명 |
|---|---|
| **lazy.nvim** | 플러그인 매니저 |
| **mason.nvim** | LSP 서버, 포맷터, 린터 등을 쉽게 관리 |
| **catppuccin** | 세련된 다크/라이트 컬러 스킴 |
| **lualine.nvim** | Neovim 하단의 상태 표시줄 |
| **telescope.nvim** | 파일, 텍스트 검색을 위한 퍼지 파인더 |
| **neo-tree.nvim** | 파일 탐색기 트리 (Git 상태 아이콘 포함) |
| | `A` Added, `M` Modified, `D` Deleted, `R` Renamed, `?` Untracked, `I` Ignored, `U` Unstaged, `S` Staged, `C` Conflict |
| **nvim-treesitter** | 빠르고 정확한 구문 분석 및 하이라이팅 |
| **hop.nvim** | "Easy Motion" 스타일의 빠른 커서 이동 |
| **vim-surround** | 쌍, 따옴표, 태그 등 주변을 감싸는 요소를 쉽게 관리 |
| **Comment.nvim** | `gcc` (주석 토글), `gc` (선택 영역 주석) 등 편리한 주석 기능 |
| **indent-blankline.nvim** | 들여쓰기 레벨을 시각적으로 표시 |

---
## ⌨️ 주요 키맵

**leader** 키는 `Space` 키로 설정되어 있습니다.

| 모드 | 키 | 기능 | 관련 플러그인/기능 |
|---|---|---|---|
| Insert, Visual | `jk` | Normal 모드로 전환 | Core |
| Normal | `<leader>v`  | Visual Block 모드 시작 | Core |
| Normal | `<C-p>` | 파일 이름으로 찾기 | Telescope |
| Normal | `<leader>ff` | 파일 이름으로 찾기 | Telescope |
| Normal | `<leader>fg` | 파일 내용으로 찾기 (Live Grep) | Telescope |
| Normal | `<leader>fr` | 최근 파일 목록 | Telescope |
| Normal | `<leader>fb` | 현재 Neovim세션의 열려있는 모든 버퍼(파일) 목록 | Telescope |
| Normal | `<leader>fh` | Neovim 내장 도움말 검색 | Telescope |
| Normal | `<C-n>` | 파일 탐색기 열기/닫기 | Neo-tree |
| Normal | `<leader>s` | 현재 보이는 화면에서 한 글자로 점프 | Hop |
| Normal | `<leader>S` | 현재 보이는 화면에서 두 글자로 점프 | Hop |
| Normal | `<C-h/j/k/l>` | 창 간 이동 | Core |
| Normal | `<leader>h` | 검색 하이라이트 지우기 | Core |
| Normal | `<C-x>` | 현재 창 닫기 (파일, Neo-tree 등) | Core / Neo-tree |
| Normal | `K` | Context 정보를 보여줌 | Mason |
| Normal | `gd` | Definition 파일로 이동 | Mason |
| Normal | `<leader>ca` | 오류시 누르면 code action을 보여줌 | Mason |

---
## ⚙️ 핵심 설정 (options.lua)

* **들여쓰기**: 탭을 공백 2칸으로 설정 (`expandtab`, `tabstop=2`, `shiftwidth=2`)
* **UI**: 줄 번호(`number`, `relativenumber`), 현재 줄 표시(`cursorline`) 활성화
* **키맵 딜레이**: `<leader>` 키 조합의 입력 대기 시간을 500ms로 설정 (`timeoutlen=500`)
* **자동 저장**: 파일 저장 시 존재하지 않는 디렉터리를 자동으로 생성

---
## 🚀 설치 방법

### 사전 요구사항:

* Neovim (v0.8.0 이상)
* Git
* Nerd Font (아이콘 표시를 위해 필요)

### 기존 설정 백업 (선택 사항):

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

### 저장소 복제:
```bash
git clone <YOUR_REPOSITORY_URL> ~/.config/nvim
```

### Neovim 실행:
Neovim을 실행하면 lazy.nvim이 자동으로 플러그인들을 설치합니다.

```bash
nvim
```

설치가 완료된 후 Neovim을 다시 시작하면 모든 설정이 적용됩니다.
