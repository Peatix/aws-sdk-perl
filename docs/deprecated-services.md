# Deprecated AWS services dropped from Paws

Paws consumes Smithy IR vendored from
`awslabs/aws-sdk-rust:aws-models/`. Smithy upstream no longer ships
a model for 14 services that AWS has end-of-lifed, so Paws can no
longer ship a working class for any of them.

Asking the resolver for one of the services below dies with a clear
error referencing this doc — see
`%Paws::Model::Loader::Resolver::PAWS_DROPPED_SERVICES` for the
table the runtime checks. The error message contains the AWS
shutdown date so users know whether to migrate or just delete the
call site.

## What was dropped

| Paws class               | service name       | AWS lifecycle status                                                                       | Migration path                                                                                                |
|--------------------------|--------------------|--------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| `Paws::AppTest`          | `apptest`          | AWS Mainframe Modernization Application Testing — discontinuation announced late 2024.    | None. Service is gone.                                                                                         |
| `Paws::Evidently`        | `evidently`        | CloudWatch Evidently shutdown 2025-10-16.                                                  | None. AWS recommends rebuilding A/B-testing flows on top of CloudWatch + custom infra.                         |
| `Paws::ImportExport`     | `importexport`     | Legacy disk-shipping API (SigV2). Effectively retired by AWS years ago, no replacement.    | Use AWS Snowball / Snowball Edge (`Paws::Snowball`) for bulk data ingest.                                      |
| `Paws::IoTAnalytics`     | `iotanalytics`     | IoT Analytics shutdown announced for 2025-12-15.                                           | AWS recommends migrating to IoT Core + Kinesis + Glue / Athena pipelines.                                      |
| `Paws::IoTFleetHub`      | `iotfleethub`      | IoT FleetHub deprecated alongside the rest of the AWS IoT 1-Click family.                  | Use AWS IoT Core's standalone Fleet Indexing / Device Management surfaces (`Paws::IoT`).                       |
| `Paws::LookoutMetrics`   | `lookoutmetrics`   | Lookout for Metrics shutdown 2025-10-17.                                                   | None. AWS recommends third-party anomaly-detection pipelines or building on top of CloudWatch metric streams. |
| `Paws::LookoutVision`    | `lookoutvision`    | Lookout for Vision shutdown 2025-10-31.                                                    | Use Amazon Rekognition Custom Labels (`Paws::Rekognition`) or SageMaker custom training.                       |
| `Paws::OpsWorks`         | `opsworks`         | OpsWorks Stacks shutdown 2024-05-26.                                                       | Migrate to AWS Systems Manager (`Paws::SSM`) + CloudFormation (`Paws::CloudFormation`).                        |
| `Paws::OpsWorksCM`       | `opsworkscm`       | OpsWorks for Chef Automate / Puppet Enterprise shutdown 2024-05-26.                        | Run Chef Automate / Puppet Enterprise yourself on EC2 or migrate to Systems Manager.                           |
| `Paws::PrivateNetworks`  | `privatenetworks`  | AWS Private 5G shutdown 2024.                                                              | None. Service is gone.                                                                                         |
| `Paws::QLDB`             | `qldb`             | QLDB shutdown 2025-07-31.                                                                  | Migrate to Aurora PostgreSQL (`Paws::RDS`) — AWS published a QLDB→Postgres migration guide.                    |
| `Paws::QLDBSession`      | `qldb-session`     | QLDB runtime — same EoL as QLDB.                                                           | See above.                                                                                                     |
| `Paws::Robomaker`        | `robomaker`        | RoboMaker shutdown 2025-09-10.                                                             | None directly. AWS recommends running ROS workloads on EC2 / EKS yourself.                                     |
| `Paws::SMS`              | `sms`              | Server Migration Service end-of-support 2023-03-31.                                        | Use AWS Application Migration Service (`Paws::ApplicationMigration`, sdkId `mgn`).                             |

## SigV2 → SigV4 note: `Paws::SDB` (SimpleDB)

Smithy upstream publishes only the SigV4 v2 SimpleDB model
(`share/smithy/simpledbv2/`). The legacy SigV2 SimpleDB (the
original protocol `Paws::SDB` targeted) has no Smithy IR and the
v2 service is what `Paws::SDB` resolves to under the Smithy-only
default.

If you have existing code that depends on the SigV2 wire format
(for example, hand-rolled signing helpers that assume SigV2), you
will need to switch to the SigV4-signed v2 endpoint. The IR shape
of the request/response objects is identical between v1 and v2 —
only the signing protocol differs. Paws's signer chain handles
SigV4 transparently for every other service so most callers will
not need code changes.

## Why these services are dropped

The 14 services above are not "Paws-supported but a bit dusty" —
they are services AWS itself has retired or scheduled for shutdown.
A `Paws::OpsWorks` → AWS call today returns `404 / NoSuchService`
regardless of what Paws compiles from. Carrying generated classes
for them ships dead code.

`awslabs/aws-sdk-rust` (the source the Smithy IR is vendored from)
removed these models because AWS's internal SDK pipeline removed
them. Paws follows upstream rather than carrying a forked, parallel
set of model files for services AWS no longer maintains.

## Services gained from Smithy

Switching to Smithy gained Paws 33 additional services, of which ~14
are real new GA / public AWS
services that previously had no Paws coverage:

- Bedrock AgentCore (`Paws::BedrockAgentCore`,
  `Paws::BedrockAgentCoreControl`)
- S3 Vectors (`Paws::S3Vectors`), S3 Files (`Paws::S3Files`)
- Transcribe Streaming (`Paws::TranscribeStreaming`)
- MWAA Serverless (`Paws::MWAAServerless`)
- ARC Region Switch (`Paws::ARCRegionSwitch`)
- AIOps (`Paws::AIOps`)
- MPA / Multi-Party Approvals (`Paws::MPA`)
- Signin (`Paws::Signin`), Signer Data (`Paws::SignerData`)
- BCM Dashboards (`Paws::BCMDashboards`),
  BCM Recommended Actions (`Paws::BCMRecommendedActions`)
- ... plus a handful of partner-only / restricted services.

## Migrating off a dropped service

Three options, in order of effort:

1. **Stop calling it.** If the service is one AWS has already shut
   down, your call site is dead code regardless of which SDK it
   went through.
2. **Pin to an older Paws release.** Releases prior to the
   Smithy-only switchover bundled botocore JSON for these services.
   Calls will still hit a `404 / NoSuchService` from AWS, but the
   code will at least load.
3. **Construct the resolver explicitly against a botocore
   checkout.** The Botocore loader
   (`Paws::Model::Loader::Botocore`) is still part of the codebase
   for exactly this case; what's no longer included is the vendored
   botocore tree. To use it:

   ```perl
   use Paws::Model::Loader::Resolver;
   $ENV{PAWS_LOADER_ORDER} = 'Botocore,Smithy';
   my $r = Paws::Model::Loader::Resolver->new(
       botocore_search_paths => ['/path/to/botocore/botocore/data'],
   );
   ```
