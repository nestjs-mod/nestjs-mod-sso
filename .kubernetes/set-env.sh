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
    export NAMESPACE=sso
fi

# common
if [ -z "${SINGLE_SIGN_ON_DOMAIN}" ]; then
    export SINGLE_SIGN_ON_DOMAIN=example.com
fi

# server
if [ -z "${SINGLE_SIGN_ON_PORT}" ]; then
    export SINGLE_SIGN_ON_PORT=9191
fi

# server: webhook database
if [ -z "${SINGLE_SIGN_ON_WEBHOOK_DATABASE_PASSWORD}" ]; then
    export SINGLE_SIGN_ON_WEBHOOK_DATABASE_PASSWORD=webhook_password
fi
if [ -z "${SINGLE_SIGN_ON_WEBHOOK_DATABASE_USERNAME}" ]; then
    export SINGLE_SIGN_ON_WEBHOOK_DATABASE_USERNAME=${NAMESPACE}_webhook
fi
if [ -z "${SINGLE_SIGN_ON_WEBHOOK_DATABASE_NAME}" ]; then
    export SINGLE_SIGN_ON_WEBHOOK_DATABASE_NAME=${NAMESPACE}_webhook
fi

# server: sso database
if [ -z "${SINGLE_SIGN_ON_SSO_DATABASE_PASSWORD}" ]; then
    export SINGLE_SIGN_ON_SSO_DATABASE_PASSWORD=sso_password
fi
if [ -z "${SINGLE_SIGN_ON_SSO_DATABASE_USERNAME}" ]; then
    export SINGLE_SIGN_ON_SSO_DATABASE_USERNAME=${NAMESPACE}_sso
fi
if [ -z "${SINGLE_SIGN_ON_SSO_DATABASE_NAME}" ]; then
    export SINGLE_SIGN_ON_SSO_DATABASE_NAME=${NAMESPACE}_sso
fi

# server: notifications database
if [ -z "${SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_PASSWORD}" ]; then
    export SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_PASSWORD=notifications_password
fi
if [ -z "${SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_USERNAME}" ]; then
    export SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_USERNAME=${NAMESPACE}_notifications
fi
if [ -z "${SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_NAME}" ]; then
    export SINGLE_SIGN_ON_NOTIFICATIONS_DATABASE_NAME=${NAMESPACE}_notifications
fi

# server: two factor database
if [ -z "${SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_PASSWORD}" ]; then
    export SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_PASSWORD=two_factor_password
fi
if [ -z "${SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_USERNAME}" ]; then
    export SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_USERNAME=${NAMESPACE}_two_factor
fi
if [ -z "${SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_NAME}" ]; then
    export SINGLE_SIGN_ON_TWO_FACTOR_DATABASE_NAME=${NAMESPACE}_two_factor
fi

# database
if [ -z "${SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_USERNAME}" ]; then
    export SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_USERNAME=postgres
fi
if [ -z "${SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_PASSWORD}" ]; then
    export SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_PASSWORD=postgres_password
fi
if [ -z "${SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_DATABASE}" ]; then
    export SINGLE_SIGN_ON_POSTGRE_SQL_POSTGRESQL_DATABASE=postgres
fi

# new
if [ -z "${SINGLE_SIGN_ON_SSO_ADMIN_EMAIL}" ]; then
    export SINGLE_SIGN_ON_SSO_ADMIN_EMAIL=nestjs-mod-sso@site15.ru
fi
if [ -z "${SINGLE_SIGN_ON_SSO_ADMIN_USERNAME}" ]; then
    export SINGLE_SIGN_ON_SSO_ADMIN_USERNAME=admin
fi
if [ -z "${SINGLE_SIGN_ON_SSO_DEFAULT_PUBLIC_TENANTS}" ]; then
    export SINGLE_SIGN_ON_SSO_DEFAULT_PUBLIC_TENANTS='Beijing:ru=Пекин,Jq6GQ6Rzz6x8HNOD4x2Hc2eM0cfiCVUzGfsi,X6nk0OZXQJboSEfugnH35e9oSeg5RFlV0DQprtYyYDQjNli9mA;Moscow:ru=Москва,OceX08HGZ89PTkPpg9KDk5ErY1uMfDcfFKkw,VJztpDIwvqG6IkTVEIDEw1Ed2Wu5oHu6zfBe7CCJFrCtyWO2Yv;New York:ru=Нью-Йорк,4OGD25Rmn3W3MP0kMd7c90rGP1WwK8u4wL1w,qm8nc9MgKyvd6Hgl3jY5BjgDFSBqNvxcu6o52kDjIC168OsM1R;'
fi
if [ -z "${SINGLE_SIGN_ON_SSO_DEFAULT_TENANT}" ]; then
    export SINGLE_SIGN_ON_SSO_DEFAULT_TENANT='default:ru=по умолчанию,KzMRNEZTetzatIgQPVSDYfeGyaZrbLzkcxNc,qaHkVpAtUVIpDdLXMlAOzsBfMRJblWoHpXguYQRBuSEBpGKbWt'
fi
if [ -z "${SINGLE_SIGN_ON_NOTIFICATIONS_MAIL_TRANSPORT}" ]; then
    export SINGLE_SIGN_ON_NOTIFICATIONS_MAIL_TRANSPORT=''
fi
if [ -z "${SINGLE_SIGN_ON_NOTIFICATIONS_MAIL_DEFAULT_SENDER_NAME}" ]; then
    export SINGLE_SIGN_ON_NOTIFICATIONS_MAIL_DEFAULT_SENDER_NAME=Bot
fi
if [ -z "${SINGLE_SIGN_ON_NOTIFICATIONS_MAIL_DEFAULT_SENDER_EMAIL}" ]; then
    export SINGLE_SIGN_ON_NOTIFICATIONS_MAIL_DEFAULT_SENDER_EMAIL=bot@nestjs-mod-sso.maildev
fi
