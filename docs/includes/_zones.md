# Zones

## Add a Zone
> Definition

```
cf.zones.add({ZONE}, [{options}])
```

> Example Request

```javascript
cf.zones.add({
  name: 'example.com',
  jump_start: true,
  organization: {
    id: '01a7362d577a6c3019a474fd6f485823'
  }
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
    "id": "023e105f4ecef8ad9ca31a8372d0c353",
    "name": "example.com",
    "development_mode": 7200,
    "original_name_servers": [
      "ns1.originaldnshost.com",
      "ns2.originaldnshost.com"
    ],
    "original_registrar": "GoDaddy",
    "original_dnshost": "NameCheap",
    "created_on": "2014-01-01T05:20:00.12345Z",
    "modified_on": "2014-01-01T05:20:00.12345Z",
    "name_servers": [
      "tony.ns.cloudflare.com",
      "woz.ns.cloudflare.com"
    ],
    "owner": {
      "id": "7c5dae5552338874e5053f2534d2767a",
      "email": "user@example.com",
      "owner_type": "user"
    },
    "permissions": [
      "#zone:read",
      "#zone:edit"
    ],
    "plan": {
      "id": "e592fd9519420ba7405e1307bff33214",
      "name": "Pro Plan",
      "price": 20,
      "currency": "USD",
      "frequency": "monthly",
      "legacy_id": "pro",
      "is_subscribed": true,
      "can_subscribe": true
    },
    "plan_pending": {
      "id": "e592fd9519420ba7405e1307bff33214",
      "name": "Pro Plan",
      "price": 20,
      "currency": "USD",
      "frequency": "monthly",
      "legacy_id": "pro",
      "is_subscribed": true,
      "can_subscribe": true
    },
    "status": "active",
    "paused": false,
    "type": "full"
  }
}
```

Adds a new Zone to either your user account or an organization account.

## Read a Zone
> Definition

```
cf.zones.read({ZONE_ID}, [{options}])
```

> Example Request

```javascript
cf.zones.read('023e105f4ecef8ad9ca31a8372d0c353');
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
    "id": "023e105f4ecef8ad9ca31a8372d0c353",
    "name": "example.com",
    "development_mode": 7200,
    "original_name_servers": [
      "ns1.originaldnshost.com",
      "ns2.originaldnshost.com"
    ],
    "original_registrar": "GoDaddy",
    "original_dnshost": "NameCheap",
    "created_on": "2014-01-01T05:20:00.12345Z",
    "modified_on": "2014-01-01T05:20:00.12345Z",
    "name_servers": [
      "tony.ns.cloudflare.com",
      "woz.ns.cloudflare.com"
    ],
    "owner": {
      "id": "7c5dae5552338874e5053f2534d2767a",
      "email": "user@example.com",
      "owner_type": "user"
    },
    "permissions": [
      "#zone:read",
      "#zone:edit"
    ],
    "plan": {
      "id": "e592fd9519420ba7405e1307bff33214",
      "name": "Pro Plan",
      "price": 20,
      "currency": "USD",
      "frequency": "monthly",
      "legacy_id": "pro",
      "is_subscribed": true,
      "can_subscribe": true
    },
    "plan_pending": {
      "id": "e592fd9519420ba7405e1307bff33214",
      "name": "Pro Plan",
      "price": 20,
      "currency": "USD",
      "frequency": "monthly",
      "legacy_id": "pro",
      "is_subscribed": true,
      "can_subscribe": true
    },
    "status": "active",
    "paused": false,
    "type": "full"
  }
}
```

Returns the details of a specific zone.

## Edit a Zone
> Definition

```
cf.zones.edit({ZONE_ID}, {ZONE}, [{options}])
```

> Example Request

