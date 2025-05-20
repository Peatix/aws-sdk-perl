
package Paws::ApplicationInsights::UpdateComponentConfiguration;
  use Moose;
  has AutoConfigEnabled => (is => 'ro', isa => 'Bool');
  has ComponentConfiguration => (is => 'ro', isa => 'Str');
  has ComponentName => (is => 'ro', isa => 'Str', required => 1);
  has Monitor => (is => 'ro', isa => 'Bool');
  has ResourceGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateComponentConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::UpdateComponentConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::UpdateComponentConfiguration - Arguments for method UpdateComponentConfiguration on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateComponentConfiguration on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method UpdateComponentConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateComponentConfiguration.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $UpdateComponentConfigurationResponse =
      $applicationinsights->UpdateComponentConfiguration(
      ComponentName          => 'MyComponentName',
      ResourceGroupName      => 'MyResourceGroupName',
      AutoConfigEnabled      => 1,                             # OPTIONAL
      ComponentConfiguration => 'MyComponentConfiguration',    # OPTIONAL
      Monitor                => 1,                             # OPTIONAL
      Tier                   => 'CUSTOM',                      # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/UpdateComponentConfiguration>

=head1 ATTRIBUTES


=head2 AutoConfigEnabled => Bool

Automatically configures the component by applying the recommended
configurations.



=head2 ComponentConfiguration => Str

The configuration settings of the component. The value is the escaped
JSON of the configuration. For more information about the JSON format,
see Working with JSON
(https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html).
You can send a request to
C<DescribeComponentConfigurationRecommendation> to see the recommended
configuration for a component. For the complete format of the component
configuration file, see Component Configuration
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/component-config.html).



=head2 B<REQUIRED> ComponentName => Str

The name of the component.



=head2 Monitor => Bool

Indicates whether the application component is monitored.



=head2 B<REQUIRED> ResourceGroupName => Str

The name of the resource group.



=head2 Tier => Str

The tier of the application component.

Valid values are: C<"CUSTOM">, C<"DEFAULT">, C<"DOT_NET_CORE">, C<"DOT_NET_WORKER">, C<"DOT_NET_WEB_TIER">, C<"DOT_NET_WEB">, C<"SQL_SERVER">, C<"SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP">, C<"MYSQL">, C<"POSTGRESQL">, C<"JAVA_JMX">, C<"ORACLE">, C<"SAP_HANA_MULTI_NODE">, C<"SAP_HANA_SINGLE_NODE">, C<"SAP_HANA_HIGH_AVAILABILITY">, C<"SAP_ASE_SINGLE_NODE">, C<"SAP_ASE_HIGH_AVAILABILITY">, C<"SQL_SERVER_FAILOVER_CLUSTER_INSTANCE">, C<"SHAREPOINT">, C<"ACTIVE_DIRECTORY">, C<"SAP_NETWEAVER_STANDARD">, C<"SAP_NETWEAVER_DISTRIBUTED">, C<"SAP_NETWEAVER_HIGH_AVAILABILITY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateComponentConfiguration in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

