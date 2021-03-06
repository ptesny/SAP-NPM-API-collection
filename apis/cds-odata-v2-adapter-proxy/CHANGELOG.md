# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

<!-- New version information is automatically added after line 8 -->

## Version 1.4.44 - 2020-09-03

### Fixed

- Rename proxy option 'standalone' to 'mtxRemote'
- Allow proxy option 'mtxEndpoint' to be absolute http url
- Support for 'cds.env' for proxy options under section 'cds.cov2ap'
- Update README and JSDoc documentation

## Version 1.4.43 - 2020-09-01

### Fixed

- Fix \$filter function conversion
- Fix remote CSN fetch for standalone proxy
- Fix '@sap.aggregation.role' annotation detection
- Annotation '@cov2ap.analytics' to suppress analytical conversion
- Update README documentation

## Version 1.4.42 - 2020-08-05

### Fixed

- Add missing 'Content-ID' header for batch changeset

## Version 1.4.41 - 2020-08-03

### Fixed

- CDS 4 compatibility
- Improve logging layers
- Update README documentation
- Improve JWT tenant processing

## Version 1.4.40 - 2020-07-20

### Fixed

- Fix aggregation grouping on filtered elements
- Support 'sap:' analytical annotations

## Version 1.4.39 - 2020-07-10

### Fixed

- Move annotation ContentDisposition.Filename to data element
- Improve stability of content disposition

## Version 1.4.38 - 2020-07-06

### Fixed

- Fix 'base' proxy option (follow-up)

## Version 1.4.37 - 2020-06-26

### Fixed

- Replace 'pathRewrite' option by 'targetPath' option
- Fix 'base' proxy option
- Respect OData annotation '@odata.Type'
- Alternative annotation @Common.ContentDisposition.Filename

## Version 1.4.36 - 2020-06-24

### Fixed

- Fix escaping of quote for function parameters
- SAP Fiori Elements v2 sample app

## Version 1.4.35 - 2020-06-23

### Fixed

- Fix reserved uri characters (follow-up)

## Version 1.4.34 - 2020-06-17

### Fixed

- Fix entity key with (encoded) reserved uri characters

## Version 1.4.33 - 2020-05-29

### Fixed

- Service Document in XML format (default)
- Update dependencies
- Disable network log per default

## Version 1.4.32 - 2020-05-27

### Fixed

- Update dependencies
- Update README on localization
- Toggle switch for network logging
- Allow HANA SYSUUID as UUID

## Version 1.4.31 - 2020-05-25

### Fixed

- Align model resolving
- Fix data types conversion for numbers
- Fix data types recognition in functions
- Support response compression
- Prevent unnecessary data serialization for tracing
- Performance optimization for entity key/uri calculation
- General performance optimizations
- Update dependencies

## Version 1.4.30 - 2020-05-01

### Fixed

- Make function call with request body more robust
- Fallback severity for detail messages to error
- Keep request body for action call
- Update README on CF deployment

## Version 1.4.29 - 2020-04-28

### Fixed

- Fix analytics default value for all OData types
- Fix long running data type conversion for filter elements

## Version 1.4.28 - 2020-04-27

### Fixed

- Fix \$filter in analytics query
- Fix count for empty analytics result
- Fix result projection for analytics query
- Fix analytics "null" result values
- Only add root error, if no details messages

## Version 1.4.27 - 2020-04-21

### Fixed

- Add root error as first detail message
- Error code including "transition", marks transition message

## Version 1.4.26 - 2020-04-20

### Fixed

- Fix \$filter for navigation elements
- Fix OData annotations conversion for Java backends
- Add request authorization parsing for logging

## Version 1.4.25 - 2020-04-08

### Fixed

- Add additional messages as details

## Version 1.4.24 - 2020-04-07

### Fixed

- Fix for metadata transfer-encoding chunked
- Filter '@' attributes

## Version 1.4.23 - 2020-04-01

### Fixed

- Fix type conversion for "le" operator

## Version 1.4.22 - 2020-03-27

### Fixed

- Fix entity uri path behind app router
- Update dependencies

## Version 1.4.21 - 2020-03-02

### Fixed

- Improve \$metadata logging
- Fix \$metadata call headers

## Version 1.4.20 - 2020-02-27

### Fixed

- Fix CDS backwards compatibility

## Version 1.4.19 - 2020-02-25

### Fixed

- Fix ETag Support (Concurrency Control)
- Support streaming from URL media
- Adding custom path rewrite
- Custom server.js support
- Fix for rendering aggregation of integers
- Fix time duration parsing
- Misc fixes and improvements
- General housekeeping
- Moving from axios to node-fetch

## Version 1.4.18 - 2020-02-03

### Fixed

- Improve \$value handling for streaming
- Fix stream filename retrieval
- Optimize edmx localization
- Improve logging and tracing handling
- Fix for external services (e.g. Java backend) support
- Re-add "services" configuration for external service mapping
- Fix for search phrase

## Version 1.4.17 - 2020-01-20

### Fixed

- Support for virtual hosts (e.g. Cloud Connector)
- Fix decode URI for path name
- Fix IEEE754 compatibility for single requests
- Add IEEE754 compatibility option switch

## Version 1.4.16 - 2020-01-14

### Fixed

- Enforce IEEE754 compatibility
- Pin Axios library

## Version 1.4.15 - 2019-12-20

### Fixed

- Fix authentication prompt for \$metadata
- Improve trace handling

## Version 1.4.14 - 2019-12-19

### Fixed

- Protect \$metadata call
- Fix \$filter parentheses nesting
- Fix "all" model loading from app, srv
- Improve \$filter handling, incl. data type and negative tests

## Version 1.4.13 - 2019-12-12

### Fixed

- Remove "services" configuration, as it is obsolete
- Fix nested functions in \$filter

## Version 1.4.12 - 2019-12-06

### Fixed

- Fix service and CSN model detection

## Version 1.4.9 - 2019-12-05

### Fixed

- Allow CSN JSON object as model option
- Raise error, if service not found based on path
- Fix service paths with hyphen
- Fix cds.Date, cds.Time data type mappings

## Version 1.4.8 - 2019-11-14

### Fixed

- Increased body size limit
- Fix engine config, to allow Node >= 8
- Map cds.DateTime and cds.Timestamp to Edm.DateTimeOffset

## Version 1.4.6 - 2019-11-07

### Fixed

- Update on README documentation
- Minor fixes

## Version 1.4.5 - 2019-10-25

### Fixed

- \_\_count is now of type String
- Aggregation values are converted according to dynamic type
- Search support
- Fix for converting warning messages

## Version 1.4.4 - 2019-10-07

### Fixed

- Filter data type conversions

## Version 1.4.3 - 2019-10-01

### Fixed

- Check CDS multitenancy/extensibility (mtx)
- Allow options that are falsy for Javascript

## Version 1.4.2 - 2019-09-24

### Fixed

- Looser declaration or peer dependency to be compatible with snapshots

## Version 1.4.1 - 2019-09-11

### Fixed

- Fixed compatibility to CDS 3.17.0
- Propagate x-request-id, x-correlationid

## Version 1.4.0 - 2019-09-09

### Fixed

- Raise error message for not supported aggregation function (e.g. #FORMULA)
- Fixed entity key calculation for key associations
- Fixed DateTime representation in entity key structure

## Version 1.3.0 - 2019-08-30

### Fixed

- Passing through responses in XML (just for errors)
- Data-type mapping on aggregation values works for non-strings

## Version 1.2.0 - 2019-08-08

### Added

- External Release

## Version 1.0.0 - 2019-05-21

### Added

- Internal Release
