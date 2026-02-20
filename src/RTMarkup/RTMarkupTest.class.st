Class {
	#name : 'RTMarkupTest',
	#superclass : 'TestCase',
	#category : 'RTMarkup',
	#package : 'RTMarkup'
}

{ #category : 'tests' }
RTMarkupTest >> testAsHTML [

	| doc |
	doc := RTMDocument new.
	doc
		add: (RTMTitle new text: 'Mon titre');
		add: (RTMParagraph new text: 'Lorem ipsum').
	
	
	self assert: doc asHTMLString equals: 
'<h1>Mon titre</h1>
<p>Lorem ipsum</p>
'
]

{ #category : 'tests' }
RTMarkupTest >> testCode [

	| code |
	code := RTMCode new.
	code text: 'print("hello")'.
	self assert: code render equals: '[code] print("hello")'.
]

{ #category : 'tests' }
RTMarkupTest >> testDocumentWithElements [

	| para doc |
	doc := RTMDocument new.
	doc
		add: (RTMTitle new text: 'Mon titre');
		add: (RTMParagraph new text: 'Lorem ipsum').
	
	
	self assert: doc render equals: 
'[titre] Mon titre
[paragraphe] Lorem ipsum
'
]

{ #category : 'tests' }
RTMarkupTest >> testParagraph [

	| para |
	para := RTMParagraph new.
	para text: 'Lorem ipsum'.
	self assert: para render equals: '[paragraphe] Lorem ipsum'.
]

{ #category : 'tests' }
RTMarkupTest >> testTitleRender [

	| title |
	title := RTMTitle new.
	title text: 'Mon titre'.
	self assert: title render equals: '[titre] Mon titre'
]
