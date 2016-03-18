module EnvDependencies
  class Railtie < Rails::Railtie
    config.before_initialize do
      config.env_dependencies.select do |dependency|
        !ENV.key?(dependency)
      end.each do |dependency|
        raise "Required environment variable '#{dependency}' is not set."
      end
    end
  end
end
