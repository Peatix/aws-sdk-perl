
package Paws::ApplicationInsights::UpdateWorkload;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceGroupName => (is => 'ro', isa => 'Str', required => 1);
  has WorkloadConfiguration => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadConfiguration', required => 1);
  has WorkloadId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkload');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::UpdateWorkloadResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::UpdateWorkload - Arguments for method UpdateWorkload on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkload on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method UpdateWorkload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkload.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $UpdateWorkloadResponse = $applicationinsights->UpdateWorkload(
      ComponentName         => 'MyComponentName',
      ResourceGroupName     => 'MyResourceGroupName',
      WorkloadConfiguration => {
        Configuration =>
          'MyComponentConfiguration',    # min: 1, max: 10000; OPTIONAL
        Tier => 'CUSTOM'
        , # values: CUSTOM, DEFAULT, DOT_NET_CORE, DOT_NET_WORKER, DOT_NET_WEB_TIER, DOT_NET_WEB, SQL_SERVER, SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP, MYSQL, POSTGRESQL, JAVA_JMX, ORACLE, SAP_HANA_MULTI_NODE, SAP_HANA_SINGLE_NODE, SAP_HANA_HIGH_AVAILABILITY, SAP_ASE_SINGLE_NODE, SAP_ASE_HIGH_AVAILABILITY, SQL_SERVER_FAILOVER_CLUSTER_INSTANCE, SHAREPOINT, ACTIVE_DIRECTORY, SAP_NETWEAVER_STANDARD, SAP_NETWEAVER_DISTRIBUTED, SAP_NETWEAVER_HIGH_AVAILABILITYmin: 1, max: 50; OPTIONAL
        WorkloadName => 'MyWorkloadName',    # min: 1, max: 12; OPTIONAL
      },
      WorkloadId => 'MyWorkloadId',          # OPTIONAL
    );

    # Results:
    my $WorkloadConfiguration = $UpdateWorkloadResponse->WorkloadConfiguration;
    my $WorkloadId            = $UpdateWorkloadResponse->WorkloadId;

    # Returns a L<Paws::ApplicationInsights::UpdateWorkloadResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/UpdateWorkload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentName => Str

The name of the component.



=head2 B<REQUIRED> ResourceGroupName => Str

The name of the resource group.



=head2 B<REQUIRED> WorkloadConfiguration => L<Paws::ApplicationInsights::WorkloadConfiguration>

The configuration settings of the workload. The value is the escaped
JSON of the configuration.



=head2 WorkloadId => Str

The ID of the workload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkload in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

