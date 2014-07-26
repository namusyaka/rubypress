module Rubypress
  # This module does not cover all api
  module Categories

    def getCategories(options = {})
      execute('getCategories', default_options)
    end

    def suggestCategories(options = {})
      default_options = {
        category: "category",
        max_results: 10
      }.deep_merge!(options)
      execute('suggestCategories', default_options)
    end

    def newCategory(options = {})
      default_options = {
        category: {}
      }.deep_merge!(options)
      execute('suggestCategories', default_options)
    end

    def deleteCategory(options = {})
      default_options = {
        category_id: nil
      }.deep_merge!(options)
      execute('suggestCategories', default_options)
    end

  end

end
