import { PrismaToolsModule } from '@nestjs-mod/prisma-tools';
import { WebhookModule } from '@nestjs-mod-sso/webhook';
import {
  createNestModule,
  getFeatureDotEnvPropertyNameFormatter,
  NestModuleCategory,
} from '@nestjs-mod/common';
import { PrismaModule } from '@nestjs-mod/prisma';
import { Provider, UseGuards } from '@nestjs/common';
import { APP_FILTER } from '@nestjs/core';
import { NotificationsServiceBootstrap } from './notifications-bootstrap.service';
import {
  NotificationsConfiguration,
  NotificationsStaticConfiguration,
} from './notifications.configuration';
import {
  NOTIFICATIONS_FEATURE,
  NOTIFICATIONS_MODULE,
} from './notifications.constants';
import { NotificationsController } from './notifications.controller';
import { NotificationsStaticEnvironments } from './notifications.environments';
import { NotificationsExceptionsFilter } from './notifications.filter';
import { NotificationsGuard } from './notifications.guard';
import { NotificationsService } from './notifications.service';
import { NOTIFICATIONS_WEBHOOK_EVENTS } from './types/notifications-webhooks';

export const { NotificationsModule } = createNestModule({
  moduleName: NOTIFICATIONS_MODULE,
  moduleCategory: NestModuleCategory.core,
  staticEnvironmentsModel: NotificationsStaticEnvironments,
  staticConfigurationModel: NotificationsStaticConfiguration,
  configurationModel: NotificationsConfiguration,
  imports: [
    PrismaModule.forFeature({
      contextName: NOTIFICATIONS_FEATURE,
      featureModuleName: NOTIFICATIONS_FEATURE,
    }),
    PrismaToolsModule.forFeature({
      featureModuleName: NOTIFICATIONS_FEATURE,
    }),
    WebhookModule.forFeature({
      featureModuleName: NOTIFICATIONS_FEATURE,
      featureConfiguration: { events: NOTIFICATIONS_WEBHOOK_EVENTS },
    }),
  ],
  sharedImports: [
    PrismaModule.forFeature({
      contextName: NOTIFICATIONS_FEATURE,
      featureModuleName: NOTIFICATIONS_FEATURE,
    }),
    PrismaToolsModule.forFeature({
      featureModuleName: NOTIFICATIONS_FEATURE,
    }),
    WebhookModule.forFeature({
      featureModuleName: NOTIFICATIONS_FEATURE,
    }),
  ],
  sharedProviders: [NotificationsService],
  providers: ({ staticEnvironments }) => {
    const providers: Provider[] = [NotificationsServiceBootstrap];
    if (staticEnvironments.useFilters) {
      providers.push({
        provide: APP_FILTER,
        useClass: NotificationsExceptionsFilter,
      });
    }
    return providers;
  },
  controllers: (asyncModuleOptions) =>
    [NotificationsController].map((ctrl) => {
      UseGuards(
        ...(asyncModuleOptions.staticConfiguration?.guards || []),
        NotificationsGuard
      )(ctrl);

      if (asyncModuleOptions.staticConfiguration.mutateController) {
        asyncModuleOptions.staticConfiguration.mutateController(ctrl);
      }

      return ctrl;
    }),
  wrapForRootAsync: (asyncModuleOptions) => {
    if (!asyncModuleOptions) {
      asyncModuleOptions = {};
    }
    const FomatterClass = getFeatureDotEnvPropertyNameFormatter(
      NOTIFICATIONS_FEATURE
    );
    Object.assign(asyncModuleOptions, {
      environmentsOptions: {
        propertyNameFormatters: [new FomatterClass()],
        name: NOTIFICATIONS_FEATURE,
      },
    });

    return { asyncModuleOptions };
  },
});
