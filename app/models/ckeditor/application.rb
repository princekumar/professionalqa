config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
config.assets.precompile += Ckeditor.assets
config.assets.precompile += %w(ckeditor/*)