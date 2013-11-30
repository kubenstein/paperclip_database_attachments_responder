module Paperclip
  module Storage
    module Database

      alias_method :override_default_options_original, :override_default_options

      def override_default_options(base)
        override_default_options_original(base)
        @options[:url] += '&paperclip_database=1'
      end

    end
  end
end
