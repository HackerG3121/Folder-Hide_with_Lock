# Contributing to Folder Locker

First off, thank you for considering contributing to Folder Locker! 🎉

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include:

- **Description**: Clear description of the issue
- **Steps to Reproduce**: Detailed steps to reproduce the behavior
- **Expected Behavior**: What you expected to happen
- **Actual Behavior**: What actually happened
- **Environment**: Windows version, script version
- **Screenshots**: If applicable

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion, include:

- **Use Case**: Why this enhancement would be useful
- **Proposed Solution**: How you envision it working
- **Alternatives**: Any alternative solutions you've considered

### Pull Requests

1. Fork the repo and create your branch from `main`
2. Make your changes
3. Test thoroughly on different Windows versions if possible
4. Update documentation if needed
5. Write clear commit messages
6. Submit a pull request

## Code Style Guidelines

### Batch Script Conventions

- Use clear, descriptive variable names
- Add comments for complex logic
- Keep consistent indentation (4 spaces)
- Use `ECHO.` for blank lines
- Always include error handling

### Example:
```batch
REM Good variable naming
set/p "password=> "

REM Clear comments
REM Check if the hidden folder exists
if EXIST "Control Panel.{...}" goto UNLOCK
```

## Development Setup

1. Clone your fork
2. Create a test directory
3. Test changes with actual file operations
4. Verify on multiple Windows versions if possible

## Testing Checklist

Before submitting a PR, verify:

- [ ] Script runs without errors
- [ ] Locking functionality works
- [ ] Unlocking with correct password works
- [ ] Invalid password is rejected
- [ ] First-time setup creates folder correctly
- [ ] Script handles edge cases gracefully
- [ ] Documentation is updated

## Project Vision

This project aims to remain:
- **Simple**: Easy for beginners to understand and use
- **Lightweight**: No dependencies, pure batch scripting
- **Educational**: Good learning resource for batch scripting
- **Practical**: Solves real privacy needs

## Questions?

Feel free to open an issue with the "question" label!

Thank you for your contributions! 🙏
