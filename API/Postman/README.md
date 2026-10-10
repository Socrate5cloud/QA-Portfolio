# Postman API Practice

Postman collection with API testing practice using DummyJSON.

## Covered scenarios

- User login
- Access token receiving
- Saving access token to a collection variable
- Bearer token authorization
- Authenticated request to get current user
- Automated response checks
- Collection Runner execution

## Automated checks

- Status code is 200
- Response Content-Type is application/json
- Access token is received
- Access token is saved to a collection variable
- Username is validated

## Variables

- `base_url` — API base URL
- `access_token` — access token received after login

Sensitive token values are not stored in the repository.
