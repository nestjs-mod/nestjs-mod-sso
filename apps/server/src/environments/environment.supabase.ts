import KeyvPostgres from '@keyv/postgres';
import { isInfrastructureMode, PACKAGE_JSON_FILE } from '@nestjs-mod/common';
import { KeyvModule } from '@nestjs-mod/keyv';
import { MinioModule } from '@nestjs-mod/minio';
import { existsSync } from 'fs';
import { join } from 'path';

let rootFolder = join(__dirname, '..', '..', '..');

if (!existsSync(join(rootFolder, PACKAGE_JSON_FILE)) && existsSync(join(__dirname, PACKAGE_JSON_FILE))) {
  rootFolder = join(__dirname);
}

let appFolder = join(rootFolder, 'apps', 'server');

if (!existsSync(join(appFolder, PACKAGE_JSON_FILE))) {
  appFolder = join(rootFolder, 'dist', 'apps', 'server');
}

if (!existsSync(join(appFolder, PACKAGE_JSON_FILE)) && existsSync(join(__dirname, PACKAGE_JSON_FILE))) {
  appFolder = join(__dirname);
}

export const MainKeyvModule = KeyvModule.forRoot({
  staticConfiguration: {
    storeFactoryByEnvironmentUrl: (uri) => {
      return isInfrastructureMode() ? undefined : [new KeyvPostgres({ uri }), { table: 'cache' }];
    },
  },
});

export const MainMinioModule = MinioModule.forRoot({
  staticConfiguration: { region: 'eu-north-1' },
  staticEnvironments: {
    minioUseSSL: 'false',
  },
});

export { appFolder, rootFolder };
