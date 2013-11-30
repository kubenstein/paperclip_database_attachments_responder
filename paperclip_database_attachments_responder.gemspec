# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "paperclip_database_attachments_responder/version"

Gem::Specification.new do |s|
  s.name        = "paperclip_database_attachments_responder"
  s.version     = PaperclipDatabaseAttachmentsResponder::VERSION
  s.authors     = ["kubenstein"]
  s.email       = ["niewczas.jakub@gmail.com"]
  s.homepage    = "https://github.com/kubenstein/dynopoker"
  s.summary     = %q{Dynopoker: prevent your heroku dyno from falling asleep}
  s.description = %q{Dynopoker is a gem that will make your ruby based heroku app self pinging system, preventing single dyno from falling asleep}

  s.rubyforge_project = "paperclip_database_attachments_responder"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end
