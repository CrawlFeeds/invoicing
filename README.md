###invoicing app

##Index page
![Invoice create page](https://raw.githubusercontent.com/CrawlFeeds/invoicing/master/img01.png)
##Invoice create page
![Invoice create page](https://raw.githubusercontent.com/CrawlFeeds/invoicing/master/02.png)
##Paid Invoice
![Invoice create page](https://raw.githubusercontent.com/CrawlFeeds/invoicing/master/03.png)

Rails version : 5.2
Sidekiq for background jobs
postgres for database
Rspec test cases
Used helpers to calculate total amount 
Backgoud jobs to update payment
Used callbacks, validations, eager loading ... etc

How to start app:
1. Install the ruby and rails versions specified in the Gemfile and .ruby-version
2. Do bundle install, create databases and run migrations
3. Install and start redis
4. Start rails app and sidekiq also
5. Run the rspec to see test coverage

