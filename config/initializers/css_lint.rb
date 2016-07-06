module RubyCssLint
  def self.ruleset_classifications
    {
      "adjoining-classes" => RubyCssLint::WARNING,
      "box-model" => RubyCssLint::WARNING,
      "box-sizing" => RubyCssLint::WARNING,
      "compatible-vendor-prefixes" => RubyCssLint::WARNING,
      "display-property-grouping" => RubyCssLint::WARNING,
      "duplicate-background-images" => RubyCssLint::WARNING,
      "duplicate-properties" => RubyCssLint::WARNING,
      "empty-rules" => RubyCssLint::WARNING,
      "errors" => RubyCssLint::WARNING,
      "fallback-colors" => RubyCssLint::WARNING,
      "floats" => RubyCssLint::WARNING,
      "font-faces" => RubyCssLint::WARNING,
      "font-sizes" => RubyCssLint::WARNING,
      "gradients" => RubyCssLint::WARNING,
      "ids" => RubyCssLint::WARNING,
      "import" => RubyCssLint::WARNING,
      "important" => RubyCssLint::WARNING,
      "known-properties" => RubyCssLint::WARNING,
      "outline-none" => RubyCssLint::WARNING,
      "overqualified-elements" => RubyCssLint::WARNING,
      "qualified-headings" => RubyCssLint::WARNING,
      "regex-selectors" => RubyCssLint::WARNING,
      "rules-count" => RubyCssLint::WARNING,
      "shorthand" => RubyCssLint::WARNING,
      "star-property-hack" => RubyCssLint::WARNING,
      "text-indent" => RubyCssLint::WARNING,
      "underscore-property-hack" => RubyCssLint::WARNING,
      "unique-headings" => RubyCssLint::WARNING,
      "universal-selector" => RubyCssLint::WARNING,
      "unqualified-attributes" => RubyCssLint::WARNING,
      "vendor-prefix" => RubyCssLint::WARNING,
      "zero-units" => RubyCssLint::WARNING,
    }
  end

  def self.location_of_custom_rules(rails_root)
    []
  end

  def self.location_of_css_files(rails_root)
    [rails_root.to_s+"/app/assets/stylesheets/*.css"]
  end
end
