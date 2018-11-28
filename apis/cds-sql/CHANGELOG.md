# Changelog

All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/).

The format is based on [Keep a Changelog](http://keepachangelog.com/).

## Version 0.10.0 - tbd

### Added

### Changed

### Fixed

### Removed

## Version 0.9.2 - 2018-09-05

### Added

- SQL generation for SELECT statements that include UNION

### Changed

- Improved npm-shrinkwrap

### Fixed

- Postprocessing breaks without CSN

## Version 0.9.1 - 2018-08-28

(Preparation for Release)

## Version 0.9.0 - 2018-08-28

### Changed

- .getColumns includes annotations
- .deploy of BaseClient uses CDS-Compiler to do database setup

### Fixed

- SQL generation in case of CREATE statements using structured elements containing managed associations
- Postprocessing of expand to many in plain mode

## Version 0.8.1 - 2018-08-09

### Changed

- Require submodules on demand

## Version 0.8.0 - 2018-08-07

### Added

- Support for exists in combination with expand
- Support column annotations '@cds.on.insert', '@cds.on.update', '@odata.on.insert' and '@odata.on.update'
- Post processing of complex and structured types
- Support for unary and binary expressions in contains
- Support for CQN partials at .where

### Changed

- Renamed SELECT.elements to SELECT.columns
- SQL Error provides info about the executed query and values in logs

### Fixed

- Deep expands with more than 10 levels
- Expand to composition and further to one association
- Structured types at expand could lead to ambiguity

## Version 0.7.0 - 2018-07-11

### Added

- CREATE supports type cds.Composition
- Expand supports type cds.Composition
- Support for structured elements

## Version 0.6.0 - 2018-07-02

### Added

- Shortcut for running queries with run().then.run()

### Fixed

- SQL generation in case of combination of navigation and expand in SELECT statements

## Version 0.5.0 - 2018-06-25

### Added

- custom builders can now be provided via options in SQL Builder
- support create with views 
- added SQL Error to hide the internal information from other errors
- support structured elements
- support for complex types in Create Builder
- BaseClient has method .deploy to easily create database artifacts from csn model
- support for SQL function contains by converting it using like
- support execution of blocks of statements

### Changed

- quotation in SQL generation is now configurable (default is plain)
- support for latest CQN spec changes

### Fixed

- column generation for managed associations
- CREATE statement with managed association as key
- resolve $self for expand
- 1:1 associations can be null

## Version 0.4.0 - 2018-05-02

### Added

- BaseClient has methods .run & .foreach & .isValid

### Changed

- support for latest CQN spec changes

## Version 0.3.0 - 2018-04-16

### Added

- support CREATE statements

### Fixed

- auto-generated columns in expand=* requests

## Version 0.2.0 - 2018-03-16 
### Added

- usage of npm-shrinkwrap

### Changed

- improved performance for expand in case of one-to-many relations

### Fixed

- ambiguous column name when having multiple expands on same entity