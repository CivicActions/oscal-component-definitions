# OSCAL Reusable Component Defintions Library

`version 0.0.1`

This is a reusable compliance component library. It contains (either or both)
[OpenControl](https://open-control.org/) and [NIST OSCAL](https://pages.nist.gov/OSCAL/)
component definitions and ancillary information such as control verification methods.

A collection of free and open source (FOSS) tools are being built that will enable library
access and component review and selection. These include:

- [ATOasap](https://github.com/CivicActions/atoasap_api)
- [compliance-io](https://github.com/CivicActions/compliance-io)
- [SSP-Toolkit](https://github.com/CivicActions/ssp-toolkit/)

## Component Definition

[NIST OSCAL defines a component](https://pages.nist.gov/OSCAL/documentation/schema/implementation-layer/component/) as:

- A description of the controls that are supported in a given implementation of a
  hardware, software, service, policy, process, procedure, or compliance artifact (e.g.,
  FIPS 140-2 validation).
- A component can be either a technical component, or a documentary component.
  - A technical component is a component that is implemented in hardware (physical or virtual) or software.
  - A documentary component is a component implemented in a document, such as a process, procedure, or policy.

A perhaps simpler way to think of a component is as:

- A reusable grouping of partial or complete control implementation statements (or
  justifications, possibly in template form) that deal with specific security requirements
  of a defined technology, function and/or process.

## Structure

- `README.md`
  - This file.
- `code.json`
  - The format of this` file is defined in
    <https://code.gov/agency-compliance/compliance/inventory-code>.
  - We expect that there will be a number of component libraries offering reusable,
    general-purpose components.
  - A `code.json` file providing a manifest enhanced with additional metadata will
    support the indexing and selection of appropriate component defintions.
  - Suggested tags:
    - `OSCAL Component Library`
    - `NIST SP 800-53r4`
    - `NIST SP 800-53r5`
    - `CMS ARS 3.1`
    - `CMS ARS 5.0`
    - `OpenControl`
    - `OSCAL v1.0.x``

- `component-name/`
  - The name of a component in the library, e.g. "`cloud-protection-manager`".
  - Note that there may be several instances of the `component-name` with different uses,
    inheritance, impact levels, etc. Initially we will manage these as branches.
  - We could instead add a level of indirection: `component-name/unique-descriptive-tag/` such as:
    - `component-name/aws-moderate/`
    - `component-name/azure-high/`
    - `component-name/vendor-default/`

- `component-name/opencontrol/component.yaml`
  - The OpenControl reusable component in machine readable YAML. Can be used either:
    - during refactoring of an existing SSP into known components, or
    - when creating a new SSP that employs the component's technology (policy/process/etc).

- `component-name/oscal/`
  - Location for the OSCAL reusable component (similar to OpenControl above).
  
- `scripts/`
  - `oc_to_oscal.sh` converts OpenControl components in library to OSCAL-1.0.2
  - `validate.sh` validates components in library to be OSCAL-1.0.2 compliant

### Placeholders for future enhancements

- `odp-defaults/`
  - A folder of global odp.json files for completing templates with "organizational
    defined parameters".
- `component-name/odp/`
  - A folder of default odp.json files for completing the `component-name` template.
- `component-name/template/`
  - A location for OpenControl and/or OSCAL templates enabling greater reusability.
