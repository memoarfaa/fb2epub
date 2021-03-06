﻿using System.Collections.Generic;
using System.ComponentModel;
using XHTMLClassLibrary.AttributeDataTypes;
using XHTMLClassLibrary.Attributes;

namespace XHTMLClassLibrary.BaseElements.InlineElements
{
    /// <summary>
    /// The "keygen" tag specifies a key-pair generator field used for forms.
    /// When the form is submitted, the private key is stored locally, and the public key is sent to the server.
    /// </summary>
    [HTMLItemAttribute(ElementName = "keygen", SupportedStandards = HTMLElementType.HTML5 |  HTMLElementType.XHTML5 | HTMLElementType.XHTML11 | HTMLElementType.Transitional | HTMLElementType.Strict | HTMLElementType.FrameSet)]    
    public class Keygen : HTMLItem, IInlineItem
    {
        #region Attribute_Values_Enums

        /// <summary>
        /// "keytype" attribute possible values
        /// </summary>
        public enum KeyTypeAttributeOptions
        {
            [Description("rsa")]
            RSA,

            [Description("dsa")]
            DSA,

            [Description("ec")]
            EC,
        }


        #endregion 

        [AttributeTypeAttributeMember(SupportedStandards = HTMLElementType.HTML5 | HTMLElementType.XHTML5)]
        private readonly FlagTypeAttribute _autoFocusAttribute = new FlagTypeAttribute("autofocus");

        [AttributeTypeAttributeMember(SupportedStandards = HTMLElementType.HTML5 | HTMLElementType.XHTML5)]
        private readonly FlagTypeAttribute _challengeAttribute = new FlagTypeAttribute("challenge");

        [AttributeTypeAttributeMember(SupportedStandards = HTMLElementType.HTML5 | HTMLElementType.XHTML5)]
        private readonly FlagTypeAttribute _disabledAttribute = new FlagTypeAttribute("disabled");

        [AttributeTypeAttributeMember(SupportedStandards = HTMLElementType.HTML5 | HTMLElementType.XHTML5)]
        private readonly SimpleSingleTypeAttribute<URI> _formIdAttribute = new SimpleSingleTypeAttribute<URI>("form");

        [AttributeTypeAttributeMember(SupportedStandards = HTMLElementType.HTML5 | HTMLElementType.XHTML5)]
        private readonly ValuesSelectionTypeAttribute<Text> _keyTypeAttribute = new ValuesSelectionTypeAttribute<Text>("keytype",typeof(KeyTypeAttributeOptions));

        [AttributeTypeAttributeMember(SupportedStandards = HTMLElementType.HTML5 | HTMLElementType.XHTML5)]
        private readonly SimpleSingleTypeAttribute<Text> _nameAttribute = new SimpleSingleTypeAttribute<Text>("name");


        public Keygen(HTMLElementType htmlStandard) : base(htmlStandard)
        {
        }

        /// <summary>
        /// Specifies that a "keygen" element should automatically get focus when the page loads
        /// </summary>
        public IAttributeDataAccess Autofocus { get { return _autoFocusAttribute; }}

        /// <summary>
        /// Specifies that the value of the "keygen" element should be challenged when submitted
        /// </summary>
        public IAttributeDataAccess Challenge { get { return _challengeAttribute; } }

        /// <summary>
        /// Specifies that a "keygen" element should be disabled
        /// </summary>
        public IAttributeDataAccess Disable { get { return _disabledAttribute; } }

        /// <summary>
        /// Specifies one or more forms the keygen element belongs to
        /// </summary>
        public IAttributeDataAccess Form { get { return _formIdAttribute; } }

        /// <summary>
        /// Specifies the security algorithm of the key
        /// </summary>
        public IAttributeDataAccess Keytype { get { return _keyTypeAttribute; } }

        /// <summary>
        /// Defines a name for the "keygen" element
        /// </summary>
        public IAttributeDataAccess Name { get { return _nameAttribute; } }


        public override bool IsValid()
        {
            return true;
        }

        public override List<IHTMLItem> SubElements()
        {
            return null;
        }
    }
}
