//
//  AuxiliaryPreviewConfig.swift
//
//
//  Created by Dominic Go on 10/9/23.
//
import DGSwiftUtilities
import Foundation
import UIKit

public struct AuxiliaryPreviewConfig {
    // MARK: - Properties

    // ------------------

    public var verticalAnchorPosition: VerticalAnchorPositionMode
    public var horizontalAlignment: HorizontalAlignmentPosition
  
    public var preferredWidth: AuxiliaryPreviewSizeValue?
    public var preferredHeight: AuxiliaryPreviewSizeValue?
  
    /// The distance between the aux. preview, and the menu preview
    public var marginInner: CGFloat
  
    /// The min. distance of the aux. preview from the edges of the window
    public var marginOuter: CGFloat
    
    /// Extends the auxiliary view beyond the leading edge of the parent view by the specified amount
    public var marginLeading: CGFloat

    /// Extends the auxiliary view beyond the trailing edge of the parent view by the specified amount
    public var marginTrailing: CGFloat

    public var transitionConfigEntrance: AuxiliaryPreviewEntranceTransitionConfig
  
    public var transitionExitPreset: AuxiliaryPreviewTransitionPreset
    public var transitionConfigExit: AuxiliaryPreviewTransitionConfig
  
    // MARK: - Init

    // ------------
  
    public init(
        verticalAnchorPosition: VerticalAnchorPositionMode,
        horizontalAlignment: HorizontalAlignmentPosition,
        preferredWidth: AuxiliaryPreviewSizeValue? = nil,
        preferredHeight: AuxiliaryPreviewSizeValue? = nil,
        marginInner: CGFloat,
        marginOuter: CGFloat,
        marginLeading: CGFloat,
        marginTrailing: CGFloat,
        transitionConfigEntrance: AuxiliaryPreviewEntranceTransitionConfig,
        transitionExitPreset: AuxiliaryPreviewTransitionPreset
    ) {
        self.verticalAnchorPosition = verticalAnchorPosition
        self.horizontalAlignment = horizontalAlignment
        self.preferredWidth = preferredWidth
        self.preferredHeight = preferredHeight
        self.marginInner = marginInner
        self.marginOuter = marginOuter
        self.marginLeading = marginLeading
        self.marginTrailing = marginTrailing
        self.transitionConfigEntrance = transitionConfigEntrance
    
        self.transitionExitPreset = transitionExitPreset
        self.transitionConfigExit = {
            var transitionConfigExit = AuxiliaryPreviewTransitionConfig(
                transitionPreset: transitionExitPreset
            )
        
            transitionConfigExit.reverseKeyframes()
            return transitionConfigExit
        }()
    }
}
