
package Paws::OpenSearch::CreateDomain;
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Str');
  has AdvancedOptions => (is => 'ro', isa => 'Paws::OpenSearch::AdvancedOptions');
  has AdvancedSecurityOptions => (is => 'ro', isa => 'Paws::OpenSearch::AdvancedSecurityOptionsInput');
  has AIMLOptions => (is => 'ro', isa => 'Paws::OpenSearch::AIMLOptionsInput');
  has AutoTuneOptions => (is => 'ro', isa => 'Paws::OpenSearch::AutoTuneOptionsInput');
  has ClusterConfig => (is => 'ro', isa => 'Paws::OpenSearch::ClusterConfig');
  has CognitoOptions => (is => 'ro', isa => 'Paws::OpenSearch::CognitoOptions');
  has DomainEndpointOptions => (is => 'ro', isa => 'Paws::OpenSearch::DomainEndpointOptions');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has EBSOptions => (is => 'ro', isa => 'Paws::OpenSearch::EBSOptions');
  has EncryptionAtRestOptions => (is => 'ro', isa => 'Paws::OpenSearch::EncryptionAtRestOptions');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has IdentityCenterOptions => (is => 'ro', isa => 'Paws::OpenSearch::IdentityCenterOptionsInput');
  has IPAddressType => (is => 'ro', isa => 'Str');
  has LogPublishingOptions => (is => 'ro', isa => 'Paws::OpenSearch::LogPublishingOptions');
  has NodeToNodeEncryptionOptions => (is => 'ro', isa => 'Paws::OpenSearch::NodeToNodeEncryptionOptions');
  has OffPeakWindowOptions => (is => 'ro', isa => 'Paws::OpenSearch::OffPeakWindowOptions');
  has SnapshotOptions => (is => 'ro', isa => 'Paws::OpenSearch::SnapshotOptions');
  has SoftwareUpdateOptions => (is => 'ro', isa => 'Paws::OpenSearch::SoftwareUpdateOptions');
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::Tag]');
  has VPCOptions => (is => 'ro', isa => 'Paws::OpenSearch::VPCOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::CreateDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::CreateDomain - Arguments for method CreateDomain on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomain on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method CreateDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomain.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $CreateDomainResponse = $es->CreateDomain(
      DomainName  => 'MyDomainName',
      AIMLOptions => {
        NaturalLanguageQueryGenerationOptions => {
          DesiredState => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      AccessPolicies          => 'MyPolicyDocument',               # OPTIONAL
      AdvancedOptions         => { 'MyString' => 'MyString', },    # OPTIONAL
      AdvancedSecurityOptions => {
        AnonymousAuthEnabled        => 1,                          # OPTIONAL
        Enabled                     => 1,                          # OPTIONAL
        InternalUserDatabaseEnabled => 1,                          # OPTIONAL
        JWTOptions                  => {
          Enabled    => 1,                 # OPTIONAL
          PublicKey  => 'MyString',
          RolesKey   => 'MyRolesKey',      # min: 1, max: 64; OPTIONAL
          SubjectKey => 'MySubjectKey',    # min: 1, max: 64; OPTIONAL
        },    # OPTIONAL
        MasterUserOptions => {
          MasterUserARN      => 'MyARN',         # min: 20, max: 2048; OPTIONAL
          MasterUserName     => 'MyUsername',    # min: 1, max: 64; OPTIONAL
          MasterUserPassword => 'MyPassword',    # min: 8, max: 128; OPTIONAL
        },    # OPTIONAL
        SAMLOptions => {
          Enabled => 1,    # OPTIONAL
          Idp     => {
            EntityId        => 'MySAMLEntityId',    # min: 8, max: 512
            MetadataContent => 'MySAMLMetadata',    # min: 1, max: 1048576

          },    # OPTIONAL
          MasterBackendRole     => 'MyBackendRole', # min: 1, max: 256; OPTIONAL
          MasterUserName        => 'MyUsername',    # min: 1, max: 64; OPTIONAL
          RolesKey              => 'MyString',
          SessionTimeoutMinutes => 1,               # OPTIONAL
          SubjectKey            => 'MyString',
        },    # OPTIONAL
      },    # OPTIONAL
      AutoTuneOptions => {
        DesiredState         => 'ENABLED', # values: ENABLED, DISABLED; OPTIONAL
        MaintenanceSchedules => [
          {
            CronExpressionForRecurrence => 'MyString',
            Duration                    => {
              Unit  => 'HOURS',    # values: HOURS; OPTIONAL
              Value => 1,          # min: 1, max: 24; OPTIONAL
            },    # OPTIONAL
            StartAt => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],    # max: 100; OPTIONAL
        UseOffPeakWindow => 1,    # OPTIONAL
      },    # OPTIONAL
      ClusterConfig => {
        ColdStorageOptions => {
          Enabled => 1,    # OPTIONAL

        },    # OPTIONAL
        DedicatedMasterCount   => 1,                   # OPTIONAL
        DedicatedMasterEnabled => 1,                   # OPTIONAL
        DedicatedMasterType    => 'm3.medium.search'
        , # values: m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, or1.medium.search, or1.large.search, or1.xlarge.search, or1.2xlarge.search, or1.4xlarge.search, or1.8xlarge.search, or1.12xlarge.search, or1.16xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search; OPTIONAL
        InstanceCount => 1,                   # OPTIONAL
        InstanceType  => 'm3.medium.search'
        , # values: m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, or1.medium.search, or1.large.search, or1.xlarge.search, or1.2xlarge.search, or1.4xlarge.search, or1.8xlarge.search, or1.12xlarge.search, or1.16xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search; OPTIONAL
        MultiAZWithStandbyEnabled => 1,    # OPTIONAL
        NodeOptions               => [
          {
            NodeConfig => {
              Count   => 1,                   # OPTIONAL
              Enabled => 1,                   # OPTIONAL
              Type    => 'm3.medium.search'
              , # values: m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, or1.medium.search, or1.large.search, or1.xlarge.search, or1.2xlarge.search, or1.4xlarge.search, or1.8xlarge.search, or1.12xlarge.search, or1.16xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search; OPTIONAL
            },    # OPTIONAL
            NodeType => 'coordinator',    # values: coordinator; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        WarmCount   => 1,                           # OPTIONAL
        WarmEnabled => 1,                           # OPTIONAL
        WarmType    => 'ultrawarm1.medium.search'
        , # values: ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search; OPTIONAL
        ZoneAwarenessConfig => {
          AvailabilityZoneCount => 1,    # OPTIONAL
        },    # OPTIONAL
        ZoneAwarenessEnabled => 1,    # OPTIONAL
      },    # OPTIONAL
      CognitoOptions => {
        Enabled        => 1,                     # OPTIONAL
        IdentityPoolId => 'MyIdentityPoolId',    # min: 1, max: 55; OPTIONAL
        RoleArn        => 'MyRoleArn',           # min: 20, max: 2048; OPTIONAL
        UserPoolId     => 'MyUserPoolId',        # min: 1, max: 55; OPTIONAL
      },    # OPTIONAL
      DomainEndpointOptions => {
        CustomEndpoint => 'MyDomainNameFqdn',     # min: 1, max: 255; OPTIONAL
        CustomEndpointCertificateArn => 'MyARN',  # min: 20, max: 2048; OPTIONAL
        CustomEndpointEnabled        => 1,        # OPTIONAL
        EnforceHTTPS                 => 1,        # OPTIONAL
        TLSSecurityPolicy            => 'Policy-Min-TLS-1-0-2019-07'
        , # values: Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07, Policy-Min-TLS-1-2-PFS-2023-10; OPTIONAL
      },    # OPTIONAL
      EBSOptions => {
        EBSEnabled => 1,             # OPTIONAL
        Iops       => 1,             # OPTIONAL
        Throughput => 1,             # OPTIONAL
        VolumeSize => 1,             # OPTIONAL
        VolumeType => 'standard',    # values: standard, gp2, io1, gp3; OPTIONAL
      },    # OPTIONAL
      EncryptionAtRestOptions => {
        Enabled  => 1,               # OPTIONAL
        KmsKeyId => 'MyKmsKeyId',    # min: 1, max: 500; OPTIONAL
      },    # OPTIONAL
      EngineVersion         => 'MyVersionString',    # OPTIONAL
      IPAddressType         => 'ipv4',               # OPTIONAL
      IdentityCenterOptions => {
        EnabledAPIAccess          => 1,              # OPTIONAL
        IdentityCenterInstanceARN =>
          'MyIdentityCenterInstanceARN',    # min: 20, max: 2048; OPTIONAL
        RolesKey   => 'GroupName',   # values: GroupName, GroupId; OPTIONAL
        SubjectKey => 'UserName',    # values: UserName, UserId, Email; OPTIONAL
      },    # OPTIONAL
      LogPublishingOptions => {
        'INDEX_SLOW_LOGS' => {
          CloudWatchLogsLogGroupArn =>
            'MyCloudWatchLogsLogGroupArn',    # min: 20, max: 2048; OPTIONAL
          Enabled => 1,                       # OPTIONAL
        }, # key: values: INDEX_SLOW_LOGS, SEARCH_SLOW_LOGS, ES_APPLICATION_LOGS, AUDIT_LOGS
      },    # OPTIONAL
      NodeToNodeEncryptionOptions => {
        Enabled => 1,    # OPTIONAL
      },    # OPTIONAL
      OffPeakWindowOptions => {
        Enabled       => 1,    # OPTIONAL
        OffPeakWindow => {
          WindowStartTime => {
            Hours   => 1,    # max: 23
            Minutes => 1,    # max: 59

          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SnapshotOptions => {
        AutomatedSnapshotStartHour => 1,    # OPTIONAL
      },    # OPTIONAL
      SoftwareUpdateOptions => {
        AutoSoftwareUpdateEnabled => 1,    # OPTIONAL
      },    # OPTIONAL
      TagList => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VPCOptions => {
        SecurityGroupIds => [ 'MyString', ... ],    # OPTIONAL
        SubnetIds        => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DomainStatus = $CreateDomainResponse->DomainStatus;

    # Returns a L<Paws::OpenSearch::CreateDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AccessPolicies => Str

Identity and Access Management (IAM) policy document specifying the
access policies for the new domain.



=head2 AdvancedOptions => L<Paws::OpenSearch::AdvancedOptions>

Key-value pairs to specify advanced configuration options. The
following key-value pairs are supported:

=over

=item *

C<"rest.action.multi.allow_explicit_index": "true" | "false"> - Note
the use of a string rather than a boolean. Specifies whether explicit
references to indexes are allowed inside the body of HTTP requests. If
you want to configure access policies for domain sub-resources, such as
specific indexes and domain APIs, you must disable this property.
Default is true.

=item *

C<"indices.fielddata.cache.size": "80" > - Note the use of a string
rather than a boolean. Specifies the percentage of heap space allocated
to field data. Default is unbounded.

=item *

C<"indices.query.bool.max_clause_count": "1024"> - Note the use of a
string rather than a boolean. Specifies the maximum number of clauses
allowed in a Lucene boolean query. Default is 1,024. Queries with more
than the permitted number of clauses result in a C<TooManyClauses>
error.

=item *

C<"override_main_response_version": "true" | "false"> - Note the use of
a string rather than a boolean. Specifies whether the domain reports
its version as 7.10 to allow Elasticsearch OSS clients and plugins to
continue working with it. Default is false when creating a domain and
true when upgrading a domain.

=back

For more information, see Advanced cluster parameters
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options).



=head2 AdvancedSecurityOptions => L<Paws::OpenSearch::AdvancedSecurityOptionsInput>

Options for fine-grained access control.



=head2 AIMLOptions => L<Paws::OpenSearch::AIMLOptionsInput>

Options for all machine learning features for the specified domain.



=head2 AutoTuneOptions => L<Paws::OpenSearch::AutoTuneOptionsInput>

Options for Auto-Tune.



=head2 ClusterConfig => L<Paws::OpenSearch::ClusterConfig>

Container for the cluster configuration of a domain.



=head2 CognitoOptions => L<Paws::OpenSearch::CognitoOptions>

Key-value pairs to configure Amazon Cognito authentication. For more
information, see Configuring Amazon Cognito authentication for
OpenSearch Dashboards
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html).



=head2 DomainEndpointOptions => L<Paws::OpenSearch::DomainEndpointOptions>

Additional options for the domain endpoint, such as whether to require
HTTPS for all traffic.



=head2 B<REQUIRED> DomainName => Str

Name of the OpenSearch Service domain to create. Domain names are
unique across the domains owned by an account within an Amazon Web
Services Region.



=head2 EBSOptions => L<Paws::OpenSearch::EBSOptions>

Container for the parameters required to enable EBS-based storage for
an OpenSearch Service domain.



=head2 EncryptionAtRestOptions => L<Paws::OpenSearch::EncryptionAtRestOptions>

Key-value pairs to enable encryption at rest.



=head2 EngineVersion => Str

String of format Elasticsearch_X.Y or OpenSearch_X.Y to specify the
engine version for the OpenSearch Service domain. For example,
C<OpenSearch_1.0> or C<Elasticsearch_7.9>. For more information, see
Creating and managing Amazon OpenSearch Service domains
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains).



=head2 IdentityCenterOptions => L<Paws::OpenSearch::IdentityCenterOptionsInput>

Configuration options for enabling and managing IAM Identity Center
integration within a domain.



=head2 IPAddressType => Str

Specify either dual stack or IPv4 as your IP address type. Dual stack
allows you to share domain resources across IPv4 and IPv6 address
types, and is the recommended option. If you set your IP address type
to dual stack, you can't change your address type later.

Valid values are: C<"ipv4">, C<"dualstack">

=head2 LogPublishingOptions => L<Paws::OpenSearch::LogPublishingOptions>

Key-value pairs to configure log publishing.



=head2 NodeToNodeEncryptionOptions => L<Paws::OpenSearch::NodeToNodeEncryptionOptions>

Enables node-to-node encryption.



=head2 OffPeakWindowOptions => L<Paws::OpenSearch::OffPeakWindowOptions>

Specifies a daily 10-hour time block during which OpenSearch Service
can perform configuration changes on the domain, including service
software updates and Auto-Tune enhancements that require a blue/green
deployment. If no options are specified, the default start time of
10:00 P.M. local time (for the Region that the domain is created in) is
used.



=head2 SnapshotOptions => L<Paws::OpenSearch::SnapshotOptions>

DEPRECATED. Container for the parameters required to configure
automated snapshots of domain indexes.



=head2 SoftwareUpdateOptions => L<Paws::OpenSearch::SoftwareUpdateOptions>

Software update options for the domain.



=head2 TagList => ArrayRef[L<Paws::OpenSearch::Tag>]

List of tags to add to the domain upon creation.



=head2 VPCOptions => L<Paws::OpenSearch::VPCOptions>

Container for the values required to configure VPC access domains. If
you don't specify these values, OpenSearch Service creates the domain
with a public endpoint. For more information, see Launching your Amazon
OpenSearch Service domains using a VPC
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomain in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

