Class {
	#name : 'RTMDocument',
	#superclass : 'Object',
	#instVars : [
		'content'
	],
	#category : 'RTMarkup',
	#package : 'RTMarkup'
}

{ #category : 'adding' }
RTMDocument >> add: aRTMarkup [

	content add: aRTMarkup
]

{ #category : 'rendering' }
RTMDocument >> asHTMLString [

	| result |
	
	result := ''.
	
	content do: [ :eachMarkup |
		
		(eachMarkup isKindOf: RTMTitle) ifTrue: [ 
			result := result , '<h1>' , eachMarkup text , '</h1>' , String cr 
			].
		
		(eachMarkup isKindOf: RTMParagraph) ifTrue: [ 
			result := result , '<p>' , eachMarkup text , '</p>' , String cr 
			].
		
		(eachMarkup isKindOf: RTMCode) ifTrue: [ 
			result := result , '<code>' , eachMarkup text , '</code>' , String cr 
			].
		].

	^ result
]

{ #category : 'initialization' }
RTMDocument >> initialize [

	content := OrderedCollection new
]

{ #category : 'rendering' }
RTMDocument >> render [

	| result |
	result := ''.
	content do: [ :eachMarkup |
		result := result , eachMarkup render , String cr ].
	
	^ result
]
