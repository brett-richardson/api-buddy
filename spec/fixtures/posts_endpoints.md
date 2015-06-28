# Posts API

## POST `/api/posts`

Creates a post in the database

```javascript
{
  "post" : {
    "id" : 123,
    "title" : "Ruby is Great",
    "author_id" : 123,
    "author_name" : "Joe Bloggs",
    "child" : {
      "author_id" : 123,
      "comment" : "abc"
    }
  }
}
```

- - - - -

## GET `/api/posts`

Gets posts from the database

```javascript
{
  "posts" : {
    "name" : "Ruby is Great",
    "author_id" : 123
  }
}
```
