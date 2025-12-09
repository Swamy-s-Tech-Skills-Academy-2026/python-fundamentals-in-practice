# Python Fundamentals - Cursor Rules

## Project Overview
This is an educational Python curriculum repository for Swamy's Tech Skills Academy. The project teaches Python fundamentals through 9 progressive levels, with each level containing 10 sessions (30 minutes each) and 2 mini projects.

## Project Structure
```
python-fundamentals/
├── docs/
│   ├── images/          # Educational images and screenshots
│   └── sessions/         # Session documentation (L1/S1/, L1/S2/, etc.)
├── src/
│   └── L{level}/        # Level directories (L1, L2, etc.)
│       └── S{session}/  # Session directories (S1, S2, etc.)
│           └── *.py     # Practice files (01_name.py, 02_name.py, etc.)
├── scripts/             # PowerShell utility scripts
└── .github/             # CI/CD and copilot instructions
```

## Critical Rules

### 1. Preserve Educational Content
- **NEVER** corrupt or remove existing educational content
- **ALWAYS** maintain pedagogical flow and curriculum design
- **PRESERVE** all examples, explanations, and learning materials
- **READ** full context before making any edits
- **VERIFY** changes don't break existing content

### 2. File Naming Conventions
- **Python files**: Use descriptive names with numeric prefixes for ordering
  - Format: `01_descriptive_name.py`, `02_descriptive_name.py`
  - Example: `01_hello.py`, `02_interactive_hello.py`
- **Documentation**: Use level and session identifiers
  - Format: `L{level}/S{session}.md` or `L{level}/Plan.md`
  - Example: `L1/S1.md`, `L1/Plan.md`
- **Scripts**: Use descriptive kebab-case names
  - Example: `docs-lint.ps1`, `show-tree.ps1`

### 3. Directory Structure
- **Levels**: Always use `L{number}` format (L1, L2, L3, etc.)
- **Sessions**: Always use `S{number}` format (S1, S2, S3, etc.)
- **Path references**: Use `src/L1/S1/` not `src/S1/`
- **Documentation paths**: Use `docs/sessions/L1/S1.md` not `docs/sessions/S1.md`

## Python Code Standards

### Code Style
- **Python Version**: Target Python 3.13+
- **Style Guide**: Follow PEP 8 conventions
- **Line Length**: Prefer 79-88 characters (flexible for educational clarity)
- **Indentation**: Use 4 spaces (no tabs)
- **Comments**: Include clear, educational comments for beginners
- **Docstrings**: Use triple-quoted strings for multi-line comments/explanations

### Code Examples
- **Beginner-friendly**: All code should be understandable by complete beginners
- **Working examples**: All code must run without errors
- **Educational value**: Include comments explaining concepts
- **Progressive complexity**: Start simple, build complexity gradually

### File Headers
```python
# Filename: src/L1/S1/01_hello.py
# Session 1: Python Introduction & Environment Setup
# Description: Basic output and comments demonstration
```

### Built-in Functions Priority
- Prefer built-in functions over imports when teaching beginners
- Common built-ins: `print()`, `input()`, `type()`, `help()`, `len()`, `max()`, `min()`, `sum()`
- Introduce modules gradually (e.g., `random` in Session 4)

## Documentation Standards

### Markdown Formatting
- **Headers**: Use proper hierarchy (H1 for titles, H2 for sections)
- **Code blocks**: Always specify language (`python`, `powershell`, `bash`)
- **Links**: Use relative paths, verify all links work
- **Emojis**: Use educational emojis for visual navigation (✅, 🎯, 📚, etc.)
- **Tables**: Use markdown tables for structured information
- **Lists**: Use consistent list formatting

### Session Documentation Structure
1. **Session Overview** - Duration, type, level
2. **Learning Objectives** - What students will learn
3. **Prerequisites** - What's needed before starting
4. **Content Sections** - Progressive learning steps
5. **Practice Files** - References to source code
6. **Key Takeaways** - Summary of concepts
7. **Troubleshooting** - Common issues and solutions

