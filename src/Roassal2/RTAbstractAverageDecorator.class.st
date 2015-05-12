Class {
	#name : #RTAbstractAverageDecorator,
	#superclass : #RTAbstractGrapherDecorator,
	#instVars : [
		'shouldHaveLabel',
		'labelConvertion'
	],
	#category : #'Roassal2-Builder-Grapher-Decorators'
}

{ #category : #initialization }
RTAbstractAverageDecorator >> initialize [
	super initialize.
	self noLabel.
	labelConvertion := #yourself
]

{ #category : #accessing }
RTAbstractAverageDecorator >> labelConvertion [
	^ labelConvertion
]

{ #category : #accessing }
RTAbstractAverageDecorator >> labelConvertion: aBlockOrSymbol [
	"This method is used to set how to convert the average value"
	"Take as argument the average value, as a number and the block has to return a value or a string"
	labelConvertion := aBlockOrSymbol
]

{ #category : #initialization }
RTAbstractAverageDecorator >> noLabel [
	shouldHaveLabel := false
]

{ #category : #'drawing-hooks' }
RTAbstractAverageDecorator >> render [
	self subclassResponsibility
]

{ #category : #configuration }
RTAbstractAverageDecorator >> withLabel [
	shouldHaveLabel := true
]