# DJANGO


Django is a free and open-source, Python-based web framework that follows the
model–template–views architectural pattern.


## Overview

## Candidate


### AC-03: Access Enforcement

***Control Provider type: Hybrid***

The Django web framework can be configured to enforce logical access to its information
and services.

***Customer Responsibility***

*This control may require a system specific implementation statement.*

***NIST SP 800-53 Revision 4 Control Description***

The information system enforces approved authorizations for logical access to information
and system resources in accordance with applicable access control policies.


### AC-07: Unsuccessful Logon Attempts

***Control Provider type: Hybrid***

Django can be configured to lock an account after a specified number of invalid login
attempts within a specified time period.

***Customer Responsibility***

*This control may require a system specific implementation statement.*

***NIST SP 800-53 Revision 4 Control Description***

The information system:

- a. Enforces a limit of [Assignment: organization-defined number] consecutive invalid
  logon attempts by a user during a [Assignment: organization-defined time period]; and

- b. Automatically [Selection: locks the account/node for an [Assignment:
  organization-defined time period]; locks the account/node until released by an
  administrator; delays next logon prompt according to [Assignment: organization-defined
  delay algorithm]] when the maximum number of unsuccessful attempts is exceeded.


### AC-11: Session Lock

***Control Provider type: Hybrid***

The Django web framework has built-in session management that includes locking a session
after a specific duration of inactivity.

***Customer Responsibility***

*This control may require a system specific implementation statement.*

***NIST SP 800-53 Revision 4 Control Description***

The information system:

- a. Prevents further access to the system by initiating a session lock after [Assignment:
  organization-defined time period] of inactivity or upon receiving a request from a user;
  and

- b. Retains the session lock until the user reestablishes access using established
  identification and authentication procedures.


### AC-12: Session Termination

***Control Provider type: Hybrid***

Django can be configured to terminate a user session when defined conditions or trigger events occur.

***Customer Responsibility***

*This control may require a system specific implementation statement.*

***NIST SP 800-53 Revision 4 Control Description***

The information system automatically terminates a user session after [Assignment: organization-defined conditions or trigger events requiring session disconnect].


### AC-14: Permitted Actions Without Identification or Authentication

***Control Provider type: Hybrid***

The Django web framework has built-in session management and path routing that are
combined to control which actions can be performed by anonymous end-users without
authentication.

***Customer Responsibility***

*This control may require a system specific implementation statement.*

***NIST SP 800-53 Revision 4 Control Description***

The organization:

- a. Identifies [Assignment: organization-defined user actions] that can be performed on
  the information system without identification or authentication consistent with
  organizational missions/business functions; and

- b. Documents and provides supporting rationale in the security plan for the information
  system, user actions not requiring identification or authentication.


### AU-02: Audit Events

***Control Provider type: Hybrid***

Django can be configured to provide auditable event logs.

***Customer Responsibility***

*This control may require a system specific implementation statement.*

***NIST SP 800-53 Revision 4 Control Description***

The organization:

- a. Determines that the information system is capable of auditing the following events:
  [Assignment: organization-defined auditable events];

- b. Coordinates the security audit function with other organizational entities requiring
  audit-related information to enhance mutual support and to help guide the selection of
  auditable events;

- c. Provides a rationale for why the auditable events are deemed to be adequate to
  support after-the-fact investigations of security incidents; and

- d. Determines that the following events are to be audited within the information system:
  [Assignment: organization-defined audited events (the subset of the auditable events
  defined in AU-2 a.) along with the frequency of (or situation requiring) auditing for
  each identified event].


### IA-02: Identification and Authentication

***Control Provider type: Hybrid***

Django user Authentication can be done via username and password or can be delegated to a
Single Sign-On service.

***Customer Responsibility***

*This control may require a system specific implementation statement.*

***NIST SP 800-53 Revision 4 Control Description***

The information system uniquely identifies and authenticates organizational users (or
processes acting on behalf of organizational users).


### IA-06: Authenticator Feedback

***Control Provider type: Hybrid***

The Django web framework obscures passwords when entered during the authentication
process. Failed login attempts return a generic error message to the user, not allowing
the user to ascertain whether the username or password provided exists in the system.

***Customer Responsibility***

*This control may require a system specific implementation statement.*

***NIST SP 800-53 Revision 4 Control Description***

The information system obscures feedback of authentication information during the
authentication process to protect the information from possible exploitation/use by
unauthorized individuals.


### SC-02: Application Partitioning

***Control Provider type: Hybrid***

The Django web framework has separate admin functionality that requires Admininstrator
role authentication for access to system management functionality.

***Customer Responsibility***

*This control may require a system specific implementation statement.*

***NIST SP 800-53 Revision 4 Control Description***

The information system separates user functionality (including user interface services)
from information system management functionality.
