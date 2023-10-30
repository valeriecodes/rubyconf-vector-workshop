# Using AI to Plan Your RubyConf Schedule

Talk slides: https://docs.google.com/presentation/d/1I2GRi1wtf9hgIRVrQKrpb6flSY31ctsY3dCAoQbb6V0/edit?usp=sharing

Dependencies:

* Ruby (of course!) https://www.ruby-lang.org/en/documentation/installation/, I'll be using version 3.2.2
* Postgres 15: https://postgresapp.com/ (recommended) or https://www.postgresql.org/download/
* pgvector: Included on Postgres app, otherwise check install instructions here: https://github.com/pgvector/pgvector#installation-notes

Get these installed to start off. If you run into issues, ask Google, your neighbors, or me.

Once you've got those installed:
1. Clone this repo: `git clone https://github.com/valeriecodes/rubyconf-vector-workshop.git`
2. `cd rubyconf-vector-workshop`
3. `bundle install` (if you're using a Ruby version besides 3.2.2, update the `.ruby-version` file first)

You'll also need a Hugging Face API token:

1. Go to https://huggingface.co/
2. Sign up
3. Check your email for confirmation and click the link
4. Go to https://huggingface.co/settings/tokens and click “New Token”
5. Name it “rubyconf-workshop” (or whatever you want) and give it “read” role
6. Copy it into sample.env and re-save that file with the name .env

Once you've gotten Postgres installed, open a shell (`psql` on the command line):
1. Enable pgvector: `CREATE EXTENSION vector;`
2. Create a table for your data:
```
CREATE TABLE talks(id SERIAL PRIMARY KEY,
  start_time	 timestamp,
  end_time 	 timestamp,
  speaker  	 varchar(100),
  title 		 varchar(100),
  description text,
	room			 varchar(50),
  embedding	 vector(384));
```
Note: you could definitely also use Ruby to create this table if you prefer, check out the [Sequel](https://sequel.jeremyevans.net/rdoc/classes/Sequel/Database.html#method-i-create_table) and [pgvector](https://github.com/pgvector/pgvector-ruby) docs.
