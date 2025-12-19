# 📋 Repository Structure

> **🎯 Single Source of Truth**: This document (`docs/02_RepositoryStructure.md`) is the **authoritative source** for repository structure information. Other files (`.cursor/rules/`, `.github/copilot-instructions.md`) reference this document for structure details.

This document provides a detailed overview of the Python Fundamentals repository structure.

---

## 📁 Complete Repository Structure

```text
python-fundamentals/
├── 📚 docs/
│   ├── images/                 # Screenshots and educational images
│   │   └── S1/                 # Session 1 images
│   ├── meetup/                 # Meetup event descriptions
│   │   └── L1/
│   │       └── meetup-sessions.md
│   ├── sessions/               # Session documentation
│   │   └── L1/                 # Level 1: Noob → Nerd
│   │       ├── _Plan.md        # Complete Level 1 curriculum plan (sorts first)
│   │       ├── 01_S1.md        # Session 1: Python Introduction & Environment
│   │       ├── 02_S2.md        # Session 2: Variables & Data Types
│   │       └── 03_S3.md        # Session 3: Operators & Expressions
│   ├── 01_Python-Fundamentals-MasterPlan.md  # Overall curriculum master plan
│   └── 02_RepositoryStructure.md  # This file (single source of truth)
├── 💻 src/
│   ├── L1/
│   │   ├── S1/                 # Session 1 practice files
│   │   │   ├── 01_hello.py
│   │   │   ├── 02_interactive_hello.py
│   │   │   └── bytecode_demo.py
│   │   ├── S2/                 # Session 2 practice files
│   │   │   ├── 01_variables.py
│   │   │   ├── 02_data_types.py
│   │   │   └── 03_type_conversion.py
│   │   └── S3/                 # Session 3 practice files
│   │       ├── 01_arithmetic.py
│   │       ├── 02_comparisons.py
│   │       └── 03_mini_calculator.py
│   └── L2/                     # Level 2 (future)
├── 🔧 scripts/                 # Development and utility scripts
│   ├── docs-lint.ps1           # Markdown linting script
│   ├── docs-links.ps1          # Link validation script
│   ├── show-tree.ps1           # Repository structure generator
│   └── repo-structure.txt      # Generated structure
├── ⚙️ .cursor/                  # Cursor AI configuration
│   └── rules/                  # Modular rule files for Cursor AI
│       ├── 01_educational-content-rules.mdc
│       ├── 02_repository-structure.mdc
│       ├── 03_quality-assurance.mdc
│       ├── 04_markdown-standards.mdc
│       ├── 05_primary-directives.mdc
│       ├── 06_cross-level-integration.mdc
│       └── README.md
├── ⚙️ .github/                  # GitHub configuration
│   ├── workflows/
│   │   └── docs-quality.yml    # CI/CD for documentation quality
│   ├── ISSUE_TEMPLATE/         # Issue templates
│   │   ├── bug_report.md
│   │   ├── feature_request.md
│   │   ├── documentation_improvement.md
│   │   └── config.yml
│   ├── prompts/                # GitHub Copilot prompts
│   ├── copilot-instructions.md
│   └── pull_request_template.md # PR template
├── 📄 README.md                # Main project README
├── 📄 LICENSE                  # MIT License
├── 📄 CONTRIBUTING.md          # Contributing guidelines
├── 📄 CODE_OF_CONDUCT.md       # Code of conduct
├── 📄 SECURITY.md              # Security policy
├── 📁 source-material/        # Reference materials (archive/notes)
└── 📋 Configuration files      # .markdownlint*, lychee.toml, .gitignore
```

---

## 📂 Directory Descriptions

### `docs/`

Contains all educational documentation:

- **`images/`**: Educational images organized by session (S1, S2, S3, etc.)
  - Currently contains images for Session 1 (Help_V1.PNG, Help_V2.PNG, Py_Source_ByteCode.PNG)
- **`meetup/`**: Meetup event descriptions organized by level
  - `L1/meetup-sessions.md`: Session descriptions for Meetup.com
- **`sessions/`**: Session documentation organized by level (L1, L2, etc.)
  - Each level contains:
    - `_Plan.md`: Complete level curriculum plan (underscore sorts first)
    - `01_S1.md`, `02_S2.md`, `03_S3.md`, etc.: Numbered session documentation
    - `05_MP1.md`, `10_MP2.md`: Mini project documentation (future)
- **`01_Python-Fundamentals-MasterPlan.md`**: Overall curriculum master plan
- **`02_RepositoryStructure.md`**: This file (single source of truth for structure)

### `src/`

Contains all practice code files:

