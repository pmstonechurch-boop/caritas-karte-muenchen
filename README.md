# Caritas Einrichtungen – Raum München & Freising

Interaktive Karte aller Caritas-Einrichtungen im Raum München und Freising.

## Features

- **80+ Einrichtungen** auf einer interaktiven Karte
- **17 Kategorien** mit farbcodierten Markern (Beratung, Pflege, Kinder, Migration, etc.)
- **Suchfunktion** zum schnellen Finden von Einrichtungen
- **Kategorie-Filter** zum Ein-/Ausblenden bestimmter Einrichtungstypen
- **Marker-Clustering** für bessere Übersicht bei vielen Standorten
- **Route planen** – direkter Link zu Google Maps für Wegbeschreibung
- **Mobilfreundlich** – responsive Design für Smartphone und Tablet

## Technologie

- [Leaflet.js](https://leafletjs.com/) – Open-Source JavaScript-Bibliothek für interaktive Karten (BSD-2-Clause)
- [OpenStreetMap](https://www.openstreetmap.org/) – Freie Kartendaten (ODbL)
- [Leaflet.markercluster](https://github.com/Leaflet/Leaflet.markercluster) – Marker-Clustering Plugin (MIT)
- Gehostet auf [GitHub Pages](https://pages.github.com/)

## Lizenzen

Alle verwendeten Kartendaten und Bibliotheken sind frei nutzbar:
- **Leaflet.js**: BSD-2-Clause Lizenz
- **OpenStreetMap-Kacheln**: © OpenStreetMap-Mitwirkende (ODbL)
- **Marker Cluster**: MIT Lizenz

## Datenquellen

Die Standortdaten wurden aus öffentlich zugänglichen Quellen des Caritasverbands der Erzdiözese München und Freising e.V. zusammengestellt:
- [caritas-nah-am-naechsten.de](https://www.caritas-nah-am-naechsten.de)
- [caritas.de](https://www.caritas.de)

## Lokale Entwicklung

Einfach `index.html` im Browser öffnen – es werden keine Build-Tools benötigt.

```bash
# Oder mit einem lokalen Server:
python3 -m http.server 8000
# Dann http://localhost:8000 im Browser öffnen
```

## Beitragen

Fehlt eine Einrichtung oder stimmt eine Adresse nicht? Pull Requests und Issues sind willkommen!

## Lizenz

MIT License
