Class {
	#name : #BaselineOfGenerativity,
	#superclass : #BaselineOf,
	#category : #BaselineOfGenerativity
}

{ #category : #baselines }
BaselineOfGenerativity >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			self declareProjects: spec.
			self declarePackages: spec.
			self declareGroups: spec ]
]

{ #category : #dependencies }
BaselineOfGenerativity >> declareBabyMock2In: spec [
	spec
		project: 'BabyMock2'
		with: [ spec
				className: #ConfigurationOfBabyMock2;
				versionString: #stable;
				repository: 'http://smalltalkhub.com/mc/zeroflag/BabyMock2/main/' ].
	^ spec
]

{ #category : #dependencies }
BaselineOfGenerativity >> declareDeployUtilsIn: spec [
	spec baseline: 'DeployUtils' with: [ spec repository: 'github://fstephany/DeployUtils/repository' ].
	^ spec
]

{ #category : #dependencies }
BaselineOfGenerativity >> declareGToolkitIn: spec [
	spec baseline: 'GToolkit' with: [ spec repository: 'github://feenkcom/gtoolkit:v0.6.46/src' ].
	^ spec

]

{ #category : #groups }
BaselineOfGenerativity >> declareGroups: spec [
	spec
		group: 'default'
			with:
			#('GY-Domain');
		group: 'tests' with: #('GY-Domain-Tests');
		group: 'development' with: #('default' 'tests');
		group: 'full' with: #('development' 'Roassal2' 'GToolkit').
	^ spec
]

{ #category : #dependencies }
BaselineOfGenerativity >> declareNeoJSONIn: spec [
	spec baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON/repository' ].
	^ spec
]

{ #category : #packages }
BaselineOfGenerativity >> declarePackages: spec [
	spec
		package: #'GY-Domain';
		package: #'GY-Domain-Tests' with: [ spec requires: #('GY-Domain') ].
	^ spec
]

{ #category : #dependencies }
BaselineOfGenerativity >> declarePharoEdaIn: spec [
	spec repository: 'github://rydnr/generativity:develop/pharo/src'.
	^ spec
]

{ #category : #'third-party' }
BaselineOfGenerativity >> declareProjects: spec [
	self declareNeoJSONIn: spec.
	self declareBabyMock2In: spec.
	self declareVoyageMongoIn: spec.
	self declareStampIn: spec.
	self declareDeployUtilsIn: spec.
	self declareRoassal2In: spec.
	self declareGToolkitIn: spec.
	^ spec

]

{ #category : #dependencies }
BaselineOfGenerativity >> declareRoassal2In: spec [
	spec baseline: 'Roassal2' with: [ spec repository: 'github://ObjectProfile/Roassal2/src' ].
	^ spec

]

{ #category : #dependencies }
BaselineOfGenerativity >> declareStampIn: spec [
	spec
		project: 'Stamp'
		with: [ spec
				className: #ConfigurationOfStamp;
				versionString: #stable;
				repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Stamp/main/' ].
	^ spec
]

{ #category : #dependencies }
BaselineOfGenerativity >> declareVoyageMongoIn: spec [
	spec
		project: 'VoyageMongo'
			with: [ spec
				className: #ConfigurationOfVoyageMongo;
				versionString: #development;
				repository: 'github://pharo-nosql/voyage:1.5/mc';
				loads: #('core' 'memory') ].
	^ spec
]

{ #category : #dependencies }
BaselineOfGenerativity >> declareZincZodiacIn: spec [
	spec
		baseline: 'ZincHTTPComponents';
		repository: 'github://svenvc/zinc/repository'.
	^ spec

]
