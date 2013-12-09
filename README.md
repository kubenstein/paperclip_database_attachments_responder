PaperclipDatabaseAttachmentsResponder
=============

PaperclipDatabaseAttachmentsResponder is a gem that extends [paperclip_database](https://github.com/softace/paperclip_database).
You don't have to provide special controller with `downloads_files_for :user, :avatar` any more!

Installation
-------
Since PaperclipDatabaseAttachmentsResponder overwrites paperclip_database's internal api, use exacly `'2.2.1'` version.

Put those lines into your `Gemfile`:

	gem 'paperclip_database', '2.2.1'
	gem 'paperclip_database_attachments_responder', git: 'https://github.com/kubenstein/paperclip_database_attachments_responder'

(soon I'll push the gem to rubygems)	