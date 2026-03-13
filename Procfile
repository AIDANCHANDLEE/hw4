web: RAILS_ENV=production bundle exec puma -t 5:5 -p ${PORT:-3000} -e production
release: bundle exec rails db:migrate
