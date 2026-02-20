"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestRTMarkup',
	#superclass : 'PackageManifest',
	#category : 'RTMarkup-Manifest',
	#package : 'RTMarkup',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestRTMarkup class >> ruleStringConcatenationRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#RTMDocument)) #'2026-02-20T09:07:45.218334+03:00') )
]
