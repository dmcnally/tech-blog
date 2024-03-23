# Fingerprints and Turboframes

Turbo frames generally load their content via a URL that is not visible to the user.  

A website that has a lot of tile type content can add a fingerprint as part of the url

Like assets in the Rails assets pipeline when the content changes the fingerprint should change.

A fingerprint could be as simple as a data format 'YYYYMMDDHHNNSS' or as complicated as digesting some JSON.

With a fingerprint as part of the request URL the content can be served with a very long cache expiry.

More content is pushed to the edge, less load on the server, fast for the user, automatic expiry when the content changes because we change the location its served from.

Minimal complexity to implement.

