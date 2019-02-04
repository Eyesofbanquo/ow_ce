require 'json'

module RulesLoader
  def load_json(path)
    if path.empty? || path == ""
      return []
    else
      file = File.read(path)
      json = JSON.parse(file)
      return json
    end
  end
end