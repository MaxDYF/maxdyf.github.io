require 'bibtex'

module PublicationFilters
  def publication_author_names(authors)
    BibTeX::Names.parse(authors.to_s).map do |name|
      [name.first, name.prefix, name.last, name.suffix]
        .map(&:to_s).reject(&:empty?).join(' ')
    end
  end
end

Liquid::Template.register_filter(PublicationFilters)
