# User

Retrieve and manage information about the authenticated in user.

## Read User
> Definition

```
cf.user.read([{options}])
```

> Example Request

```javascript
cf.user.read();
```

> Example Response

```json
{
  "success": true,
  "errors": [
    {}
  ],
  "messages": [
    {}
  ],
  "result": {
    "id": "7c5dae5552338874e5053f2534d2767a",
    "email": "user@example.com",
    "first_name": "John",
    "last_name": "Appleseed",
    "username": "cfuser12345",
    "telephone": "+1 123-123-1234",
    "country": "US",
    "zipcode": "12345",
    "created_on": "2014-01-01T05:20:00Z",
    "modified_on": "2014-01-01T05:20:00Z",
    "two_factor_authentication_enabled": false
  }
}
```

Returns details about the authenticated user.

## Edit User
> Definition

```
cf.user.edit({USER}, [{options}])
```

> Example Request

```javascript
cf.user.edit({
  first_name: 'Jane',
  last_name: 'Smith'
});
```

> Example Response

```json
{
  "success": true,
  "errors": [
    {}
  ],
  "messages": [
    {}
  ],
  "result": {
    "id": "7c5dae5552338874e5053f2534d2767a",
    "email": "user@example.com",
    "first_name": "Jane",
    "last_name": "Smith",
    "username": "cfuser12345",
    "telephone": "+1 123-123-1234",
    "country": "US",
    "zipcode": "12345",
    "created_on": "2014-01-01T05:20:00Z",
    "modified_on": "2014-01-01T05:20:00Z",
    "two_factor_authentication_enabled": false
  }
}
```

Edits the information for the authenticated user.