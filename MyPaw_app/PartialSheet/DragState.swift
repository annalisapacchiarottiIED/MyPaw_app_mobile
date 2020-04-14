//
//  DragState.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 10/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import UIKit

/// This enum helps to handle the drag state
enum DragState {
	case inactive
	case dragging(translation: CGSize)
	var translation: CGSize {
		switch self {
		case .inactive:
			return .zero
		case .dragging(let translation):
			return translation
		}
	}
	var isDragging: Bool {
		switch self {
		case .inactive:
			return false
		case .dragging:
			return true
		}
	}
}
