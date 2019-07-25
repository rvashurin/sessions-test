# Cross-subdomain sessions test app

### Setup

1. Point test domains to localhost (in /etc/hosts):
```
127.0.0.1 sessions.com
127.0.0.1 test1.sessions.com
127.0.0.1 test2.sessions.com
```
2. Setup nginx reverse proxy:
```
    server {
        listen       127.0.0.1:80;
        server_name  sessions.com;
        location / {
          proxy_pass http://127.0.0.1:4005;
          proxy_set_header Host $host;
        }
    }

    server {
        listen       127.0.0.1:80;
        server_name  *.sessions.com;
        location / {
          proxy_pass http://127.0.0.1:4005;
          proxy_set_header Host $host;
        }
    }

```
3. Fire up application:
`bundle install && rails s -p 4005`
4. Observe sessions behaviour via preset breakpoints in controller actions
