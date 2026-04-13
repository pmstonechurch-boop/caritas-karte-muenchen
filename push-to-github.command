#!/bin/bash
# Caritas Karte — Push to GitHub
# Doppelklick zum Ausführen

cd "$(dirname "$0")"
echo "📁 Arbeitsverzeichnis: $(pwd)"

# SSH-Key aus dem Projektordner verwenden
export GIT_SSH_COMMAND="ssh -i $(pwd)/.ssh/id_ed25519 -o IdentitiesOnly=yes -o StrictHostKeyChecking=no"

# Lock-Datei entfernen falls vorhanden
rm -f .git/index.lock

# Remote setzen
git remote set-url origin git@github.com:pmstonechurch-boop/caritas-karte-muenchen.git 2>/dev/null || \
git remote add origin git@github.com:pmstonechurch-boop/caritas-karte-muenchen.git

# Erst remote Änderungen holen und rebasen
echo "⬇️  Hole remote Änderungen..."
git pull --rebase origin main

# Änderungen committen und pushen
git add -A
git status

echo ""
echo "⬆️  Pushe zu GitHub..."
git commit -m "feat: Info-Icons mit Quellenangabe, Excel-Export mit Quellen-Links, Quellen-Priorisierung

- Info-Icon (ℹ) mit Quellen-Link im Popup jeder Einrichtung
- Neuer Excel/XLSX-Export (SheetJS) mit Spalten: Quelle, Quellen-Link, Quellen-Priorität
- CSV-Export um Quellen-Spalten erweitert + BOM für korrekte Umlaute
- Quellen-Priorisierung: caritas-website > offer-geocoded > job-search > osm > osm_catholic

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>"

git push -u origin main

echo ""
echo "✅ Fertig! Drücke eine Taste zum Schließen."
read -n 1
