
package Paws::ApplicationInsights::DescribeComponentConfigurationRecommendation;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', required => 1);
  has RecommendationType => (is => 'ro', isa => 'Str');
  has ResourceGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tier => (is => 'ro', isa => 'Str', required => 1);
  has WorkloadName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeComponentConfigurationRecommendation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::DescribeComponentConfigurationRecommendationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeComponentConfigurationRecommendation - Arguments for method DescribeComponentConfigurationRecommendation on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeComponentConfigurationRecommendation on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method DescribeComponentConfigurationRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeComponentConfigurationRecommendation.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $DescribeComponentConfigurationRecommendationResponse =
      $applicationinsights->DescribeComponentConfigurationRecommendation(
      ComponentName      => 'MyComponentName',
      ResourceGroupName  => 'MyResourceGroupName',
      Tier               => 'CUSTOM',
      RecommendationType => 'INFRA_ONLY',            # OPTIONAL
      WorkloadName       => 'MyWorkloadName',        # OPTIONAL
      );

    # Results:
    my $ComponentConfiguration =
      $DescribeComponentConfigurationRecommendationResponse
      ->ComponentConfiguration;

# Returns a L<Paws::ApplicationInsights::DescribeComponentConfigurationRecommendationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/DescribeComponentConfigurationRecommendation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentName => Str

The name of the component.



=head2 RecommendationType => Str

The recommended configuration type.

Valid values are: C<"INFRA_ONLY">, C<"WORKLOAD_ONLY">, C<"ALL">

=head2 B<REQUIRED> ResourceGroupName => Str

The name of the resource group.



=head2 B<REQUIRED> Tier => Str

The tier of the application component.

Valid values are: C<"CUSTOM">, C<"DEFAULT">, C<"DOT_NET_CORE">, C<"DOT_NET_WORKER">, C<"DOT_NET_WEB_TIER">, C<"DOT_NET_WEB">, C<"SQL_SERVER">, C<"SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP">, C<"MYSQL">, C<"POSTGRESQL">, C<"JAVA_JMX">, C<"ORACLE">, C<"SAP_HANA_MULTI_NODE">, C<"SAP_HANA_SINGLE_NODE">, C<"SAP_HANA_HIGH_AVAILABILITY">, C<"SAP_ASE_SINGLE_NODE">, C<"SAP_ASE_HIGH_AVAILABILITY">, C<"SQL_SERVER_FAILOVER_CLUSTER_INSTANCE">, C<"SHAREPOINT">, C<"ACTIVE_DIRECTORY">, C<"SAP_NETWEAVER_STANDARD">, C<"SAP_NETWEAVER_DISTRIBUTED">, C<"SAP_NETWEAVER_HIGH_AVAILABILITY">

=head2 WorkloadName => Str

The name of the workload. The name of the workload is required when the
tier of the application component is C<SAP_ASE_SINGLE_NODE> or
C<SAP_ASE_HIGH_AVAILABILITY>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeComponentConfigurationRecommendation in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

