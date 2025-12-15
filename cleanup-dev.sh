# This script clears all dirty on your PC after using for a long time.

#!/usr/bin/env bash
set -e

echo "=== CLEANUP DEV SCRIPT (SAFE MODE) ==="

# -----------------------------
# 1) Remove dpkg rc leftovers
# -----------------------------
echo "[1/8] Purging dpkg rc packages..."
RC_PKGS=$(dpkg -l | awk '/^rc/ { print $2 }')
if [ -n "$RC_PKGS" ]; then
    sudo dpkg --purge $RC_PKGS
else
    echo "  No rc packages found."
fi

# -----------------------------
# 2) APT cleanup
# -----------------------------
echo "[2/8] Cleaning apt..."
sudo apt autoremove --purge -y
sudo apt clean
sudo apt autoclean

# -----------------------------
# 3) Journal cleanup
# -----------------------------
echo "[3/8] Cleaning journal logs..."
sudo journalctl --vacuum-time=7d

# -----------------------------
# 4) User cache cleanup
# -----------------------------
echo "[4/8] Cleaning user cache..."
rm -rf ~/.cache/*

# -----------------------------
# 5) Conda cache cleanup (KEEP envs)
# -----------------------------
if command -v conda >/dev/null 2>&1; then
    echo "[5/8] Cleaning conda cache (keeping envs)..."
    conda clean --all -y
else
    echo "[5/8] Conda not found. Skipping."
fi

# -----------------------------
# 6) Snap cleanup
# -----------------------------
echo "[6/8] Cleaning old snap revisions..."
sudo snap list --all | awk '/disabled/{print $1, $3}' | \
while read snapname revision; do
    sudo snap remove "$snapname" --revision="$revision"
done || true

# -----------------------------
# 7) /tmp cleanup
# -----------------------------
echo "[7/8] Cleaning /tmp..."
sudo rm -rf /tmp/*

# -----------------------------
# 8) Update grub (safe)
# -----------------------------
echo "[8/8] Updating grub..."
sudo update-grub

echo "=== CLEANUP FINISHED ==="
echo "Reboot recommended."

