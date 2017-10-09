---
title: Cloudflare Node.js Reference
search: true
includes:
  - dnsRecords
  - ips
  - zones
  - user
---

# Introduction

The Cloudflare Node.js library is organized around a BREAD organization: Browse, Read, Edit, Add, and Delete. The library
is designed to make it easy to interact with the Cloudflare API within your application, witohut having to worry about
the specifics for good security or performance.

# Authentication

```javascript
const cf = require('cloudflare')({
  email: 'you@example.com',
  key: 'your API key'
});
```

> Authentication is transparently handled for you in subsequent method calls on the returned object.

Authenticate to your Cloudflare account by including the approriate API key. You API keys can be found in your Account
settings in the Cloudflare dashboard. Most API endpoints will use the "Global API Key", we'll note where the other API
keys are expceted.

# Errors

In general, the Cloudflare API uses conventional HTTP response codes to indicate the success or failure of an API request.
Codes in then `2xx` range are considered success, codes in the `4xx` range indicate an error based on the information given,
and codes in the `5xx` range indicate a server error.

## Handling errors

> Methods do not throw exceptions, instead the returned promise will be rejected.

```javascript
cf.user.read()
  .catch((err) => {
    console.error(err);
  });
```

> When using async/await programming style, you can use try/catch as if an exception was thrown.

```javascript
try {
  await cf.user.read();
} catch (err) {
  console.error(err);
}
```

The Node.js library turns errors into rejected promises.

<aside class="warning">
The specific structure of errors (and their types) are still
being designed, and may change.
</aside>

# Pagination
> Example Request

```javascript
cf.dnsRecords.browse({
  page: 2,
  per_page: 20
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
  "result": [
    {
      "id": "372e67954025e0ba6aaa6d586b9e0b59",
      "type": "A",
      "name": "example.com",
      "content": "1.2.3.4",
      "proxiable": true,
      "proxied": false,
      "ttl": 120,
      "locked": false,
      "zone_id": "023e105f4ecef8ad9ca31a8372d0c353",
      "zone_name": "example.com",
      "created_on": "2014-01-01T05:20:00.12345Z",
      "modified_on": "2014-01-01T05:20:00.12345Z",
      "data": {}
    }
  ],
  "result_info": {
    "page": 2,
    "per_page": 20,
    "count": 1,
    "total_count": 21
  }
}
```

Most top-level API resources have support for bulk fetches via the `browse` API method. These browse API methods share
a common structure, taking at least two parameters: `per_page` and `page`. These parameters utilize Cloudflare's page-based
pagination.

**Arguments**
<table>
  <tbody>
    <tr>
      <td>per_page (optional)</td>
      <td>A limit on the number of objects returned per page</td>
    </tr>
    <tr>
      <td>page (optional)</td>
      <td>The current page of results to return</td>
    </tr>
  </tbody>
</table>