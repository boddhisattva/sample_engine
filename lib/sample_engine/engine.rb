module SampleEngine
  class Engine < ::Rails::Engine
    isolate_namespace SampleEngine

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
