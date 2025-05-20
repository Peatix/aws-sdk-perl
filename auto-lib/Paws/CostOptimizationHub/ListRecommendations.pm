
package Paws::CostOptimizationHub::ListRecommendations;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::CostOptimizationHub::Filter', traits => ['NameInRequest'], request_name => 'filter' );
  has IncludeAllRecommendations => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeAllRecommendations' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has OrderBy => (is => 'ro', isa => 'Paws::CostOptimizationHub::OrderBy', traits => ['NameInRequest'], request_name => 'orderBy' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostOptimizationHub::ListRecommendationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::ListRecommendations - Arguments for method ListRecommendations on L<Paws::CostOptimizationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecommendations on the
L<Cost Optimization Hub|Paws::CostOptimizationHub> service. Use the attributes of this class
as arguments to method ListRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecommendations.

=head1 SYNOPSIS

    my $cost-optimization-hub = Paws->service('CostOptimizationHub');
    my $ListRecommendationsResponse =
      $cost -optimization-hub->ListRecommendations(
      Filter => {
        AccountIds  => [ 'MyAccountId', ... ],    # min: 1, max: 100; OPTIONAL
        ActionTypes => [
          'Rightsize',
          ... # values: Rightsize, Stop, Upgrade, PurchaseSavingsPlans, PurchaseReservedInstances, MigrateToGraviton, Delete, ScaleIn
        ],    # min: 1, max: 100; OPTIONAL
        ImplementationEfforts => [
          'VeryLow', ...    # values: VeryLow, Low, Medium, High, VeryHigh
        ],    # min: 1, max: 100; OPTIONAL
        RecommendationIds => [ 'MyString', ... ],   # min: 1, max: 100; OPTIONAL
        Regions           => [ 'MyString', ... ],   # min: 1, max: 100; OPTIONAL
        ResourceArns      => [ 'MyString', ... ],   # min: 1, max: 100; OPTIONAL
        ResourceIds       => [ 'MyString', ... ],   # min: 1, max: 100; OPTIONAL
        ResourceTypes     => [
          'Ec2Instance',
          ... # values: Ec2Instance, LambdaFunction, EbsVolume, EcsService, Ec2AutoScalingGroup, Ec2InstanceSavingsPlans, ComputeSavingsPlans, SageMakerSavingsPlans, Ec2ReservedInstances, RdsReservedInstances, OpenSearchReservedInstances, RedshiftReservedInstances, ElastiCacheReservedInstances, RdsDbInstanceStorage, RdsDbInstance, DynamoDbReservedCapacity, MemoryDbReservedInstances
        ],    # min: 1, max: 100; OPTIONAL
        RestartNeeded    => 1,    # OPTIONAL
        RollbackPossible => 1,    # OPTIONAL
        Tags             => [
          {
            Key   => 'MyString',
            Value => 'MyString',
          },
          ...
        ],                        # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      IncludeAllRecommendations => 1,             # OPTIONAL
      MaxResults                => 1,             # OPTIONAL
      NextToken                 => 'MyString',    # OPTIONAL
      OrderBy                   => {
        Dimension => 'MyString',
        Order     => 'Asc',                       # values: Asc, Desc; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $Items     = $ListRecommendationsResponse->Items;
    my $NextToken = $ListRecommendationsResponse->NextToken;

   # Returns a L<Paws::CostOptimizationHub::ListRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub/ListRecommendations>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::CostOptimizationHub::Filter>

The constraints that you want all returned recommendations to match.



=head2 IncludeAllRecommendations => Bool

List of all recommendations for a resource, or a single recommendation
if de-duped by C<resourceId>.



=head2 MaxResults => Int

The maximum number of recommendations that are returned for the
request.



=head2 NextToken => Str

The token to retrieve the next set of results.



=head2 OrderBy => L<Paws::CostOptimizationHub::OrderBy>

The ordering of recommendations by a dimension.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecommendations in L<Paws::CostOptimizationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

