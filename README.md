
# A propos
J'ai créé un format de document: le **RTML** (RT Markup Language). Afin d'apprendre le **design pattern visiteur**
<img width="1203" height="668" alt="image" src="https://github.com/user-attachments/assets/4e0538ff-2152-4ee4-a5d1-340c209d11ca" />

# Installation
Coller ce code dans le playground puis lancer (cliquer sur `Do it all`), afin d'installer le projet dans votre image Pharo:
```st
Metacello new
	baseline: 'RTMarkup';
	repository: 'github://tokyRT/RTMarkupLanguage:master/src';
	load.
```

# Utilisation 
```st
| doc |

doc := RTMDocument new.

doc add: (RTMTitle new text: 'Mon titre').
doc add: (RTMParagraph new text: 'Lorem ipsum').
doc add: (RTMCode new text: 'print').

doc render
```
Sorti: 
```
[titre] Mon titre
[paragraphe] Lorem ipsum
[code] print
```

Vous pouvez exporter votre document en HTML avec la methode `asHTMLString`. 
```st
doc asHTMLString.
```

Sorti: un document HTML.
```
<h1>Mon titre</h1>
<p>Lorem ipsum</p>
<code>print</code>
```

# A faire 
Sans modifier la classe de chaque markup (format) ni utliser des conditions pour verifier le type de chaque element. Donc utuliser un visiteur. 
- Creer une methode `asMarkdownString` qui exporte au format markdown.
- `asJSONString` au format JSON. 
