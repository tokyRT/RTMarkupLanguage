Class {
	#name : 'BaselineOfRTMarkup',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRTMarkup',
	#package : 'BaselineOfRTMarkup'
}

{ #category : 'baselines' }
BaselineOfRTMarkup >> baseline: spec [

	<baseline>
	spec for: #common do: [ spec package: 'RTMarkup' ]
]
