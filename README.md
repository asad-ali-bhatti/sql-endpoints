### Challenge
  Create UI to let user create API endpoints with a SQL query. UI have a text field for endpoint path and a text area for SQL query. After creating endpoint user can send request to api endpoint (i.e http:localhost:3000/api/example-endpoint) and get result for executed query.  
### Features Completed:

- Create/edit/delete endpoint with UI
- When creating I want to define SQL query and endpoint URL
- Create stats page for each endpoint - how many requests were:
  -  In total
  - Today
  - In last 6h, 12h, 24h
- Access data from the API endpoint
- Other requirements:
  - Endpoint queries will be only select queries.

### Setup

  - clone repo and cd into sql-endpoints folder
  
     `git clone git@github.com:asad-ali-bhatti/sql-endpoints.git && cd sql-endpoints`
  
  - run bundle install 
     
     `bundle install`
  
  - run migrations 
  
     `rails db:migrate`
     
  - import imports.sql file (it has a imports table on which user can execute query)
  
      `bundle exec rails db < imports.sql`
      
  - Start server 
   
     `rails s`
     
### Things left to do 
 
  - Validate enpoint-path (route globing will fail if endpoint is saved with a leading '/').
  - Improve sql query validator ().
    -- Queries can only be read only.
    -- at the moment it only checks if DDL and DML keywords in the string.
    -- it will fail if where condition have a DDL/DML keyword. (i.e select * from imports where country = delete)
    -- I want to improve it by checking if query string starts with DDL/DML keywords. 
  - Provide request specs for api to test api-enpoints. 
  
    
