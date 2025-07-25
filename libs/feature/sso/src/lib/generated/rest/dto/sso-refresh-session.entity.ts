import { Prisma } from '../../prisma-client';
import { ApiProperty } from '@nestjs/swagger';
import { SsoTenant } from './sso-tenant.entity';
import { SsoUser } from './sso-user.entity';

export class SsoRefreshSession {
  @ApiProperty({
    type: 'string',
  })
  id!: string;
  @ApiProperty({
    type: 'string',
    nullable: true,
  })
  userAgent!: string | null;
  @ApiProperty({
    type: 'string',
    nullable: true,
  })
  userIp!: string | null;
  @ApiProperty({
    type: 'string',
    format: 'date-time',
    nullable: true,
  })
  expiresAt!: Date | null;
  @ApiProperty({
    type: () => Object,
    nullable: true,
  })
  userData!: Prisma.JsonValue | null;
  @ApiProperty({
    type: 'boolean',
  })
  enabled!: boolean;
  @ApiProperty({
    type: 'string',
  })
  userId!: string;
  @ApiProperty({
    type: 'string',
  })
  tenantId!: string;
  @ApiProperty({
    type: 'string',
    format: 'date-time',
  })
  createdAt!: Date;
  @ApiProperty({
    type: 'string',
    format: 'date-time',
  })
  updatedAt!: Date;
  @ApiProperty({
    type: () => SsoTenant,
    required: false,
  })
  SsoTenant?: SsoTenant;
  @ApiProperty({
    type: () => SsoUser,
    required: false,
  })
  SsoUser?: SsoUser;
}
