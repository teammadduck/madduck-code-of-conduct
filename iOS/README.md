# iOS Development Guidelines

This folder contains development guidelines and AI agent rules for iOS projects.

## Contents

| File | Description |
|------|-------------|
| [iOS.md](iOS.md) | Full iOS development guidelines |
| [iOS.pdf](iOS.pdf) | PDF version (auto-generated) |
| [.cursor/rules/swift-rules.mdc](.cursor/rules/swift-rules.mdc) | AI agent rules for Cursor/Claude |

## Using AI Agent Rules

To use the Swift rules in your iOS project, copy the `.cursor/rules` folder to your project root:

```bash
# From your project root
cp -r path/to/madduck-code-of-conduct/iOS/.cursor .
```

Or add as a submodule and symlink:

```bash
# Add submodule
git submodule add https://github.com/user/madduck-code-of-conduct.git .code-of-conduct

# Create symlink
mkdir -p .cursor/rules
ln -s ../../.code-of-conduct/iOS/.cursor/rules/swift-rules.mdc .cursor/rules/swift-rules.mdc
```

The rules will automatically apply to all `.swift` files in your project.

---
Developed with 🖤 at [Mobven](https://mobven.com/)