### Documentation Quality
- **Linting**: All markdown must pass markdownlint checks
- **Links**: All links must be valid (use lychee for checking)
- **Accuracy**: All code examples must be tested
- **Clarity**: Write for complete beginners with no assumptions

## PowerShell Scripts

### Script Standards
- **Shebang**: Not required for PowerShell (Windows-focused)
- **Error Handling**: Include basic error handling
- **Comments**: Document script purpose and usage
- **Parameters**: Use proper parameter validation
- **Output**: Provide clear, helpful output messages

### Script Naming
- Use descriptive kebab-case: `docs-lint.ps1`, `show-tree.ps1`
- Prefix with purpose: `docs-*` for documentation scripts

## Editing Guidelines

### Safe Edits
- ✅ Fixing typos and spelling errors
- ✅ Correcting broken links
- ✅ Updating incorrect file paths
- ✅ Fixing character encoding issues
- ✅ Adding missing sections (when clearly incomplete)

### Careful Edits
- ⚠️ Modifying code examples (must test after changes)
- ⚠️ Changing file structure references
- ⚠️ Updating installation instructions
- ⚠️ Modifying pedagogical explanations

### Avoid
- 🚫 Large-scale reorganization without explicit request
- 🚫 Changing pedagogical approach or learning sequence
- 🚫 Removing or significantly altering existing explanations
- 🚫 Modifying time allocations or session structure
- 🚫 Changing the emoji-based navigation system

## Quality Checklist

Before submitting any changes:
- [ ] Content preserved - No educational material lost
- [ ] Structure intact - Formatting and organization maintained
- [ ] Links work - All file references are correct
- [ ] Code examples - All Python code is syntactically correct and tested
- [ ] Consistency - Changes align with overall project structure
- [ ] Readability - Changes improve rather than degrade clarity
- [ ] Documentation - Markdown passes linting checks

## Testing Requirements

### Python Code
- All Python files must run without syntax errors
- Test all code examples before including in documentation
- Verify output matches expected results
- Ensure beginner-friendly error messages

### Documentation
- Run markdownlint: `npx --yes markdownlint-cli2 "README.md" "docs/**/*.md"`
- Run link checker: Use lychee with `lychee.toml` configuration
- Verify all relative paths are correct
- Check all code blocks are properly formatted

## Educational Philosophy

### Learning Approach
- **30-minute sessions** - Realistic time constraints
- **Progressive complexity** - Each session builds on previous
- **Hands-on practice** - Every concept has practical application
- **Visual learning** - Emojis, diagrams, and clear formatting
- **Beginner-focused** - No assumptions about prior knowledge

### Content Quality
- **Pedagogically sound** - Based on learning theory
- **Technically accurate** - All code examples work correctly
- **Professionally presented** - Industry-standard documentation
- **Accessible** - Clear language and multiple learning styles

## Common Patterns

### File Path References
```markdown
# Correct
[Session 1](docs/sessions/L1/S1.md)
src/L1/S1/01_hello.py

# Incorrect
[Session 1](docs/sessions/S1.md)
src/S1/01_hello.py
```

### Code Example Format
```python
# Filename: src/L1/S1/01_hello.py
# Session 1: Python Introduction & Environment Setup

print('Hello, World!')
# This is a single-line comment
```

### Session Reference Format
```markdown
🧪 *Practice Files*:  
`src/L1/S1/01_hello.py`, `src/L1/S1/02_interactive_hello.py`
```

## When in Doubt

**ALWAYS:**
- Read more context before making changes
- Ask for clarification when uncertain
- Make smaller, targeted changes
- Preserve existing content
- Test code examples after modifications

**NEVER:**
- Make assumptions about what's needed
- Change content you don't fully understand
- Rush through complex modifications
- Ignore the existing pedagogical structure
- Make changes without clear justification

## Related Files
- See `.github/copilot-instructions.md` for additional detailed guidelines
- See `.markdownlint.json` for markdown linting rules
- See `lychee.toml` for link checking configuration

---

**Remember: This is educational content that transforms beginners into programmers. Every word matters, every example counts, and every student's learning journey depends on the quality and integrity of this curriculum.**

