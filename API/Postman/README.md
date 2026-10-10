# Postman API Practice

Postman collection with API testing practice using DummyJSON.

## Covered scenarios

- User login
- Access token receiving
- Refresh token receiving
- Saving tokens to collection variables
- Bearer token authorization
- Refreshing access token
- Authenticated request to get current user
- Automated response checks
- Collection Runner execution

## API Flow

1. `POST /auth/login`
   - Sends username and password
   - Receives `accessToken` and `refreshToken`
   - Saves both tokens to collection variables

2. `POST /auth/refresh`
   - Sends `refreshToken`
   - Receives new access and refresh tokens
   - Updates collection variables

3. `GET /auth/me`
   - Uses `Bearer {{access_token}}`
   - Returns the authenticated user's profile

## Automated Checks

### Login
- Status code is 200
- Access token is received
- Access token is saved
- Refresh token is saved

### Refresh Token
- Status code is 200
- New access token is received
- New refresh token is received

### Get Current User
- Status code is 200
- Content-Type is `application/json`
- Username is `emilys`

## Collection Runner

Full authentication flow can be executed automatically:

Login → Refresh Token → Get Current User

Current run result:

- 10 tests passed
- 0 failed
- 0 errors

## Variables

- `base_url` — API base URL
- `access_token` — generated automatically after login or token refresh
- `refresh_token` — generated automatically after login or token refresh

Sensitive token values are not stored in the repository.
