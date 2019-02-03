# lib/yaml_parser.rb
require 'yaml'
require 'json'

class YamlParser

    # Takes a file path to a .yaml/.yml file to parse into a hash
    def self.parse(file_path)
        unless file_path.empty? || file_path == ""
            begin
                yaml = YAML.load_file(file_path)
                return yaml
            rescue Errno::ENOENT => exception
                return {}
            end

        else
            return {}
        end
    end

    # Takes a hash and returns an array of its keys
    def self.union_keys(hash)
        unless hash.empty?
            return hash.keys
        else
            return []
        end
    end

end