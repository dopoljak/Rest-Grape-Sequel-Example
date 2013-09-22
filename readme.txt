install bundler:
  - 'gem install bundler'

install all gems from Gemfile:
  - 'bundle install'

run server:
  - 'rackup'

execute test request:
  - 'http://localhost:9292/api/test'

  - json response:
    {
        test: "test",
        current_time: "2013-09-22 18:50:17"
    }


create new item:
  - curl -X POST -H Content-Type:application/json http://localhost:9292/api/items -d "{\"name\": \"user002\", \"price\": \"11.11\" }"

list all items:
  - curl -X GET http://localhost:9292/api/items
  
get item by id:
  - curl -X GET http://localhost:9292/api/items/1
