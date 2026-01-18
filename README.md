# Minecraft Server – Reproducible Native Setup (Temporary README)

## Purpose

This repository exists to provide a **press-and-play, reproducible Minecraft server setup** that can be:

* Fully prepared on a laptop
* Cloned onto a Raspberry Pi (or any Linux server)
* Started with a single command

No Docker. No manual tweaking on the server.

---

## Invariant Inputs (DO NOT CHANGE CASUALLY)

The following inputs are **locked**. Changing more than one at a time is forbidden.

* **Minecraft Version:** 1.21.1
* **Fabric Loader Version:** 0.15.11
* **Java Major Version:** 21 (Azul Zulu)
* **Server Type:** Fabric (Vanilla-compatible)
* **Performance Mods:**

  * Lithium
  * Starlight
  * FerriteCore
  * Krypton

If you break this rule, you own the consequences.

---

## Repository Structure

```
mc-server/
├── README.md
├── server/
│   ├── run.sh
│   ├── install-fabric.sh
│   ├── install-fabric.bat
│   ├── install-zulu21.sh
│   ├── jvm.args
│   ├── fabric-installer.jar
│   ├── mods/
│   ├── config/
│   └── server.properties
├── systemd/
│   └── mc.service
└── .gitignore
```

---

## Git Rules (Non-Negotiable)

The following must **never** be committed:

* `world*/`
* `logs/`
* `libraries/`
* `start.jar`

World data is sacred. Git is not a backup system.

---

## Startup Flow

1. Java 21 is installed
2. `run.sh` is executed
3. Fabric is installed if missing
4. Server starts

No manual steps on the server beyond cloning the repo.

---

## Philosophy

* Performance over cleverness
* Reproducibility over convenience
* Boring systems are reliable systems
