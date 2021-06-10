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
› Bootstrap Framework inkl. Grid  
› Bootstrap Navbar  
› Authentifizierung mit Devise inkl. Beschreibung Model/Tabelle und Views  
› CSS Image Sprites inkl. CSS-Klasse .core-sprite und Position Icons  
› Dummy-Phone mit Carousel-Funktion  
› Sass und SCSS vs. CSS  
› Partial Views (generell und am Beispiel Instagram-Applikation)  
› Rails Migrationen (generell und am Beispiel Instagram-Applikation)  

## Aufbau der Doku  
Ich werde in dieser Dokumentation die verschiedenen Technologien, welche ich verwendet habe beschreiben.  
Die Themen werden betitelt und sinngemäs angeordnet  
Am Ende werde ich meine Selbstreflexion beschreiben  

## Technologien  

### Bootstrap Framework  
Bootstrap kannte ich schon vom Ük.  
Bootstrap ist nach einem "Raster/Tabellen-Prinzip" aufgebaut.  

Mit Bootstrap kann man eine neue Zeile einfügen, und diese Zeile kann man in Teile aufteilen. Maximal 12.
Beispiel, wenn man eine Zeile in zwei Abschnitte aufteilen will:  
```html
<div class="row">
  <div class="col-lg-6">
  </div>
  <div class="col-lg-6">
  </div>
</div>
```
Bedeutung von "col-lg-6":  
"col" weist auf eine neue Column, also Kolonne hin.
"lg" weist auf die Bildschirmart hin. In diesem Fall "lg", also Desktop grösse.  
"6" ist die Breite der Kolonne.  
"12" wäre die maximalbreite, jedoch kann man die spliten wie man will, solange es zusammen 12 ergibt.  
In diesem Fall haben wir zwei sechsen, bedeutet die Zeile ist in zwei Teile unterteilt.  
(Phone und Loginscreen)  

### Bootstrap Navbar  
Eine Navigation ist ein "navigation header" zuoberst der Seite.  
Mit Bootstrap kann eine Navigation extended oder collapsed sein. Abhängig von der Bildschirmgrösse.  
Das macht Bootstrap automatisch.  
Was alles in der Navbar ist, wird in einer Liste festgelegt.  

### Devise authentifizierung
Die Devise Gem ist Benutzer für die Benutzer-Authentifizierung, Es erstellt Anmelde- und Anmeldeformulare, es kann auch verwendet werden, um Benutzerkonten für die Privatsphäre zu erstellen.

Es:
* ist Rack-basiert;
* eine komplette MVC-Lösung, die auf Rails-Engines basiert;
* Erlaubt es, mehrere Modelle gleichzeitig anzumelden;
* Basiert auf einem Modularitätskonzept: Verwenden Sie nur das, was Sie wirklich brauchen.

### CSS Image Sprites
Ein Bild-Sprite ist eine Sammlung von Bildern, die in einem einzigen Bild zusammengefasst sind.  

Eine Webseite mit vielen Bildern kann sehr lange zum Laden brauchen und erzeugt mehrere Serveranfragen.  

Durch die Verwendung von Bild-Sprites wird die Anzahl der Serveranfragen reduziert und Bandbreite gespart.  
  
Beispiel für die Verwendung:
``` css
#home {
  width: 46px;
  height: 44px;
  background: url(img_navsprites.gif) 0 0;
}
```

### Dummy-Phone
Das Phone ist ein Hintergrund-Bild.  
Die Grösse und Bilder auf dem Phone sind durch Sass-Klassen perfekt aufeinander gestellt.  

Die Bilder sind in einem Bootstrap - Karussel    
Das Karussell ist eine Diashow zum Durchlaufen einer Reihe von Inhalten, die mit CSS 3D-Transformationen und JavaScript erstellt wurde. Es funktioniert mit einer Reihe von Bildern oder Text.

### Sass vs CSS
Vorteile/Nachteile von Sass über CSS:
| Vorteile                | Nachteile                   |
|-------------------------|-----------------------------|
| Übersichtlicher Code    | Code muss kompiliert werden |
| Umfangreiches Framework | Erschwerte Fehlersuche      |
| Variabeln               | Höherer Lernaufwand         |
| Mehr Möglichkeiten      |                             |

### Partial Views
Mit Partial Views können auf einer View andere Views gerendert werden.  
Dies wird mit diesem Command gemacht:

``` ruby
<%= render "_partial" %>
```

### Rails Migrationen
Migrationen sind eine Möglichkeit, Ihr Datenbankschema im Laufe der Zeit auf konsistente Weise zu ändern. 

Man kann sich jede Migration als eine neue "Version" der Datenbank vorstellen. Ein Schema beginnt mit nichts darin, und jede Migration verändert es, um Tabellen, Spalten oder Einträge hinzuzufügen oder zu entfernen. Active Record weiß, wie Sie Ihr Schema entlang dieser Zeitachse aktualisieren und es von einem beliebigen Punkt in der Historie auf die neueste Version bringen können.

## Selbstreflexion  
Ich wusste schon ziemlich viel über Bootstrap, Sass und HTML.  
Wir hatten schon mehrere Üks, welche dieses Thema behandelten und auch in der Freizeit habe ich viel mit diesem Thema experimentiert.  
Devise war für mich neu, das kannte ich vorher noch nicht.  

Devise ist ein mächtiges Tool, welches nicht mal schwer ist, einzusetzen.  

Natürlich hat der Sass Refresh auch geholfen. Ich selber arbeite auch in der Firma mit Sass, bedeutet, ich profitiere doppelt.  

Wie bin ich vorgegangen?  
Am Anfang wollte ich es auf meine Art lösen. Jedoch nach einer Doppellektion habe ich gemerkt, dass das nichts wird.  
Also habe ich neu angefangen, diesesmal mit den Arbeitsblättern.  

Das hat ziemlich gut funktioniert.  

Ich habe laufend keine Dokumentation geschrieben, weil für mich ist dieses Repo schon genug Doku + der Text, welche ich gerade schreibe.  

Schwierigkeiten hatte ich am Anfang mit dem Github, ich hatte Schwierigkeiten damit, das lokale Repo auf den Origin zu bringen.  
Nach ein paar Stunden konnte ich jedoch das Problem mit Stackoverflow lösen.  

Verstanden habe ich im Auftrag alles, es war ziemlich klar aufgebaut, ausserdem waren die Technologien nicht die schwierigsten, zudem mir schon ein paar bekannt waren.  

Besser machen werde ich nächstes mal, dass ich von Anfang an den Arbeitsblättern folge.  
Wenn ich es auf meine Art mache, kann ich mich schnell im Kreis umdrehen und keine wirklichen Fortschritte machen.  

## Fazit
Der Auftrag fande ich nicht schwer. Die meisten Schritte waren schon ausführlich in den Arbeitsblättern beschrieben.  
Bis auf Devise kannte ich das meiste bereits. Jedoch ein Refresh dieser Themen tat gut.  
  
Es hat mir neue Möglichkeiten gezeigt, was alles in so einer kurzen Zeit, mit so einem simplem Framework (Bootstrap) möglich ist.  
Ausserdem finde ich die Einführung in Devise spannend und hätte nicht gedacht, dass das so simpel ist.  
