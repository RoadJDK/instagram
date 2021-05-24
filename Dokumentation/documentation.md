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

### Devise authentifizierung

### CSS Image Sprites

### Dummy-Phone

### Sass vs CSS

### Partial Views

### Rails Migrationen

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
