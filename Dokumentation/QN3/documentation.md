# Dokumentation Instagram Applikation

## Auftrag
Die Quicknotes sollen die vorgestellten Techniken, Methoden und Konzepte möglichst genau  
beschreiben. Fassen Sie nicht die Arbeitsschritte des Auftrages zusammen, sondern führen Sie  
nur kurz auf, was sie gemacht haben. Z.B. «Installation des Gem devise mit einem Eintrag im  
Gemfile und dem Ausführen des Befehls 'bundle install'».  

Führen Sie ausführlich auf, was die Techniken, Methoden und Konzepte bedeuten. Achten Sie  
darauf, dass alle wesentliche Themen inkl. Anwendungszweck beschrieben werden und wenn  
möglich in Zusammenhang gebracht sind. Beantworten Sie zudem folgende Fragen:  
› Wie und wo können die vorgestellten Techniken, Methoden und Konzepte in einer RailsApplikation (z.B. Instagram) angewendet werden?  
› Was sind die Vor- und was die Nachteile?  

Stellen Sie sich als Zielpublikum für die Beschreibung der Technologien Informatiker bzw.  
Informatiklernende vor, die Rails und/oder die Technologie noch nicht kennen. Die  
Beschreibung soll also nicht nur aus Benutzersicht erfolgen, sondern sollte auch technische  
Aspekte enthalten.  

Folgende Technologien/Themen müssen beschrieben werden:  
› Mit DropzoneJS: Formular «Bilder-Upload» nach der Auswahl der Bilder und vor dem Senden
  mit dem Post-Button (d.h. mit Bildervorschau)
  Ohne DropzoneJS: Fenster, das sich öffnet, um Bilder für den Post auszuwählen
› Liste mit allen Posts, mind. 2 Posts sichtbar
› Detail-Ansicht eines Posts (Post mit mehreren Bildern)

## Aufbau der Doku  
Ich werde in dieser Dokumentation die verschiedenen Technologien, welche ich verwendet habe beschreiben.  
Die Themen werden betitelt und sinngemäs angeordnet  
Am Ende werde ich meine Selbstreflexion beschreiben  
  
Dies ist das Dokument für den Auftrag 6+7, beziehungsweise die dritte Doku.

## Technologien  

### DropzoneJS
__Mit DropzoneJS:__  

Dropzone ist eine JavaScript Bibliothek, welche Bilderupload mit einer Bildervorschau ermöglicht.

__Ohne DropzoneJS__  
Ohne Dropzone kommt lediglich ein Fenster, mit welcher man die Bilder auswählen kann. Und das ganze ohne Vorschau.

Dropzone kann man innerhalb vom html aufrufen.

Hier ein kleines Beispiel:  
'''html
<form action="/file-upload"
      class="dropzone"
      id="my-awesome-dropzone"></form>
'''

Installieren tut man Dropzone als standalone.
Diese wird als zip gedownloaded und muss irgendwo im Projekt abgespeichert werden.  

Dropezone funktioniert mit JavaScript, deshalb macht man eine JavaScript Referenz am Anfang oder Schluss des files.  
'''html
<script src="./path/to/dropzone.js"></script>
'''

Thats it.

Nun kann man dropzone ganz einfach verwenden.  

Dropzone kann man in den Konfigurationsdateien von Dropzone direkt anpassen.

Zum Beispiel:
* max. files
* dateityp festlegen
* dateinamen "verbieten"

### Liste mit den Posts

## Selbstreflexion  


## Fazit
