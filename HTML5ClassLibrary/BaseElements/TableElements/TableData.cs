﻿using System;
using System.Collections.Generic;
using System.Xml;
using System.Xml.Linq;
using HTML5ClassLibrary.Attributes;
using HTML5ClassLibrary.BaseElements.BlockElements;
using HTML5ClassLibrary.BaseElements.InlineElements;
using HTML5ClassLibrary.Exceptions;

namespace HTML5ClassLibrary.BaseElements.TableElements
{
    /// <summary>
    /// The td element defines a data cell in a table (i.e. cells that are not header cells).
    /// </summary>
    public class TableData : BaseTableElement
    {
        public const string ElementName = "td";

        private readonly List<IHTML5Item> _content = new List<IHTML5Item>();

        // Basic attributes
        private readonly ColSpanAttribute _colSpanAttribute = new ColSpanAttribute();
        private readonly RowSpanAttribute _rowSpanAttribue = new RowSpanAttribute();
        private readonly HeadersAttribute _headersAttribute = new HeadersAttribute();




        /// <summary>
        /// This attribute specifies the number of columns spanned by the current cell.
        /// </summary>
        public ColSpanAttribute ColSpan { get { return _colSpanAttribute; } }


        /// <summary>
        /// This attribute specifies the number of rows spanned by the current cell.
        /// </summary>
        public RowSpanAttribute RowSpan { get { return _rowSpanAttribue; } }


        /// <summary>
        /// Specifies one or more header cells a cell is related to
        /// </summary>
        public HeadersAttribute Headers { get { return _headersAttribute; }}



        public override void Load(XNode xNode)
        {
            if (xNode.NodeType != XmlNodeType.Element)
            {
                throw new Exception("xNode is not of element type");
            }
            var xElement = (XElement)xNode;
            if (xElement.Name.LocalName != ElementName)
            {
                throw new Exception(string.Format("xNode is not {0} element", ElementName));
            }

            ReadAttributes(xElement);

            // Base attributes
            _colSpanAttribute.ReadAttribute(xElement);
            _rowSpanAttribue.ReadAttribute(xElement);
            _headersAttribute.ReadAttribute(xElement);

            _content.Clear();
            IEnumerable<XNode> descendants = xElement.Nodes();
            foreach (var node in descendants)
            {
                IHTML5Item item = ElementFactory.CreateElement(node);
                if ((item != null) && IsValidSubType(item))
                {
                    try
                    {
                        item.Load(node);
                    }
                    catch (Exception)
                    {
                        continue;
                    }
                    _content.Add(item);
                }
            }
        }

        private bool IsValidSubType(IHTML5Item item)
        {
            if (item is IInlineItem)
            {
                return item.IsValid();
            }
            if (item is IBlockElement)
            {
                return item.IsValid();
            }
            if (item is SimpleHTML5Text)
            {
                return item.IsValid();
            }
            return false;
        }


        public override XNode Generate()
        {
            var xElement = new XElement(XhtmlNameSpace + ElementName);

            AddAttributes(xElement);

            _colSpanAttribute.AddAttribute(xElement);
            _rowSpanAttribue.AddAttribute(xElement);
            _headersAttribute.AddAttribute(xElement);

            foreach (var item in _content)
            {
                xElement.Add(item.Generate());
            }
            return xElement;
        }

        public override bool IsValid()
        {
            return true;
        }

        /// <summary>
        /// Adds sub-item to the item , only if 
        /// allowed by the rules and element can accept content
        /// </summary>
        /// <param name="item">sub-item to add</param>
        public override void Add(IHTML5Item item)
        {
            if ((item != null) && IsValidSubType(item))
            {
                _content.Add(item);
                item.Parent = this;
            }
            else
            {
                throw new HTML5ViolationException();
            }
        }

        public override void Remove(IHTML5Item item)
        {
            if(_content.Remove(item))
            {
                item.Parent = null;
            }
        }

        public override List<IHTML5Item> SubElements()
        {
            return _content;
        }
    }
}