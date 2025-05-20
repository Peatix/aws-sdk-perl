
package Paws::ApplicationInsights::DescribeComponentConfigurationResponse;
  use Moose;
  has ComponentConfiguration => (is => 'ro', isa => 'Str');
  has Monitor => (is => 'ro', isa => 'Bool');
  has Tier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeComponentConfigurationResponse

=head1 ATTRIBUTES


=head2 ComponentConfiguration => Str

The configuration settings of the component. The value is the escaped
JSON of the configuration.


=head2 Monitor => Bool

Indicates whether the application component is monitored.


=head2 Tier => Str

The tier of the application component. Supported tiers include
C<DOT_NET_CORE>, C<DOT_NET_WORKER>, C<DOT_NET_WEB>, C<SQL_SERVER>, and
C<DEFAULT>

Valid values are: C<"CUSTOM">, C<"DEFAULT">, C<"DOT_NET_CORE">, C<"DOT_NET_WORKER">, C<"DOT_NET_WEB_TIER">, C<"DOT_NET_WEB">, C<"SQL_SERVER">, C<"SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP">, C<"MYSQL">, C<"POSTGRESQL">, C<"JAVA_JMX">, C<"ORACLE">, C<"SAP_HANA_MULTI_NODE">, C<"SAP_HANA_SINGLE_NODE">, C<"SAP_HANA_HIGH_AVAILABILITY">, C<"SAP_ASE_SINGLE_NODE">, C<"SAP_ASE_HIGH_AVAILABILITY">, C<"SQL_SERVER_FAILOVER_CLUSTER_INSTANCE">, C<"SHAREPOINT">, C<"ACTIVE_DIRECTORY">, C<"SAP_NETWEAVER_STANDARD">, C<"SAP_NETWEAVER_DISTRIBUTED">, C<"SAP_NETWEAVER_HIGH_AVAILABILITY">
=head2 _request_id => Str


=cut

1;