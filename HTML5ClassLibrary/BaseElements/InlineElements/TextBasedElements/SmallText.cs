﻿namespace XHTMLClassLibrary.BaseElements.InlineElements.TextBasedElements
{
    /// <summary>
    /// The "small" tag defines smaller text (fine print and other side comments).
    /// </summary>
    [HTMLItemAttribute(ElementName = "small", SupportedStandards = HTMLElementType.HTML5 |  HTMLElementType.XHTML5 | HTMLElementType.Transitional | HTMLElementType.Strict | HTMLElementType.FrameSet | HTMLElementType.XHTML11)]   
    public class SmallText : TextBasedElement
    {
        public SmallText(HTMLElementType htmlStandard) : base(htmlStandard)
        {
        }
    }
}
