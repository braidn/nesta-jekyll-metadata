module Nesta
  class FileModel
    def parse_metadata(first_paragrah)
      is_metadata = first_paragrah.split("\n").first =~ /^-/
      raise MetaDataParseError unless is_metadata
      CaseInsensitiveHash.new.tap do |data|
        first_paragrah.split("\n").each do |line|
          next if line =~ /^-/
          key, val = line.split(/\s*:\s*/, 2)
          next if value.nil?
          data[key.downcase] = val.chomp
        end
      end
    end
  end
end
