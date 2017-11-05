module SampleEngine
  class Engine < ::Rails::Engine
    isolate_namespace SampleEngine

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl
      g.factory_girl dir: 'spec/factories'
    end

    initializer "sample_engine.factories", :after => "factory_girl.set_factory_paths" do
      FactoryBot.definition_file_paths << File.expand_path('../../../spec/factories', __FILE__) if defined?(FactoryBot)
    end
  end
end
