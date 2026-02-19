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
