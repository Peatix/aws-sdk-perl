
package Paws::ComputeOptimizer::GetRDSDatabaseRecommendations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::RDSDBRecommendationFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RecommendationPreferences => (is => 'ro', isa => 'Paws::ComputeOptimizer::RecommendationPreferences', traits => ['NameInRequest'], request_name => 'recommendationPreferences' );
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceArns' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRDSDatabaseRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetRDSDatabaseRecommendationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetRDSDatabaseRecommendations - Arguments for method GetRDSDatabaseRecommendations on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRDSDatabaseRecommendations on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetRDSDatabaseRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRDSDatabaseRecommendations.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetRDSDatabaseRecommendationsResponse =
      $compute -optimizer->GetRDSDatabaseRecommendations(
      AccountIds => [ 'MyAccountId', ... ],    # OPTIONAL
      Filters    => [
        {
          Name => 'InstanceFinding'
          , # values: InstanceFinding, InstanceFindingReasonCode, StorageFinding, StorageFindingReasonCode, Idle; OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults                => 1,                # OPTIONAL
      NextToken                 => 'MyNextToken',    # OPTIONAL
      RecommendationPreferences => {
        CpuVendorArchitectures => [
          'AWS_ARM64', ...    # values: AWS_ARM64, CURRENT
        ],    # OPTIONAL
      },    # OPTIONAL
      ResourceArns => [ 'MyResourceArn', ... ],    # OPTIONAL
      );

    # Results:
    my $Errors    = $GetRDSDatabaseRecommendationsResponse->Errors;
    my $NextToken = $GetRDSDatabaseRecommendationsResponse->NextToken;
    my $RdsDBRecommendations =
      $GetRDSDatabaseRecommendationsResponse->RdsDBRecommendations;

# Returns a L<Paws::ComputeOptimizer::GetRDSDatabaseRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetRDSDatabaseRecommendations>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

Return the Amazon RDS recommendations to the specified Amazon Web
Services account IDs.

If your account is the management account or the delegated
administrator of an organization, use this parameter to return the
Amazon RDS recommendations to specific member accounts.

You can only specify one account ID per request.



=head2 Filters => ArrayRef[L<Paws::ComputeOptimizer::RDSDBRecommendationFilter>]

An array of objects to specify a filter that returns a more specific
list of Amazon RDS recommendations.



=head2 MaxResults => Int

The maximum number of Amazon RDS recommendations to return with a
single request.

To retrieve the remaining results, make another request with the
returned C<nextToken> value.



=head2 NextToken => Str

The token to advance to the next page of Amazon RDS recommendations.



=head2 RecommendationPreferences => L<Paws::ComputeOptimizer::RecommendationPreferences>





=head2 ResourceArns => ArrayRef[Str|Undef]

The ARN that identifies the Amazon RDS.

The following is the format of the ARN:

C<arn:aws:rds:{region}:{accountId}:db:{resourceName}>

The following is the format of a DB Cluster ARN:

C<arn:aws:rds:{region}:{accountId}:cluster:{resourceName}>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRDSDatabaseRecommendations in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

