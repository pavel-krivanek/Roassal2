Class {
	#name : #GLMSelectableAction,
	#superclass : #GLMRoassal2Action,
	#category : #'Roassal2GT-Glamour-Actions'
}

{ #category : #hooks }
GLMSelectableAction >> execute [
	| int |
	int := RTSelectableView new.
	self roassalView @ int.
	int when: RTSelectionEnd do: [ :evt | self inform: 'hello' ].
]

{ #category : #hooks }
GLMSelectableAction >> title [
	^ 'Add selection'
]