- Organized by level (`L1/`, `L2/`, etc.)
- Each level contains session directories (`S1/`, `S2/`, `MP1/`, etc.)
- Practice files use numeric prefixes: `01_name.py`, `02_name.py`, etc.
- **Note**: `__pycache__/` directories are auto-generated by Python and contain compiled bytecode (`.pyc` files)

### `scripts/`

PowerShell utility scripts for development:

- **`docs-lint.ps1`**: Markdown linting automation
- **`docs-links.ps1`**: Link validation using Lychee
- **`show-tree.ps1`**: Repository structure generator
- **`repo-structure.txt`**: Generated structure output

### `.github/`

GitHub configuration:

- **`workflows/`**: CI/CD pipelines for quality assurance
  - `docs-quality.yml`: Documentation quality checks
- **`ISSUE_TEMPLATE/`**: Issue templates for bug reports, feature requests, and documentation improvements
  - `bug_report.md`: Template for reporting bugs
  - `feature_request.md`: Template for requesting features
  - `documentation_improvement.md`: Template for documentation suggestions
  - `config.yml`: Issue template configuration
- **`prompts/`**: GitHub Copilot prompts
- **`copilot-instructions.md`**: AI assistant guidelines for GitHub Copilot
- **`pull_request_template.md`**: Template for pull requests with quality checklist

### `.cursor/`

Cursor AI configuration:

- **`rules/`**: Modular rule files for Cursor AI
  - `01_educational-content-rules.mdc`: Zero-copy policy, transformative workflow
  - `02_repository-structure.mdc`: Repository structure context
  - `03_quality-assurance.mdc`: Quality checklists
  - `04_markdown-standards.mdc`: Markdown authoring standards
  - `05_primary-directives.mdc`: Primary directives for AI assistants
  - `06_cross-level-integration.mdc`: Cross-level content integration
  - `README.md`: Overview of rule files

### Root Level Files

Community and project documentation:

- **`README.md`**: Main project README with quick start guide and repository overview
- **`LICENSE`**: MIT License
- **`CONTRIBUTING.md`**: Contributing guidelines aligned with educational content rules and quality standards
- **`CODE_OF_CONDUCT.md`**: Community code of conduct for a welcoming, inclusive learning environment
- **`SECURITY.md`**: Security policy for responsible disclosure of vulnerabilities
- **`source-material/`**: Reference materials and source content (archive/notes, not part of curriculum)

---

## 📝 File Naming Conventions

### Python Practice Files

- Format: `{number}_{descriptive_name}.py`
- Examples: `01_hello.py`, `02_interactive_hello.py`, `03_type_conversion.py`, `01_arithmetic.py`, `02_comparisons.py`, `03_mini_calculator.py`
- Location: `src/L{level}/S{session}/` or `src/L{level}/MP{number}/`

### Session Documentation

- Format: `{number}_S{session}.md` or `{number}_MP{number}.md` (for future sessions)
- Plan: `_Plan.md` (underscore prefix sorts first)
- Examples: `01_S1.md`, `02_S2.md`, `03_S3.md`, `_Plan.md` (currently available)
- Location: `docs/sessions/L{level}/`

### Meetup Descriptions

- Format: `meetup-sessions.md`
- Location: `docs/meetup/L{level}/`
- Purpose: External-facing session descriptions for Meetup.com events

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
[Session 2](docs/sessions/L1/02_S2.md)
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
| 3   | `03_S3.md`  | Operators & Expressions             | 3 files        |

**Practice Files in S1:**

- `01_hello.py` - Basic output and comments
- `02_interactive_hello.py` - User input and f-strings
- `bytecode_demo.py` - Python compilation demonstration

**Practice Files in S2:**

- `01_variables.py` - Variable basics and naming
- `02_data_types.py` - Python data types exploration
- `03_type_conversion.py` - Type conversion examples

**Practice Files in S3:**

- `01_arithmetic.py` - Arithmetic operators demonstration
- `02_comparisons.py` - Comparison operators and chained comparisons
- `03_mini_calculator.py` - Interactive calculator with all operations

### Future Sessions & Levels

- 🔄 **Level 1 Sessions 4-10**: Planned for future development
- 🔄 **Level 2-9**: Planned for future development

---

## 🚀 Quick Navigation

- **Main README**: [README.md](../README.md)
- **Master Plan**: [docs/01_Python-Fundamentals-MasterPlan.md](01_Python-Fundamentals-MasterPlan.md)
- **Level 1 Plan**: [docs/sessions/L1/_Plan.md](sessions/L1/_Plan.md)
- **Session 1**: [docs/sessions/L1/01_S1.md](sessions/L1/01_S1.md)
- **Session 2**: [docs/sessions/L1/02_S2.md](sessions/L1/02_S2.md)
- **Session 3**: [docs/sessions/L1/03_S3.md](sessions/L1/03_S3.md)

---

**Last Updated**: December 2025
