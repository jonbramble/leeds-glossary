module EntriesHelper
 def setup_entry(entry)
    2.times { entry.translations.build }
    entry
  end

end
