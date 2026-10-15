# CLI & Log Analysis Practice

Practice with PowerShell CLI and application logs from a QA perspective.

## Covered Skills

- Navigation through directories
- Reading log files
- Searching for errors
- Filtering logs by HTTP status code
- Searching by `request_id`
- Viewing context around an error
- Monitoring logs in real time
- Searching across multiple `.log` files
- Basic file operations

## QA Scenario

A user tried to make a payment and the API returned HTTP `500`.

The goal was to:

1. Find the error across application logs.
2. Identify the log file containing the failure.
3. Extract the `request_id`.
4. Find all log entries related to the same request.
5. Determine the failed endpoint.
6. Identify the probable cause of the error.

### Example log

```text
2026-10-15 17:40:11 INFO request_id=abc123 POST /payment started
2026-10-15 17:40:12 ERROR status=500 request_id=abc123 Payment service unavailable
