﻿using EPubLibrary;
using Fb2epubSettings;
using FB2Library.HeaderItems;

namespace FB2EPubConverter.ElementConvertersV2
{
    internal static class AuthorsInfoConverterV2
    {
        public  static void Convert(ItemTitleInfo titleInfo, EPubFile epubFile, EPubCommonSettings settings)
        {
            foreach (var author in titleInfo.BookAuthors)
            {
                var person = new PersoneWithRole();
                string authorString = DescriptionConverters.GenerateAuthorString(author, settings);
                person.PersonName = epubFile.Transliterator.Translate(authorString, epubFile.TranslitMode);
                person.FileAs = DescriptionConverters.GenerateFileAsString(author, settings);
                person.Role = RolesEnum.Author;
                person.Language = titleInfo.Language;
                epubFile.Title.Creators.Add(person);

                // add authors to Title page
                epubFile.TitlePage.Authors.Add(authorString);
            }
        }

    }
}