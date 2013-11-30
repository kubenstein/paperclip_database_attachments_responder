module PaperclipDatabaseAttachmentsResponder
  class Middleware

    def initialize(app)
      @app = app
    end

    def call(env)
      return send_image(env) if paperclip_database_request?(env)

      @app.call(env)
    end


    private

    def paperclip_database_request?(env)
      env['REQUEST_URI'] =~ /paperclip_database/
    end

    def send_image(env)
      id, attachment_name, klass_name = env['PATH_INFO'].split('/').reverse
      style = Rack::Utils.parse_query(env['QUERY_STRING'], '&')['style']

      object = klass_name.classify.constantize.send(:find, id)
      attachment = object.send(attachment_name.singularize)

      [
          200,
          {'Content-Type' => attachment.content_type, 'Content-Disposition' => 'inline'},
          [attachment.file_contents(style)]
      ]
    end

  end
end
