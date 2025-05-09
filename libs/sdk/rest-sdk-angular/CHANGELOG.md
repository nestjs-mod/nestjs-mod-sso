## [1.0.4](https://github.com/nestjs-mod/nestjs-mod-sso/compare/rest-sdk-angular-v1.0.3...rest-sdk-angular-v1.0.4) (2025-05-08)

### Bug Fixes

- add support one DATABASE_URL, and create all needed from it, rename RestSdkService to SsoRestSdkService ([0f6570a](https://github.com/nestjs-mod/nestjs-mod-sso/commit/0f6570a1a8f06bed7c5fb0a1ccd81f5830624e54))

## [1.0.3](https://github.com/nestjs-mod/nestjs-mod-sso/compare/rest-sdk-angular-v1.0.2...rest-sdk-angular-v1.0.3) (2025-05-05)

### Bug Fixes

- change public npm packets to https://www.npmjs.com ([ac7dda4](https://github.com/nestjs-mod/nestjs-mod-sso/commit/ac7dda4dca3a7769c73cfe7e10d30e1c6a7db895))
- remove dependencies from public npm packages ([cc26fa2](https://github.com/nestjs-mod/nestjs-mod-sso/commit/cc26fa2d79e076fb9ff03307176b1652e0639644))

## [1.0.2](https://github.com/nestjs-mod/nestjs-mod-sso/compare/rest-sdk-angular-v1.0.1...rest-sdk-angular-v1.0.2) (2025-05-05)

### Bug Fixes

- try change owner for libs ([4076d87](https://github.com/nestjs-mod/nestjs-mod-sso/commit/4076d877660723c4d332a58361887b379abe4135))

## [1.0.1](https://github.com/nestjs-mod/nestjs-mod-sso/compare/rest-sdk-angular-v1.0.0...rest-sdk-angular-v1.0.1) (2025-05-05)

### Bug Fixes

- update options for publish to npm registry ([44b341b](https://github.com/nestjs-mod/nestjs-mod-sso/commit/44b341bf31c8dd4009c28f4b8d7d81d61162eab5))

# 1.0.0 (2025-05-05)

### Bug Fixes

- enable build target in rest-sdk-angular ([5482450](https://github.com/nestjs-mod/nestjs-mod-sso/commit/5482450efe78ae6f75cf967de3c46d34b4f494ec))
- remove old docker files, add new docker files, change packageManager to npm ([708c356](https://github.com/nestjs-mod/nestjs-mod-sso/commit/708c3566eee1c739b1a5f00a246e3c07dfa294fe))
- remove use local refresh token ([a160d5a](https://github.com/nestjs-mod/nestjs-mod-sso/commit/a160d5a51c95997083ea409efed546ebafce9250))
- revert versions of libs ([3a6590f](https://github.com/nestjs-mod/nestjs-mod-sso/commit/3a6590f16fec440b615f051bece7fc4b3beace4e))
- sync server with sso project (2025-04-24-10-25) ([4e2ae4d](https://github.com/nestjs-mod/nestjs-mod-sso/commit/4e2ae4d44bf61b799b8552a2b2d1753cfab3ae8c))
- update deps ([00e3195](https://github.com/nestjs-mod/nestjs-mod-sso/commit/00e3195635b66fa560b765b6b118644163cf17ab))
- update deps ([2ed0726](https://github.com/nestjs-mod/nestjs-mod-sso/commit/2ed07262a9c3a3a6e92c98ef67500e0651e9574d))
- update deps ([5c9d66b](https://github.com/nestjs-mod/nestjs-mod-sso/commit/5c9d66ba12cf6e3c257da292caf6e813e45d002b))
- update deps ([facb027](https://github.com/nestjs-mod/nestjs-mod-sso/commit/facb027b42d715804c1f2131f8eb9c0ef25df3d6))
- update deps ([c2afb7f](https://github.com/nestjs-mod/nestjs-mod-sso/commit/c2afb7f6dc3754184d5889bdd3d18274bfa28ed9))
- update docker files, and change envs with sso projects ([5e0dafb](https://github.com/nestjs-mod/nestjs-mod-sso/commit/5e0dafbc19ac45a276519851ba914971c249790a))

### Features

- add basic logic for auth ([50040e9](https://github.com/nestjs-mod/nestjs-mod-sso/commit/50040e96767f492dc9188f5202b98057ada0426a))
- add client for sso, and add frontend for projects ([a0bc258](https://github.com/nestjs-mod/nestjs-mod-sso/commit/a0bc258eb4dbcfc55719fd5799da9b53b46a79a4))
- add mail sender ([227ff95](https://github.com/nestjs-mod/nestjs-mod-sso/commit/227ff95292d6ccdf77ebe921137ef80cdf4e5425))
- add maildev ([8f7fcb4](https://github.com/nestjs-mod/nestjs-mod-sso/commit/8f7fcb4319c3440570492eacc8bbec2b1a776987))
- add RestSdkAngularService and RestSdkService ([5eb64c0](https://github.com/nestjs-mod/nestjs-mod-sso/commit/5eb64c0de8e5f15860106d54c6a3ac1694efccd0))
- add support translates to project name ([4878ed4](https://github.com/nestjs-mod/nestjs-mod-sso/commit/4878ed4a4907cf77324a291035c53c2cf738e878))
- add throttler to sign-up ([60a3dad](https://github.com/nestjs-mod/nestjs-mod-sso/commit/60a3dadf1920c8dcce4e9a5d3fbad4455deaa91e))
- append exists not working auth as sso from another project, for refactor and use it in this project ([bb53f16](https://github.com/nestjs-mod/nestjs-mod-sso/commit/bb53f168b3a54301ad1101a4912a4532e837fdb5))
- change folder for generated sdk files ([3d59381](https://github.com/nestjs-mod/nestjs-mod-sso/commit/3d593810d39825a6214d852a7103b81699e18253))
- integrate sso in client and server apps ([0c7d0ab](https://github.com/nestjs-mod/nestjs-mod-sso/commit/0c7d0abe380ccc0d5f37cb31a415197956751a23))
- move all modules to core folder ([c2f4217](https://github.com/nestjs-mod/nestjs-mod-sso/commit/c2f42173be9f5ec65a34b4d6acd791cbc2363d06))
- move auth module inside sso ([1c82658](https://github.com/nestjs-mod/nestjs-mod-sso/commit/1c82658b995bb772699af42f67042bef3c0fde14))
- remove code for supabase and authorizer ([9f768d9](https://github.com/nestjs-mod/nestjs-mod-sso/commit/9f768d9f729a15fab4928dda78751a589a9b4a46))
- rename project and remove posts ([21525a9](https://github.com/nestjs-mod/nestjs-mod-sso/commit/21525a91c791aa34f6996aeacd953101219aa28d))
- rename sdk libs ([fbbbef7](https://github.com/nestjs-mod/nestjs-mod-sso/commit/fbbbef713bc67a17b5fb0e5332c1c422fd6b1952))
- switch random string to totp code for two factor ([a165f8f](https://github.com/nestjs-mod/nestjs-mod-sso/commit/a165f8ff432d8304f1e9d3c4d998e55841ebc002))
- update auth forms, start add oauth with google ([04e1a22](https://github.com/nestjs-mod/nestjs-mod-sso/commit/04e1a22cb0bc317497fa8cf826b71c2c54f31f00))
