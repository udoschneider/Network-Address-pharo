Class {
	#name : #InternetAddress,
	#superclass : #Object,
	#instVars : [
		'bytes'
	],
	#category : #'Network-Address'
}

{ #category : #initialization }
InternetAddress >> printOn: aStream [

	bytes
		do: [ :each | 
			self halt.
			aStream print: each ]
		separatedBy: [ aStream nextPut: '.' ]
]

{ #category : #initialization }
InternetAddress >> setBytes: aByteArray [

	bytes := aByteArray
]
