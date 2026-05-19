# Single Sign-On (SSO) Application User Guide

## Table of Contents
1. [Introduction](#introduction)
2. [Getting Started](#getting-started)
3. [Authentication & Account Management](#authentication--account-management)
   - [Registration](#registration)
   - [Login](#login)
   - [Password Recovery](#password-recovery)
   - [Profile Management](#profile-management)
4. [User Management](#user-management)
5. [Tenant Management](#tenant-management)
6. [Webhooks](#webhooks)
7. [Glossary of Terms](#glossary-of-terms)

---

## Introduction

<!-- INSERT IMAGE: Screenshot of the SSO application home page -->
<!-- Image description: Main dashboard showing navigation menu, welcome message, and deployment options -->

The Single Sign-On (SSO) application is a centralized authentication system that allows users to access multiple applications and services with a single set of login credentials. This system simplifies user access management while enhancing security through centralized control.

Key features include:
- User authentication and authorization
- Multi-tenant architecture for organizations
- Webhook integration for event notifications
- Profile management with avatar upload capability
- Password recovery mechanisms
- Role-based access control

## Getting Started

To access the SSO application, navigate to your organization's SSO portal URL. If you're setting up the application locally for development, you can access it at:

- Development mode: `http://localhost:4200`
- Production mode: `http://localhost:3000`
- Docker production mode: `http://localhost:8080`

Upon first access, you'll be directed to the home page which provides information about the application and various deployment modes.

<!-- INSERT IMAGE: Screenshot of the home page with deployment options -->
<!-- Image description: Collapsible sections showing different deployment modes with code snippets -->

## Authentication & Account Management

### Registration

New users can register for an account by following these steps:

1. Navigate to the Sign-up page
2. Enter your email address in the email field
3. Create a secure password and confirm it
4. Click the "Sign-up" button
5. You'll be automatically logged in after successful registration

**Note:** In production environments, email verification may be required before accessing certain features.

<!-- INSERT IMAGE: Sign-up form with email and password fields -->
<!-- Image description: Form with email, password, and confirm password fields and Sign-up button -->

### Login

Registered users can access the system by logging in:

1. Navigate to the Sign-in page
2. Enter your registered email address
3. Enter your password
4. Click the "Sign-in" button
5. Upon successful authentication, you'll be redirected to the home page

The application supports "Remember Me" functionality for convenience on trusted devices.

<!-- INSERT IMAGE: Sign-in form with email and password fields -->
<!-- Image description: Form with email and password fields, Remember Me checkbox, and Sign-in button -->

### Password Recovery

If you've forgotten your password, you can reset it using the password recovery feature:

1. Navigate to the "Password recovery" page
2. Enter your registered email address
3. Click the "Recover password" button
4. Check your email for a password reset link
5. Click the link in the email to access the password reset form
6. Enter your new password twice to confirm
7. Click "Reset password" to complete the process

<!-- INSERT IMAGE: Password recovery form with email field -->
<!-- Image description: Form with email field and Recover password button -->

### Profile Management

After logging in, you can manage your profile information:

1. Click on your email address in the top navigation bar
2. Select "Profile" from the dropdown menu
3. On the profile page, you can:
   - Change your password by entering your current password and new password
   - Upload an avatar image by clicking the upload button
4. Click "Update" to save your changes

**Security Note:** When changing your password, ensure your new password meets security requirements and is different from previous passwords.

<!-- INSERT IMAGE: Profile management page with password change and avatar upload -->
<!-- Image description: Form with old password, new password, confirm new password fields, and avatar upload area -->

## User Management

Users with Manager or Administrator roles can manage other users in the system:

1. Navigate to the "Users" section from the main navigation
2. View the list of all users in your tenant
3. Perform actions such as:
   - Viewing user details
   - Managing user sessions
   - Editing user information (Administrators only)

The user grid displays essential information about each user, including email, roles, and account status.

<!-- INSERT IMAGE: User management grid showing list of users -->
<!-- Image description: Table with user information including email, roles, and status -->

## Tenant Management

Administrators can manage tenants (organizations) within the system:

1. Navigate to the "Tenants" section (Administrator access required)
2. View the list of all tenants
3. Perform actions such as:
   - Creating new tenants
   - Editing tenant information
   - Managing tenant settings

Each tenant represents a separate organization with its own set of users, permissions, and configurations.

<!-- INSERT IMAGE: Tenant management grid showing list of tenants -->
<!-- Image description: Table with tenant information including name and settings -->

## Webhooks

The SSO system supports webhook integration for notifying external systems about events:

1. Navigate to the "Webhooks" section (Manager/Administrator access required)
2. View existing webhooks and their logs
3. Create new webhooks by specifying:
   - Endpoint URL where notifications will be sent
   - Event types that trigger the webhook
   - Authentication settings if required
4. Monitor webhook delivery status in the logs section

Webhooks enable real-time integration with external systems for automated workflows.

<!-- INSERT IMAGE: Webhook management page with form and logs -->
<!-- Image description: Form for creating webhooks and table showing webhook logs -->

## Glossary of Terms

**Tenant**: An isolated organization within the SSO system. Each tenant has its own users, settings, and data.

**Role**: Defines the level of access a user has within a tenant. Roles include:
- User: Standard user with basic access
- Manager: User with management capabilities for users and webhooks
- Administrator: User with full access including tenant management

**Webhook**: A mechanism for augmenting or overriding the behavior of a web page, or passing data from one system to another.

**Session**: An active connection between a user and the system. Sessions can be monitored and terminated by administrators.

**Avatar**: A user's profile picture displayed throughout the application.

---

*This user guide focuses on the functional aspects of the SSO application from an end-user perspective. For technical implementation details, please refer to the developer documentation.*