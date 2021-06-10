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
› Flash-Meldungen in Rails
› JavaScript Toaster-Meldungen inkl. Optionen
› Unterschied Flash-Meldungen und Meldungen des Models
› Bootstrap Modal
› Gravatar für Benutzerbilder
› Bilder Hochladen mit CarrierWave
› Bilder mit Cloudinary in der Cloud speichern
› Mit Figaro sensitive Informationen verstecken

## Aufbau der Doku  
Ich werde in dieser Dokumentation die verschiedenen Technologien, welche ich verwendet habe beschreiben.  
Die Themen werden betitelt und sinngemäs angeordnet  
Am Ende werde ich meine Selbstreflexion beschreiben  
  
Dies ist das Dokument für den Auftrag 4+5, beziehungsweise die zweite Doku.

## Technologien  

### Flash-Meldungen
Eine Flash-Meldung ist eine Möglichkeit für die Rails-App mit dem User zu kommunizieren, als Resultat auf ihre Aktionen.  

Zum Beispiel:  
* Falsche E-Mail angegeben
* Passwort erfolgreich geändert
* Kein User gefunden

Im Controller legt man die Meldungen fest, und in den Views werden sie dann gerendert.  

### JavaScript Toaster-Meldungen
Eine Toast Meldung ist eine Alert Nachricht.  
Meistens werden diese oben Rechts in einer kleinen Box gerendert.  

Sie sollen auf die populären Handy Benachrichtigungen anspielen.  

Das ganze funktioniert mit JavaScript / JQuery

So sieht ein Beispiel aus:  
```ruby
toastr.info('Das ist eine Meldung)
```

### Unterschied Flash-Meldungen / Model-Meldungen
Eine Modelmeldung ist eine Meldung, welche bei auftreten, wenn eine Bedingung (Welche im Model definiert wurden) nicht erfüllt wurde.  
Ganz klassisch wäre das die rote Umrandung um das Form-Field.  
Diese Meldungen muss man aber definieren.  

Eine Flashmeldung kann die selbe Aufgabe übernehmen, jedoch werden die oben Rechts wie eine Pushnachricht gerendert.  
Meistens nehmen Flashmeldungen zusätzliche Aufgaben ein, und informieren User auch über erfolgreiche Logins, abänderungen oder Logouts.  


### Bootstrap Modal
Ein Bootstrap Modal ist eine Art, um einen Dialog in der Webseite darzustellen.  

Standartmässig gibt es eine kleine Box, welche einen Titel, einen Body und Buttons hat.  

So sieht ein Beispiel Modal in der Darstellung aus:
```ruby
<%= link_to "Open modal", "#my-modal", :class => "btn", "data-toggle" => "modal" %>
<div class="modal hide fade" id="my-modal" title="My modal">
  <div class="modal-header">
    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">×</button>
    <h3 id="myModalLabel">Modal header</h3>
  </div>
  <div class="modal-body">
    Modal Body
  </div>
  <div class="modal-footer">
    <button aria-hidden="true" class="btn" data-dismiss="modal">Close</button>
  </div>
</div>
```

### Gravatar
Ein "Avatar" ist ein Bild, das Sie online repräsentiert - ein kleines Bild, das neben Ihrem Namen erscheint, wenn Sie mit Websites interagieren.  

Ein Gravatar ist ein weltweit anerkannter Avatar. Sie laden ein Bild hoch und erstellen Ihr öffentliches Profil nur einmal, und wenn Sie dann an einer Gravatar-aktivierten Website teilnehmen, folgen Ihnen Ihr Gravatar-Bild und Ihr öffentliches Profil automatisch dorthin.  

Gravatar ist ein kostenloser Service für Website-Besitzer, Entwickler und Benutzer. Er ist automatisch in jedem WordPress.com-Konto enthalten und wird von Automattic betrieben und unterstützt.  

In unserem Fall ist das besonders praktisch.

### CarrierWave
CarrierWave ist ein Plugin von Cloudinary extra für Rails Applikationen.  

Das CarrierWave-Gem kann nützlich sein, um Bild-Uploads in das Modell zu integrieren. Standardmäßig speichert CarrierWave Bilder auf der lokalen Festplatte, aber es stehen auch zusätzliche Plugins für die Speicherung und Manipulation von Bildern zur Verfügung.  

Das Cloudinary gem stellt ein Plugin für CarrierWave zur Verfügung. Vorteile von CarrierWave ist das einfache Hochladen von Bildern aus HTML-Formularen in das Modell. Hochgeladene Bilder werden in der Cloud gespeichert, in der Cloud transformiert und manipuliert und automatisch über ein _CDN_ ausgeliefert.  

CDN = Content Delivery Network  
(Ein Verteiler im Netzwerk, welche vorallem Mediendateien teilt)  

### Cloudinary
Cloudinary ist ein Service für den Upload von Bildern.  

Es stellt eine API zur Verfügung, mit welcher man die hochgeladenen Bilder editieren, hosten und zur Verfügung stellen kann.  

### Mit Figaro Informationen verstecken

Figaro wurde geschrieben, um die sichere Konfiguration von Rails-Anwendungen zu erleichtern.

Konfigurationswerte enthalten oft sensible Informationen. Figaro strebt danach, standardmäßig sicher zu sein, indem es eine Konvention fördert, die die Konfiguration aus Git heraushält.

Dies ist in Produktionsumgebungen einfach, aber lokale Entwicklungsumgebungen werden oft von mehreren Anwendungen gemeinsam genutzt, was mehrere Konfigurationen erfordert.

Figaro parst eine Git-ignorierte YAML-Datei in Ihrer Anwendung und lädt deren Werte in ENV.

Somit ist es optimal für unsere Cloudinary API-Token.  

## Selbstreflexion  
Bis auf Gravatar war das meiste für mich neu.  

Jedoch fande ich den Auftrag nicht so schwer, wie der letzte.  
Das meiste war gut beschrieben, und man konnte gut folgen.  

Ausserdem kam ich gut in ein Arbeitsmodus gekommen, und habe zusätzlich das AB06 bereits gelöst.

Wie bin ich vorgegangen?  
Aus der letzten Doppellektion habe ich gelernt und bin schon bereits seit Anfang mit den Arbeitsblätter die Aufträge am lösen.  
Natürlich bei den Aufträgen, bei welchen man selber überlegen musste habe ich selber probiert, und dannach gegoogelt.  

Das hat ziemlich gut funktioniert.  

Ich habe laufend keine Dokumentation geschrieben, weil für mich ist dieses Repo schon genug Doku + der Text, welche ich gerade schreibe.  

Schwierigkeiten gab es bei mir bei diesen AB04 - AB05 nicht wirklich.  
Als es aber welche gab habe ich sie ziemlich schnell selber gelöst.  

Verstanden habe ich im Auftrag alles, es war ziemlich klar aufgebaut, ausserdem waren die Technologien nicht die schwierigsten.  

Besser machen werde ich nicht wirklich etwas, weil es schon ideal verlief.  

## Fazit
Der Auftrag fande ich nicht schwer. Die meisten Schritte waren schon ausführlich in den Arbeitsblättern beschrieben.  
Es gab neue Technologien und Services die ich kennengelernt habe.  
  
Es hat mir neue Möglichkeiten gezeigt, was alles in so einer kurzen Zeit, mit solchen Hilfsmittel möglich ist.  
