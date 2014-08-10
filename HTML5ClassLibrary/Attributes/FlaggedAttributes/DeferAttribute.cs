﻿
namespace HTML5ClassLibrary.Attributes.FlaggedAttributes
{
    public class DeferAttribute : BaseFlagAttribute
    {
        private const string AttributeName = "defer";

        public override string GetElementName()
        {
            return AttributeName;
        }
    }
}