#!/bin/bash
set -e

export REPOSITORY=nestjs-mod/nestjs-mod-sso
export REGISTRY=ghcr.io
export SINGLE_SIGN_ON_IMAGE_NAME="${REPOSITORY}-server"
export COMPOSE_INTERACTIVE_NO_CLI=1
export NX_DAEMON=false
export NX_PARALLEL=1
export NX_SKIP_NX_CACHE=true


if [ -z "${ROOT_VERSION}" ]; then
    export ROOT_VERSION=$(npm pkg get version --workspaces=false | tr -d \")
fi
if [ -z "${SERVER_VERSION}" ]; then
    export SERVER_VERSION=$(cd ./apps/server && npm pkg get version --workspaces=false | tr -d \")
fi

if [ -z "${CLIENT_VERSION}" ]; then
    export CLIENT_VERSION=$(cd ./apps/client && npm pkg get version --workspaces=false | tr -d \")
fi

# node
if [ -z "${NAMESPACE}" ]; then
    echo "Error: NAMESPACE not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi

# common
if [ -z "${SINGLE_SIGN_ON_DOMAIN}" ]; then
    echo "Error: SINGLE_SIGN_ON_DOMAIN not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi

# server
if [ -z "${SINGLE_SIGN_ON_PORT}" ]; then
    echo "Error: SINGLE_SIGN_ON_PORT not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi

# server: webhook database
if [ -z "${SINGLE_SIGN_ON_WEBHOOK_DATABASE_PASSWORD}" ]; then
    echo "Error: SINGLE_SIGN_ON_WEBHOOK_DATABASE_PASSWORD not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi
if [ -z "${SINGLE_SIGN_ON_WEBHOOK_DATABASE_USERNAME}" ]; then
    echo "Error: SINGLE_SIGN_ON_WEBHOOK_DATABASE_USERNAME not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi
if [ -z "${SINGLE_SIGN_ON_WEBHOOK_DATABASE_NAME}" ]; then
    echo "Error: SINGLE_SIGN_ON_WEBHOOK_DATABASE_NAME not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi

# server: sso database
if [ -z "${SINGLE_SIGN_ON_SSO_DATABASE_PASSWORD}" ]; then
    echo "Error: SINGLE_SIGN_ON_SSO_DATABASE_PASSWORD not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi
if [ -z "${SINGLE_SIGN_ON_SSO_DATABASE_USERNAME}" ]; then
    echo "Error: SINGLE_SIGN_ON_SSO_DATABASE_USERNAME not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi
if [ -z "${SINGLE_SIGN_ON_SSO_DATABASE_NAME}" ]; then
    echo "Error: SINGLE_SIGN_ON_SSO_DATABASE_NAME not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi

# server: notifications database
if [ -z "${SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_PASSWORD}" ]; then
    echo "Error: SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_PASSWORD not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi
if [ -z "${SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_USERNAME}" ]; then
    echo "Error: SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_USERNAME not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi
if [ -z "${SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_NAME}" ]; then
    echo "Error: SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_NAME not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi

# server: two factor database
if [ -z "${SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_PASSWORD}" ]; then
    echo "Error: SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_PASSWORD not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi
if [ -z "${SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_USERNAME}" ]; then
    echo "Error: SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_USERNAME not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi
if [ -z "${SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_NAME}" ]; then
    echo "Error: SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_NAME not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi

# database
if [ -z "${SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_USERNAME}" ]; then
    echo "Error: SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_USERNAME not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi
if [ -z "${SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_PASSWORD}" ]; then
    echo "Error: SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_PASSWORD not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi
if [ -z "${SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_DATABASE}" ]; then
    echo "Error: SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_DATABASE not!" >&2 # Redirect error message to stderr
    exit 1 # Exit with an error code
fi