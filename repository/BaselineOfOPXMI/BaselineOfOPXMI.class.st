"
Baseline for https://github.com/hernanmd/xmi
"
Class {
	#name : #BaselineOfOPXMI,
	#superclass : #BaselineOf,
	#category : #BaselineOfOPXMI
}

{ #category : #baselines }
BaselineOfOPXMI >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				baseline: 'XMLParser'
				with: [ spec repository: 'github://pharo-contributions/XML-XMLParser:3.5.x/src'; loads: 'Core' ].
			spec
				baseline: 'XMLDOMVisitor'
				with: [ spec repository: 'github://hernanmd/xml-dom-visitor/repository' ].
			spec package: 'OP-XMI' with: [ spec requires: #('XMLParser' 'XMLDOMVisitor') ].
			spec package: 'OP-XMI-GTExtensions' with: [ spec requires: #('OP-XMI') ].

			spec 
				group: 'Core'		with: #('OP-XMI');
				group: 'All'		with: #('OP-XMI' 'OP-XMI-GTExtensions');
				group: 'default' 	with: #('Core')  ]
]
