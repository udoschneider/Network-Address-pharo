Class {
	#name : #InternetAddressTests,
	#superclass : #TestCase,
	#category : #'Network-Address-Tests'
}

{ #category : #tests }
InternetAddressTests >> testInvalid [

	self
		should: [ InternetAddress fromString: '192.168.0' ]
		raise: NetworkAddressError
		description: 'Three element IPv4 address should raise error.'.
	self
		should: [ InternetAddress fromString: '192.168.0.1.2' ]
		raise: NetworkAddressError
		description: 'Five element IPv4 address should raise error.'
]

{ #category : #tests }
InternetAddressTests >> testParse [

	| address |
	address := InternetAddress fromString: '192.168.0.1'.
	self
		assert: address printString equals: '192.168.0.1';
		assert: address asByteArray equals: #[ 192 168 0 1 ]
]
