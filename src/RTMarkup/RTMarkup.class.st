Class {
	#name : 'RTMarkup',
	#superclass : 'Object',
	#instVars : [
		'text',
		'identifier'
	],
	#category : 'RTMarkup',
	#package : 'RTMarkup'
}

{ #category : 'accessing' }
RTMarkup >> identifier [

	^ identifier
]

{ #category : 'accessing' }
RTMarkup >> identifier: anObject [

	identifier := anObject
]

{ #category : 'initialization' }
RTMarkup >> initialize [ 
	text := ''.
	identifier := ''
]

{ #category : 'rendering' }
RTMarkup >> render [

	^ self identifier , self text
]

{ #category : 'accessing' }
RTMarkup >> text [

	^ text
]

{ #category : 'accessing' }
RTMarkup >> text: anObject [

	text := anObject
]
