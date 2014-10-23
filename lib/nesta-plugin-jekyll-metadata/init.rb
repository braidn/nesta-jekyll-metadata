module Nesta
  class FileModel
    def parse_metadata(first_paragraph)
      is_metadata = first_paragraph.split("\n").first =~ /-$/ ||
        first_paragraph.split("\n").first =~ /^[\w ]+:/
      raise Nesta::MetadataParseError unless is_metadata
      CaseInsensitiveHash.new.tap do |data|
        first_paragraph.split("\n").each do |line|
          next if line =~ /-$/
          key, val = line.split(/\s*:\s*/, 2)
          next if val.nil?
          data[key.downcase.strip] = val.chomp
        end
      end
    end
  end
end
