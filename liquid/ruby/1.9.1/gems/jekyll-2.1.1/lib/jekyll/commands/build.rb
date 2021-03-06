module Jekyll
  module Commands
    class Build < Command

      class << self

        # Create the Mercenary command for the Jekyll CLI for this Command
        def init_with_program(prog)
          prog.command(:build) do |c|
            c.syntax      'build [options]'
            c.description 'Build your site'

            add_build_options(c)

            c.action do |args, options|
              options["serving"] = false
              Jekyll::Commands::Build.process(options)
            end
          end
        end

        # Build your jekyll site
        # Continuously watch if `watch` is set to true in the config.
        def process(options)
          Jekyll.logger.log_level = :error if options['quiet']

          options = configuration_from_options(options)
          site = Jekyll::Site.new(options)

          if options.fetch('skip_initial_build', false)
            Jekyll.logger.warn "Build Warning:", "Skipping the initial build. This may result in an out-of-date site."
          else
            build(site, options)
          end
          watch(site, options) if options['watch']
        end

        # Build your Jekyll site.
        #
        # site - the Jekyll::Site instance to build
        # options - A Hash of options passed to the command
        #
        # Returns nothing.
        def build(site, options)
          source      = options['source']
          destination = options['destination']
          Jekyll.logger.info "Source:", source
          Jekyll.logger.info "Destination:", destination
          Jekyll.logger.info "Generating..."
          process_site(site)
          Jekyll.logger.info "", "done."
        end

        # Private: Watch for file changes and rebuild the site.
        #
        # site - A Jekyll::Site instance
        # options - A Hash of options passed to the command
        #
        # Returns nothing.
        def watch(site, options)
          require 'jekyll-watch'
          Jekyll::Commands::Watch.watch(site, options)
        end

      end # end of class << self

    end
  end
end