```javascript
cf.zones.edit('023e105f4ecef8ad9ca31a8372d0c353', {
  paused: false,
  plan: {
    id: 'e592fd9519420ba7405e1307bff33214'
  }
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
    "id": "023e105f4ecef8ad9ca31a8372d0c353",
    "name": "example.com",
    "development_mode": 7200,
    "original_name_servers": [
      "ns1.originaldnshost.com",
      "ns2.originaldnshost.com"
    ],
    "original_registrar": "GoDaddy",
    "original_dnshost": "NameCheap",
    "created_on": "2014-01-01T05:20:00.12345Z",
    "modified_on": "2014-01-01T05:20:00.12345Z",
    "name_servers": [
      "tony.ns.cloudflare.com",
      "woz.ns.cloudflare.com"
    ],
    "owner": {
      "id": "7c5dae5552338874e5053f2534d2767a",
      "email": "user@example.com",
      "owner_type": "user"
    },
    "permissions": [
      "#zone:read",
      "#zone:edit"
    ],
    "plan": {
      "id": "e592fd9519420ba7405e1307bff33214",
      "name": "Pro Plan",
      "price": 20,
      "currency": "USD",
      "frequency": "monthly",
      "legacy_id": "pro",
      "is_subscribed": true,
      "can_subscribe": true
    },
    "plan_pending": {
      "id": "e592fd9519420ba7405e1307bff33214",
      "name": "Pro Plan",
      "price": 20,
      "currency": "USD",
      "frequency": "monthly",
      "legacy_id": "pro",
      "is_subscribed": true,
      "can_subscribe": true
    },
    "status": "active",
    "paused": false,
    "type": "full"
  }
}
```

Edits the `paused`, `vanity_nameservers`, and `plan` of a Zone.

<aside class="info">
When multiple properties are edited at once, they are set serially. This may result in errors.
</aside>

## Delete a Zone
> Definition

```
cf.zones.del({ZONE_ID}, [{options}])
```

> Example Request

```javascript
cf.zones.del('023e105f4ecef8ad9ca31a8372d0c353');
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
    "id": "023e105f4ecef8ad9ca31a8372d0c353"
  }
}
```

Deletes a zone.

## Browse all Zones
> Definition

```
cf.zones.browse([{parameters}, {options}])
```

> Example Request

```javascript
cf.zones.browse({
  status: 'pending'
})
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
      "id": "023e105f4ecef8ad9ca31a8372d0c353",
      "name": "example.com",
      "development_mode": 7200,
      "original_name_servers": [
        "ns1.originaldnshost.com",
        "ns2.originaldnshost.com"
      ],
      "original_registrar": "GoDaddy",
      "original_dnshost": "NameCheap",
      "created_on": "2014-01-01T05:20:00.12345Z",
      "modified_on": "2014-01-01T05:20:00.12345Z",
      "name_servers": [
        "tony.ns.cloudflare.com",
        "woz.ns.cloudflare.com"
      ],
      "owner": {
        "id": "7c5dae5552338874e5053f2534d2767a",
        "email": "user@example.com",
        "owner_type": "user"
      },
      "permissions": [
        "#zone:read",
        "#zone:edit"
      ],
      "plan": {
        "id": "e592fd9519420ba7405e1307bff33214",
        "name": "Pro Plan",
        "price": 20,
        "currency": "USD",
        "frequency": "monthly",
        "legacy_id": "pro",
        "is_subscribed": true,
        "can_subscribe": true
      },
      "plan_pending": {
        "id": "e592fd9519420ba7405e1307bff33214",
        "name": "Pro Plan",
        "price": 20,
        "currency": "USD",
        "frequency": "monthly",
        "legacy_id": "pro",
        "is_subscribed": true,
        "can_subscribe": true
      },
      "status": "active",
      "paused": false,
      "type": "full"
    }
  ],
  "result_info": {
    "page": 1,
    "per_page": 20,
    "count": 1,
    "total_count": 2000
  }
}
```

Returns a list of Zones available to the account. By default, 20 results are returned at a time, this can be adjusted
with the `per_page` parameter.

## Activation Check
> Definition

```
cf.zones.activationCheck({ZONE_ID}, [{options}])
```

> Example Request

```javascript
cf.zones.activationCheck('023e105f4ecef8ad9ca31a8372d0c353');
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
    "id": "023e105f4ecef8ad9ca31a8372d0c353"
  }
}
```

Initiates another zone activation check.

## Purge Cached Files
> Definition

```
cf.zones.purgeCache({ZONE_ID}, [{parameters}, {options}])
```

> Example Request

```javascript
cf.zones.purgeCache('023e105f4ecef8ad9ca31a8372d0c353', {
  files: [
    'http://www.example.com/css/styles.css'
  ]
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
    "id": "023e105f4ecef8ad9ca31a8372d0c353"
  }
}
```

When no parameters are provided, purges all cached files for a zone. Optional parameters may be provided to limit the
files that are purged.

**parameters**
<table>
  <tbody>
    <tr>
      <td>files (optional)</td>
      <td>An array of URLs that should be purged from the cache</td>
    </tr>
    <tr>
      <td>tag (optional)</td>
      <td>Purge respones cached using the `Cache-Tag` feature</td>
    </tr>
  </tbody>
</table>