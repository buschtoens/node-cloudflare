# DNS Records

## Add a DNS Record
> Definition

```
cf.dnsRecords.add({ZONE_ID}, {DNS_RECORD}, [{options}])
```

> Example Request

```javascript
cf.dnsRecords.add('023e105f4ecef8ad9ca31a8372d0c353', {
  type: 'A',
  name: 'example.com',
  content: '1.2.3.4'
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
}
```

Adds a new DNS record for a Zone.

## Read a DNS Record
> Definition

```
cf.dnsRecords.read({ZONE_ID}, {DNS_RECORD_ID}, [{options}])
```

> Example Request

```javascript
cf.dnsRecords.read('023e105f4ecef8ad9ca31a8372d0c353', '372e67954025e0ba6aaa6d586b9e0b59');
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
}
```

Returns the details of a specific DNS record.

## Edit a DNS Record
> Definition

```
cf.dnsRecords.edit({ZONE_ID}, {DNS_RECORD_ID}, {DNS_RECORD}, [{options}])
```

> Example Request

```javascript
cf.dnsRecords.edit('023e105f4ecef8ad9ca31a8372d0c353', '372e67954025e0ba6aaa6d586b9e0b59', {
  type: 'A',
  name: 'example.com',
  content: '127.0.0.1',
  ttl: 120,
  proxied: false
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
    "id": "372e67954025e0ba6aaa6d586b9e0b59",
    "type": "A",
    "name": "example.com",
    "content": "127.0.0.1",
    "proxiable": true,
    "proxied": true,
    "ttl": 120,
    "locked": false,
    "zone_id": "023e105f4ecef8ad9ca31a8372d0c353",
    "zone_name": "example.com",
    "created_on": "2014-01-01T05:20:00.12345Z",
    "modified_on": "2014-01-01T05:20:00.12345Z",
    "data": {}
  }
}
```

Updating the content of a DNS record.

<aside class="info">
You cannot change the DNS record type using this method. Instead, delete and add a new record.
</aside>

## Delete a DNS record.
> Definition

```
cf.dnsRecords.del({ZONE_ID}, {DNS_RECORD_ID}, [{options}])
```

> Example Request

```javascript
cf.dnsRecords.del('023e105f4ecef8ad9ca31a8372d0c353', '372e67954025e0ba6aaa6d586b9e0b59');
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
    "id": "372e67954025e0ba6aaa6d586b9e0b59"
  }
}
```

Returns the deleted DNS record object.

## Browse all DNS records
> Definition

```
cf.dnsRecords.browse({ZONE_ID}, [{parameters}, {options}])
```

> Example Request

```javascript
cf.dnsRecods.browse('023e105f4ecef8ad9ca31a8372d0c353',
  {
    page: 2,
    per_page: 20
  }
);
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

Returns a list of DNS records on the specified Zone. By default, 20 results are returned at a time, this can be adjusted
with the `per_page` parameter.