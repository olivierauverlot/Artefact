Class {
	#name : #BaselineOfArtefact,
	#superclass : #BaselineOf,
	#category : #BaselineOfArtefact
}

{ #category : #baselines }
BaselineOfArtefact >> baseline: spec [
	<baseline>
	spec
		baseline: 'Stylesheet'
		with: [ spec repository: 'github://olivierauverlot/Stylesheet' ].
	spec 
		project: 'Units' 
			with: [
				spec
					className: #ConfigurationOfUnits;
					versionString: '1.1-baseline';
					repository: 'http://smalltalkhub.com/mc/MarcusDenker/Units/main' ].
	spec
		for: #pharo
		do: [ 
			spec
				package: 'Artefact-Core'
				with: [ spec requires: #('Stylesheet' 'Units') ].
			spec
				package: 'Artefact-Examples'
				with: [ spec requires: #('Artefact-Core') ].
			spec
				package: 'Artefact-Tests'
				with: [ spec requires: #('Artefact-Examples' 'Artefact-Core') ] ]
]
