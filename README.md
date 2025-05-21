# DevOps Shell Scripts

A collection of handy shell scripts for DevOps workflows, automation, and daily operations.
Easily reusable and organized for quick access.

## 📁 Structure

Scripts are organized by category:

- `networking/` – Scripts for networking tasks (e.g., port scan, IP info)
- `docker/` – Docker-related automation (builds, cleanups, etc.)
- `kubernetes/` – Common `kubectl` helpers
- `system/` – System checks, log management, service restarts
- `aws/` – AWS CLI wrappers and helpers
- `utils/` – Miscellaneous helper scripts

Feel free to customize and expand based on your needs.

## 🚀 Usage

Make sure scripts are executable:

```bash
chmod +x script.sh
```

Run with:

```bash
./script.sh
```

> You can also add them to your PATH for global use.

## ✅ Requirements

Most scripts are written in POSIX-compatible shell. Some may depend on:

- `bash`
- `curl`
- `jq`
- `awk`
- `docker`, `kubectl`, etc. (for specific tasks)

Check individual scripts for details.

## 📦 Contributing

Pull requests are welcome! Feel free to suggest new ideas, fix bugs, or improve the code.

## 📄 License

This project is licensed under the [`MIT License`](LICENSE).
