# CloudFlare API Client for Node.js

An edible "BREAD" (Browse, Read, Edit, Add, and Delete) API Client for the
CloudFlare v4 Client API.

With this API client, you'll get the following features:

* Promise-based API, allowing for easy async/await usage in harmony JavaScript
  engines, and with JavaScript transpilers.
* Effortlessly connects over HTTP/2.
* Automatic handling of Gzip/Deflate compression.
* Expontential backoff and retry in the presence of error.

## Node.js Support

This CloudFlare API client supports Node.js v4 and greater.

## Usage

### Creating a Client

```javascript
var CFClient = require('cloudflare');
var client = new CFClient({
    email: 'you@example.com',
    key: 'deadbeef'
});
```

### Zones

#### `Zone`

* *API Reference*: [Zone properties](https://api.cloudflare.com/#zone-properties)

A normalized representation of a CloudFlare Zone. Properties that were
`snake_cased` have been changed to be `camelCased`.

#### `browseZones([query, [options]): Promise<PaginatedResponse<Zone[]>>`

* query: An object to pass filter and sorting parameters to the API
* options: *see Request Options*
* *Returns*: A Promise that resolves to a list of `Zone` objects wrapped in a `PaginatedResponse`
* *API Reference*: [List zones](https://api.cloudflare.com/#zone-list-zones)

Retrives the list of `Zone` objects, optionally filtered and sorted by `query` options.

#### `readZone(z_id, [options]): Promise<Zone>`

* z_id: The string Zone id
* options: *see Request Options*
* *Returns*: A Promise that resolves to a `Zone`
* *API Reference*: [Zone details](https://api.cloudflare.com/#zone-zone-details)

Retrives the `Zone` for the zone identifier `z_id`.

#### `deleteCache(z, query, [options]): Promise<bool>`

* z: `Zone` object or string zone id
* query: The (required) purge options for the API:
  * `purge_everything`: Delete all of the zone's content from the CloudFlare
    cache. **Note**: This may cause an increase in connections to your server
    after performing this action.
  * `files`: An array of URLs that should be removed from cache.
  * `tags`: Removes assets from cache that were served with a Cache-Tag header
    that matches a string in this array.
* options: *see Request Options*
* *Returns*: A Promise that resolves to `true`.
* *API Reference*:
  [Purge all files](https://api.cloudflare.com/#zone-purge-all-files) and
  [Purge individual files by URL and Cache-Tags](https://api.cloudflare.com/#zone-purge-individual-files-by-url-and-cache-tags)

Purges content from CloudFlare's cache. Please note that `query` is required for
this API call.

### CloudFlare IPs

#### `IPRanges`

* *API Reference*: [CloudFlare IPs properties](https://api.cloudflare.com/#cloudflare-ips-properties)

Normalized representation of the CloudFlare IP Ranges.

```
IPRanges{
    IPv4CIDRs: [
        '199.27.128.0/21'
    ],
    IPv6CIDRs: [
        '2400:cb00::/32'
    ]
}
```

#### `readIPs(): Promise<IPRanges>`

* *Returns*: A Promise that resolves to `IPRanges`
* *API Reference*: [CloudFlare IPs](https://api.cloudflare.com/#cloudflare-ips)

Retrieves the CloudFlare Edge IP addresses. These are the IP addresses used by
CloudFlare to connect to your server.
