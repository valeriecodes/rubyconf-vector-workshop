# Using AI to Plan Your RubyConf Schedule

Talk slides: https://docs.google.com/presentation/d/1I2GRi1wtf9hgIRVrQKrpb6flSY31ctsY3dCAoQbb6V0/edit?usp=sharing

Dependencies:

* Ruby (of course!) https://www.ruby-lang.org/en/documentation/installation/, I'll be using version 3.2.2
* Postgres 15: https://postgresapp.com/ (recommended) or https://www.postgresql.org/download/
* pgvector: Included on Postgres app, otherwise check install instructions here: https://github.com/pgvector/pgvector#installation-notes

Get these installed to start off. If you run into issues, ask Google, your neighbors, or me.

You'll also need a Hugging Face API token:

* Go to https://huggingface.co/
* Sign up
* Check your email for confirmation and click the link
* Go to https://huggingface.co/settings/tokens and click “New Token”
* Name it “rubyconf-workshop” (or whatever you want) and give it “read” role
* Copy it into sample.env and re-save that file with the name .env
