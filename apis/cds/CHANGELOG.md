# Change Log

All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/).

The format is based on [Keep a Changelog](http://keepachangelog.com/).


## Version 2.8.1
### Fixes
- Packages `@sap/cds-ql` and `@sap/cds-services` are now found.
- Implementations connected to services through `@impl` are resolved correctly.

### Also see
- Changes of `@sap/cds-ql` 0.9.1
- Changes of `@sap/cds-services` 0.9.2

## Version 2.8.0
### Added
- Support was added to build node.js service modules
- `cds init` has been reimplemented with a better commandline experience, along with updated templates.  Plugin `@sap/generator-cds`, which is required for `cds init`, is now automatically installed when `init` is called for the first time.  `cds new` is still available and is now just a synonym for `init`.

### Also see
- Changes of `@sap/cds-compiler` 1.1.1
- Changes of `@sap/cds-services` 0.9.0
- Changes of `@sap/cds-ql` 0.9.0

## Version 2.7.0
### Also see
- Changes of `@sap/cds-compiler` 1.0.32
- Changes of `@sap/cds-services` 0.8.1
- Changes of `@sap/cds-ql` 0.8.1

## Version 2.6.0
### Also see
- Changes of `@sap/cds-compiler` 1.0.31
- Changes of `@sap/cds-services` 0.7.0
- Changes of `@sap/cds-ql` 0.7.0

## Version 2.5.1
### Also see
- Changes of `@sap/cds-services` 0.6.0
- Changes of `@sap/cds-ql` 0.6.0

## Version 2.5.0
### Added
- Instead of compiling each `.cds` service file separately, `cds build` now combines all those files from the same directory, creating only one `csn.json` file for them.

### Fixes
- Shortcuts of `cds init` work again

### Also see
- Changes of `@sap/cds-compiler` 1.0.30
- Changes of `@sap/cds-services` 0.5.0
- Changes of `@sap/cds-ql` 0.5.0

## Version 2.4.2
Same as version 2.3.2, but including the generic service provider for Node.js (`@sap/cds-services` and `@sap/cds-ql`).

## Version 2.3.2
### Changed
- The default for SQL name mapping is changed to `plain`.  This means that
  - The name of a table/view in the database catalog is obtained from the name of the corresponding entity in the CDS model in the following way:
    - replace all "." by "_"
    - convert everything to upper case
  - The name of a table/view column in the database catalog is obtained from the name of the corresponding entity element in the csn in the following way:
    - convert everything to upper case

  Note that this is a breaking change for appliations that rely on the previous value of `quoted`.  In order to get this value back, add the following to `package.json`: `"cds": { "data": { "sql_mapping" : "quoted" } }`

### Fixes
- Special output formatting in CLI is only done for `cds eval` and `cds repl`, but not for programmatic usage.
- Links to external documentation are now point to correct help documents.

### Also see
- Changes of `@sap/cds-compiler` 1.0.30


## Version 2.3.0
### Added
- SQL names can now be configured with `{ data: {sql_mapping: "plain/quoted"} }`.  Default is `quoted`, but will be changed to `plain` soon.  If you need to stay with `quoted` in the futute, e.g. due to data compatibility reasons, you can configure this mode already now.

### Fixes
- The `csn.json` file produced by `cds build` now contains the properly unfolded model for OData.  Previously this was the normalized model, which led to runtime errors in the Java service provider.
- Invalid configuration data in `package.json` now leads to a build error again.
- Console output of `cds build` now presents files paths sorted.

### Also see
- Changes of CDS compiler 1.0.27


## Version 2.2.0
### Added
- CDS configuration in `package.json` can now be omitted if you follow the standard project layout, i.e. if you place your model files in `db/`, `srv/`, and `app/` folders.

### Changed
- Previously data models needed to include import statements to the service models (e.g. `using from '../srv'`), so that the Java runtime could use these service views on the DB to execute queries.  The views are now included automatically, so that you can remove the explict `using` clauses.
- Calling just `cds` on the command line now prints its help.  The previously started REPL is now available with `cds repl` (or just `cds r`).

### Fixes
- Some cds commands failed on Windows.  This is fixed.

### Also see
- Changes of CDS compiler 1.0.24


## Version 2.1.0
### Added
- Service edmx files are now written to UI app folders if their manifest.json contains a reference to the service.  This allows Web IDE's annotation modeler to work on up to date service files.
- The results of `cds.compile.to...` commands are now automatically formatted if called in `cds -e...` or cds repl.  You don't need to append `console.log` to the call chain.

### Fixes
- Language properties are now found in all folders, also ones that are outside of the current module
- csn.json is written with line breaks and indentation

### Also see
- Changes of CDS compiler 1.0.21

## Version 2.0.0
### Added
- All-new command-line interface.  See `cds help` for information on the available commands.
- `cds compile` exposes CDS model transformations with various options.
- `cds build` automatically writes localized edmx files.
- `cds build` now writes the version to the build log.
- `cds version` does the usual thing.
- `cds init` scaffolds CDS projects.
- CDS repl (read-eval-print-loop): just type `cds` and play with CDS API.

### Fixes
Too many to mention :)

### Also see
- Changes of CDS compiler 1.0.19