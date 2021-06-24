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
```html
<form action="/file-upload"
      class="dropzone"
      id="my-awesome-dropzone"></form>
```

Installieren tut man Dropzone als standalone.
Diese wird als zip gedownloaded und muss irgendwo im Projekt abgespeichert werden.  

Dropezone funktioniert mit JavaScript, deshalb macht man eine JavaScript Referenz am Anfang oder Schluss des files.  
```html
<script src="./path/to/dropzone.js"></script>
```

Thats it.

Nun kann man dropzone ganz einfach verwenden.  

Dropzone kann man in den Konfigurationsdateien von Dropzone direkt anpassen.

Zum Beispiel:
* max. files
* dateityp festlegen
* dateinamen "verbieten"

Vorteile Dropzone:  
- Vorschau
- Anpassbar
- Drag and Drop

### Liste mit den Posts
Die Homepage von Instagram und unserer Applikation startet mit allen letztens veröffentlichten Bildern von den Usern.

Rails geht jeden Post durch (Welche vorher erstellt wurden) und zeigt diese an.

Jeder Post hat dabei ein oder mehrere Bilder, die Action buttons (Like, Comment etc.), den Namen, die Likes, die Kommentare und die Zeit, welche her ist, seit der Post veröffentlicht wurde.

So sieht ein einzelner Post aus:  
```html
<div class="card mt-3 post">
    <div class="card-header d-flex align-items-center">
      <%= link_to user_path(post.user), class: "no-text-decoration" do %>
        <%= image_tag avatar_url(post.user), class: "post-author-icon" %>
      <% end %>
      <%= link_to user_path(post.user), class: "normal-color no-text-decoration", title: post.user.name do %>
        <strong><%= post.user.name %></strong>
      <% end %>
      <%= link_to post_path(post), method: :delete, class: "ml-auto" do %>
        <i class="fa fa-trash-alt icon-gray"></i>
      <% end %>
    </div>

    <%= render "photos", {post: post} %>

    <div class="card-body mb-2">
      <div class="row actions">
        <div class="like-icon-post-<%= post.id.to_s %>">
          <%= render "like_icon", { is_liked: post.is_liked(current_user), post: post } %>
        </div>
        <a href="#" class="far fa-comment fa-2x icon-gray icon-spacer"></a>
        <div class="ml-auto" id="bookmark-icon-post-<%= post.id.to_s %>">
          <a href="#" class="far fa-bookmark fa-2x icon-gray icon-spacer"></a>
        </div>
      </div>
      <div id="like-text-post-<%= post.id.to_s %>">
          <%= render "like_text", { likes: post.likes } %>
      </div>
      <div>
      <div>
        <span>
          <strong><%= post.user.name %></strong>
        </span>
        <span><%= post.content %></span>
      </div>
      <%= link_to time_ago_in_words(post.created_at).upcase + " AGO",
      post_path(post), class: "light-color post-time no-text-decoration" %>
      <hr/>
      <form action="#" class="w-100">
        <div>
          <textarea class="form-control comment-input border-0" placeholder="Add a comment ..." rows="1"></textarea>
        </div>
      </form>
      <div>
      </div>
    </div>
  </div>
  </div>
```
Jeder Post ist ein Card, welcher unterteilt ist.

### Einzelansicht Post
Der Unterschied zwischen den beiden ist vorallem die Kommentar Funktion.  
Während bei der Liste die Kommentare nicht oder nur 1-2 sieht, sieht man bei der Einzelansicht alle.

