Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [ 
 ^ self new count: anInteger
]

{ #category : #accessing }
Counter >> count [ 
 ^ count 
]

{ #category : #accessing }
Counter >> count: anInteger [ 
 count:= anInteger.

]

{ #category : #accessing }
Counter >> count: anInteger or: anInteger2 [ 
 self count > 5 ifTrue: [ count:= anInteger] 
                ifFalse: [  count:= anInteger2  ].

]

{ #category : #'as yet unclassified' }
Counter >> decrement [
	self count: self count - 1 .
]

{ #category : #'as yet unclassified' }
Counter >> increment [ 
 count := count + 1
]

{ #category : #initialization }
Counter >> initialize [
 super initialize. 
 count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [
	
	super printOn: aStream.
	aStream nextPutAll: ' withValue: ' , count printString.
	aStream cr
]
