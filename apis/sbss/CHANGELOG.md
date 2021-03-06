# Change Log
All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/).

The format is based on [Keep a Changelog](http://keepachangelog.com/).

## 4.1.2 - 2020-07-30

### Fixed
- Update `lodash` to 4.17.19

## 4.1.1 - 2019-07-11

### Fixed
- Update `lodash` to 4.17.13
- Update `@sap/hdbext` to 6.0.1

## 4.1.0 - 2019-05-21

### Added
- Node.js 10 support. **Note**: To use SBSS on HANA with Node.js 10,
a version of `@sap/hdbext` (peer dependency of `@sap/sbss`) that supports Node 10 should be added to application's dependencies.
Refer to the _package.json_ file of `@sap/sbss` for the version range of `@sap/hdbext`.

## 4.0.1 - 2019-02-15

### Fixed
- Closed idle connection left from SBSS version check on PostgreSQL client
- Added `'error'` event handler on connection pool of PostgreSQL client

<a name="4.0.0"></a>
## 4.0.0 - 2019-01-18

### Removed
- The `createCredentials(instanceId, bindingId, callback)` signature
- Support for Node.js v4

### Changed
- `@sap/hdbext` is now declared as a peer dependency

### Fixed
- Supported Node.js versions field in _package.json_

## 3.4.0 - 2019-01-07

### Added
- Support for Postgre SBSS v1.3 (since SBSS 1.5.11)

## 3.3.0 - 2018-10-01

### Added
- Switch to @sap/hana-client via @sap/hdbext version 5.0.0

## 3.2.2 - 2018-09-19

### Fixed
- Update `lodash` to 4.17.11
- Update `@sap/hdbext` to 4.7.5

## 3.2.1 - 2018-04-05

### Fixed
- Update dependencies

## 3.2.0 - 2018-02-19

### Added
 - Support for PostgreSQL restricted user credentials
 - npm-shrinkwrap.json

## 3.1.1 - 2017-08-28

### Fixed
- Updated documentation with new SBSS features
- `options.appGuid` argument to `createCredentials` is now optional also with PostgreSQL

## 3.1.0 - 2017-08-25

### Added
- Support new SBSS version (both HANA and PostgreSQL)
- Use connection pooling with HANA

### Fixed
- Fix code execution vulnerability https://node-postgres.com/announcements#2017-08-12-code-execution-vulnerability

## 3.0.0 - 2017-05-09

### Changed
- Renamed property `user` to `username` in the result of `createCredentials`

## 2.0.0 - 2017-05-03

### Changed
- Renamed function `deleteBindingCredentials` to `deleteCredentials`
