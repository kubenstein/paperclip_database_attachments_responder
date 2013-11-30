module PaperclipDatabaseAttachmentsResponder

  class Railtie < Rails::Railtie
    initializer "paperclip_database_attachments_responder.configure_rails_initialization" do |app|
      app.middleware.insert_after 'Rack::Head', 'PaperclipDatabaseAttachmentsResponder::Middleware'
    end
  end

end
