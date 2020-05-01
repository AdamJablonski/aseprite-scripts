include("../extensions/String")

local commands = {
    "About", "AddColor", "AdvancedMode", "AutocropSprite",
    "BackgroundFromLayer", "BrightnessContrast", "Cancel", "CanvasSize",
    "CelOpacity", "CelProperties", "ChangeBrush", "ChangeColor",
    "ChangePixelFormat", "ClearCel", "Clear", "CloseAllFiles", "CloseFile",
    "ColorCurve", "ColorQuantization", "ContiguousFill", "ConvolutionMatrix",
    "CopyCel", "CopyColors", "CopyMerged", "Copy", "CropSprite", "Cut",
    "DeselectMask", "Despeckle", "DeveloperConsole", "DiscardBrush",
    "DuplicateLayer", "DuplicateSprite", "DuplicateView", "Exit",
    "ExportSpriteSheet", "Eyedropper", "Fill", "FitScreen", "FlattenLayers",
    "Flip", "FrameProperties", "FrameTagProperties", "FullscreenPreview",
    "GotoFirstFrameInTag", "GotoFirstFrame", "GotoFrame", "GotoLastFrameInTag",
    "GotoLastFrame", "GotoNextFrameWithSameTag", "GotoNextFrame",
    "GotoNextLayer", "GotoNextTab", "GotoPreviousFrameWithSameTag",
    "GotoPreviousFrame", "GotoPreviousLayer", "GotoPreviousTab", "GridSettings",
    "Home", "HueSaturation", "ImportSpriteSheet", "InvertColor", "InvertMask",
    "KeyboardShortcuts", "Launch", "LayerFromBackground", "LayerLock",
    "LayerOpacity", "LayerProperties", "LayerVisibility", "LinkCels",
    "LoadMask", "LoadPalette", "MaskAll", "MaskByColor", "MaskContent",
    "MergeDownLayer", "ModifySelection", "MoveCel", "MoveColors", "MoveMask",
    "NewBrush", "NewFile", "NewFrameTag", "NewFrame", "NewLayer",
    "NewSpriteFromSelection", "OpenBrowser", "OpenFile", "OpenGroup",
    "OpenInFolder", "OpenScriptFolder", "OpenWithApp", "Options", "Outline",
    "PaletteEditor", "PaletteSize", "PasteText", "Paste", "PixelPerfectMode",
    "PlayAnimation", "PlayPreviewAnimation", "Redo", "Refresh",
    "RemoveFrameTag", "RemoveFrame", "RemoveLayer", "RemoveSlice",
    "RepeatLastExport", "ReplaceColor", "ReselectMask", "ReverseFrames",
    "Rotate", "RunScript", "SaveFileAs", "SaveFileCopyAs", "SaveFile",
    "SaveMask", "SavePalette", "ScrollCenter", "Scroll", "SelectTile",
    "SelectionAsGrid", "SetColorSelector", "SetInkType", "SetLoopSection",
    "SetPaletteEntrySize", "SetPalette", "SetSameInk", "ShowAutoGuides",
    "ShowBrushPreview", "ShowExtras", "ShowGrid", "ShowLayerEdges",
    "ShowOnionSkin", "ShowPixelGrid", "ShowSelectionEdges", "ShowSlices",
    "SliceProperties", "SnapToGrid", "SpriteProperties", "SpriteSize", "Stroke",
    "SwitchColors", "SymmetryMode", "TiledMode", "Timeline", "TogglePreview",
    "ToggleTimelineThumbnails", "UndoHistory", "Undo", "UnlinkCel", "Zoom"
};

function GetCommands(prefix)
    local result = {}

    for _, command in ipairs(commands) do
        if command:matchCaseInsensitive(prefix) then
            table.insert(result, command);
        end
    end

    return result;
end
