# Contributing to DevOps Shell Scripts

Thank you for your interest in contributing to this project! This document provides guidelines and instructions for contributing.

## Development Setup

1. Fork the repository
2. Clone your fork:

   ```bash
   git clone https://github.com/YOUR-USERNAME/devops-shell-scripts.git
   ```

3. Add the original repository as upstream:

   ```bash
   git remote add upstream https://github.com/buguno/devops-shell-scripts.git
   ```

## Shell Script Standards

### General Guidelines

- Use `#!/bin/bash` as the shebang line
- Include proper error handling
- Add comments explaining complex logic
- Use meaningful variable names
- Follow the existing code style

### Script Structure

```bash
#!/bin/bash

# Script name and brief description
# Usage: ./script-name.sh [options]

# Exit on error
set -e

# Main script logic
```

### Best Practices

1. **Error Handling**
   - Use `set -e` to exit on error
   - Check for required dependencies
   - Validate input parameters
   - Provide meaningful error messages

2. **Documentation**
   - Include a header comment with script description
   - Document all functions
   - Add usage examples
   - Update README.md if necessary

3. **Testing**
   - Test scripts with different scenarios
   - Include edge cases
   - Verify error handling
   - Test on different environments if possible

## Contribution Workflow

1. Create a new branch for your feature/fix:

   ```bash
   git checkout -b feature/your-feature-name
   ```

2. Make your changes following the standards above

3. Test your changes thoroughly

4. Commit your changes with a clear commit message:

   ```bash
   git commit -m "feat(file): brief description"
   ```

> To see how to use Semantic Commit Messages: [Click Here!](https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716)

5. Push to your fork:

   ```bash
   git push origin feature/your-feature-name
   ```

6. Create a Pull Request from your fork to the main repository

## Pull Request Process

1. Update the README.md with details of changes if needed
2. Ensure the PR description clearly describes the changes
3. Include testing instructions in the PR
4. Wait for review and address any feedback

## Code Review

- All submissions require review
- We use GitHub pull requests for this purpose
- Reviewers will look for:
  - Code quality
  - Error handling
  - Documentation
  - Testing coverage
  - Security considerations

## Questions?

If you have any questions, feel free to open an issue in the repository.

Thank you for contributing! 🚀