So sieht ein Post in der Einzelansicht aus:
```html
<div class="d-flex flex-column align-items-center mt-3">
  <div class="row post box col-xl-10 col-lg-11 col-xs-12">
    <div class="col-lg-8 col-md-7 px-0 d-flex @post-show-img">
      <div class="align-self-center">
        <%= render "photos", { post: @post } %>
      </div>
    </div>
    <div class="col-lg-4 col-md-5 mt-sm-4 mt-md-0 post">
      <div class="row px-3 d-flex align-items-center">
        <%= link_to user_path(@post.user), class: "no-text-decoration" do %>
          <%= image_tag avatar_url(@post.user), class: "post-author-icon" %>
        <% end %>
        <%= link_to user_path(@post.user), class: "normal-color no-text-decoration d-flex align-self-center", title: @post.user.name do %>
          <strong><%= @post.user.name %></strong>
        <% end %>
        <%= link_to post_path(@post), method: :delete, class: "ml-auto" do %>
          <i class="fa fa-trash-alt icon-gray"></i>
        <% end %>
      </div>
      <hr class="mb-0"/>
      <div class="comment-list py-2">
        <% if @post.content.present? %>
          <div>
                <span>
                  <strong><%= @post.user.name %></strong>
                </span>
            <span><%= @post.content %></span>
          </div>
        <% end %>
        <!-- load comments -->
        <% 100.times do %>
          <div>
            <span><strong>Hallo M151 Instagram</strong></span>
            <span>Kommentar</span>
          </div>
        <% end %>
      </div>
      <hr class="mt-0"/>
      <div class="row actions">
        <div class="like-icon-post-<%= @post.id.to_s %>">
          <%= render "like_icon", { is_liked: @post.is_liked(current_user), post: @post } %>
        </div>
        <a href="#" class="far fa-comment fa-2x icon-gray icon-spacer"></a>
        <a href="#" class="far fa-bookmark fa-2x icon-gray ml-auto"></a>
      </div>
      <div id="like-text-post-<%= @post.id.to_s %>">
        <%= render "like_text", { likes: @post.likes } %>
      </div>
      <div class="light-color post-time">
        <%= time_ago_in_words(@post.created_at).upcase %>
        AGO
      </div>
      <hr/
      <div class="row actions">
        <form action="#" class="w-100">
          <div>
            <textarea class="form-control comment-input border-0" placeholder="Add a comment ..." rows="1"></textarea>
          </div>
        </form>        
      </div>
    </div>
  </div>
</div>
```

Man merke die Ähnlichkeit, nicht nur die optische, sondern auch die technische.

Deshalb hat man viel Code, welcher doppelt vorkommt in "Teilviews" unterteilt.

Aufgerufen wird soeine mit dieser Zeile:
```ruby
<%= render "photos", { post: @post } %>
```
Für das löschen von Posts, das Liken etc. werden Post oder Delete Abfragen gesendet.

Beispiel:
```html
<div class="like-icon-post-<%= @post.id.to_s %>">
          <%= render "like_icon", { is_liked: @post.is_liked(current_user), post: @post } %>
        </div>
```

Was diese machen wird in den jeweiligen Controllern festgelegt.

## Selbstreflexion  
Diese beide Aufträge sollten eigentlich so sein wie die anderen.

Jedoch hat man das Gefühlt, die Aufträge sind sehr komisch geschrieben und teils nur durch spezifische Versionen oder anderes machbar.

Ich konnte auf einmal das Program nicht mehr starten, obwohl ich exzakt nach den Arbeitsblättern gegangen bin.

Deshalb konnte ich Justins Version kopieren und an dieser weiterarbeiten (Wir waren bzw. sind auf dem gleichen Stand).  
"Nicht mehr dieses Repo"

Nach ein Paar Errors wegen dem Gemfile (Welches ich neu erstellen musste (Mit allen gems)),
konnte ich endlich weiterarbeiten.

Neue Technologien gab es nicht wirklich.

Das meiste war bereits in Rails integriert.

Css gab es auch nicht wirklich viel, sondern viel mehr einzelne Abschnitte in weitere Views unterteilen, oder das Like System integrieren.


## Fazit
Durch viele Errors welche das Arbeiten teilweise unmöglich machten waren diese zwei (Vorallem das letzte) Arbeitsblätter nicht sehr spassig zu bearbeiten.

Jedoch bis auf ein Paar Differenzen konnte ich das Projekt dennoch abschliessen.
