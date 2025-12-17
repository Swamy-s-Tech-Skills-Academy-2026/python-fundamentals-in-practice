# 📋 Repository Structure

> **🎯 Single Source of Truth**: This document (`docs/RepositoryStructure.md`) is the **authoritative source** for repository structure information. Other files (`.cursor/rules/`, `.github/copilot-instructions.md`) reference this document for structure details.

This document provides a detailed overview of the Python Fundamentals repository structure.

---

## 📁 Complete Repository Structure

```text
python-fundamentals/
├── 📚 docs/
│   ├── images/                 # Screenshots and educational images
│   │   └── S1/                 # Session 1 images
│   ├── RepositoryStructure.md  # This file
│   └── sessions/
│       └── L1/                 # Level 1: Noob → Nerd
│           ├── _Plan.md        # Complete Level 1 curriculum plan (sorts first)
│           └── 01_S1.md        # Session 1: Python Introduction & Environment
├── 💻 src/
│   └── L1/
│       └── S1/                 # Session 1 practice files
│           ├── 01_hello.py
│           ├── 02_interactive_hello.py
│           └── bytecode_demo.py
├── 🔧 scripts/                 # Development and utility scripts
│   ├── docs-lint.ps1           # Markdown linting script
│   ├── docs-links.ps1          # Link validation script
│   ├── show-tree.ps1           # Repository structure generator
│   └── repo-structure.txt      # Generated structure
├── ⚙️ .github/
│   ├── workflows/
│   │   └── docs-quality.yml    # CI/CD for documentation quality
│   └── copilot-instructions.md
├── 📄 README.md                # Main project README
├── 📄 LICENSE                  # MIT License
└── 📋 Configuration files      # .markdownlint*, lychee.toml, .gitignore
```

---

## 📂 Directory Descriptions

### `docs/`

Contains all educational documentation:

- **`images/`**: Educational images organized by session (S1, S2, etc.)
- **`sessions/`**: Session documentation organized by level (L1, L2, etc.)
  - Each level contains:
    - `_Plan.md`: Complete level curriculum plan (underscore sorts first)
    - `01_S1.md`, `02_S2.md`, etc.: Numbered session documentation
    - `05_MP1.md`, `10_MP2.md`: Mini project documentation

### `src/`

Contains all practice code files:

- Organized by level (`L1/`, `L2/`, etc.)
- Each level contains session directories (`S1/`, `S2/`, `MP1/`, etc.)
- Practice files use numeric prefixes: `01_name.py`, `02_name.py`, etc.

### `scripts/`

PowerShell utility scripts for development:

- **`docs-lint.ps1`**: Markdown linting automation
- **`docs-links.ps1`**: Link validation using Lychee
- **`show-tree.ps1`**: Repository structure generator
- **`repo-structure.txt`**: Generated structure output

### `.github/`

GitHub configuration:

- **`workflows/`**: CI/CD pipelines for quality assurance
- **`copilot-instructions.md`**: AI assistant guidelines

### `.cursor/`

Cursor AI configuration:

- **`rules/`**: Modular rule files for Cursor AI

---

## 📝 File Naming Conventions

### Python Practice Files

- Format: `{number}_{descriptive_name}.py`
- Examples: `01_hello.py`, `02_interactive_hello.py`, `03_type_conversion.py`
- Location: `src/L{level}/S{session}/` or `src/L{level}/MP{number}/`

### Session Documentation

- Format: `{number}_S{session}.md` or `{number}_MP{number}.md` (for future sessions)
- Plan: `_Plan.md` (underscore prefix sorts first)
- Examples: `01_S1.md`, `_Plan.md` (currently available)
- Location: `docs/sessions/L{level}/`

### Images

- Format: `{descriptive_name}.PNG` or `.png`
- Examples: `Help_V1.PNG`, `Py_Source_ByteCode.PNG`
- Location: `docs/images/S{session}/`

---

## 🔗 Path Reference Patterns

### Practice File References

```markdown
`src/L1/S1/01_hello.py`
`src/L1/S1/02_interactive_hello.py`
`src/L1/S1/bytecode_demo.py`
```

### Session Documentation References

```markdown
[Session 1](docs/sessions/L1/01_S1.md)
[Level 1 Plan](docs/sessions/L1/_Plan.md)
```

### Image References

```markdown
![Help System](../../images/S1/Help_V1.PNG)
```

---

## 📊 Current Repository Status

### Level 1 (Noob → Nerd) - 🚧 In Progress

| #   | File        | Topic                               | Practice Files |
| --- | ----------- | ----------------------------------- | -------------- |
| -   | `_Plan.md`  | Level Overview                      | -              |
| 1   | `01_S1.md`  | Python Introduction & Environment   | 3 files        |
| 2   | `02_S2.md`  | Variables & Data Types              | 3 files        |

**Practice Files in S1:**

- `01_hello.py` - Basic output and comments
- `02_interactive_hello.py` - User input and f-strings
- `bytecode_demo.py` - Python compilation demonstration

**Practice Files in S2:**

- `01_variables.py` - Variable basics and naming
- `02_data_types.py` - Python data types exploration
- `03_type_conversion.py` - Type conversion examples

### Future Sessions & Levels

- 🔄 **Level 1 Sessions 2-10**: Planned for future development
- 🔄 **Level 2-9**: Planned for future development

---

## 🚀 Quick Navigation

- **Main README**: [README.md](../README.md)
- **Level 1 Plan**: [docs/sessions/L1/_Plan.md](sessions/L1/_Plan.md)
- **Session 1**: [docs/sessions/L1/01_S1.md](sessions/L1/01_S1.md)

---

**Last Updated**: December 2025
