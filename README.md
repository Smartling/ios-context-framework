# Smartling Context Capturing Library

Captures context from a native iOS application and uploads it to Smartling's translation management system.

## Translation Context

Smartling provides the capability to capture native application views and render them as an HTML document. The resulting HTML document is sent to the the HTML Context API to be associated with a customer's content.

## High Level Architecture

To capture context, the following components are required:

1. Smartling Context Framework (this project) - native iOS framework that captures context by walking the currently displayed view hierarchy and creating a JSON representation of the views.
2. MDN servers - Spring Boot / JDK 8 based service comprised of public endpoints and Java code capable of ingesting the data produced by the Smartling Context Framework and rendering an HTML document the represents the native view.
3. MongoDB - Used to store context as a document and related image files in a GridFS data store.
4. HTML Context Endpoint (already in production) receives HTML context produced by the MDN and associates context with customer's project.

