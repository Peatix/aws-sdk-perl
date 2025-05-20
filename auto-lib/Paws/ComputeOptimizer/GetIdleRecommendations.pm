
package Paws::ComputeOptimizer::GetIdleRecommendations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::IdleRecommendationFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has OrderBy => (is => 'ro', isa => 'Paws::ComputeOptimizer::OrderBy', traits => ['NameInRequest'], request_name => 'orderBy' );
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceArns' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdleRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetIdleRecommendationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetIdleRecommendations - Arguments for method GetIdleRecommendations on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIdleRecommendations on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetIdleRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIdleRecommendations.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetIdleRecommendationsResponse =
      $compute -optimizer->GetIdleRecommendations(
      AccountIds => [ 'MyAccountId', ... ],    # OPTIONAL
      Filters    => [
        {
          Name   => 'Finding',    # values: Finding, ResourceType; OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      OrderBy    => {
        Dimension => 'SavingsValue'
        ,    # values: SavingsValue, SavingsValueAfterDiscount; OPTIONAL
        Order => 'Asc',    # values: Asc, Desc; OPTIONAL
      },    # OPTIONAL
      ResourceArns => [ 'MyResourceArn', ... ],    # OPTIONAL
      );

    # Results:
    my $Errors = $GetIdleRecommendationsResponse->Errors;
    my $IdleRecommendations =
      $GetIdleRecommendationsResponse->IdleRecommendations;
    my $NextToken = $GetIdleRecommendationsResponse->NextToken;

   # Returns a L<Paws::ComputeOptimizer::GetIdleRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetIdleRecommendations>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

Return the idle resource recommendations to the specified Amazon Web
Services account IDs.

If your account is the management account or the delegated
administrator of an organization, use this parameter to return the idle
resource recommendations to specific member accounts.

You can only specify one account ID per request.



=head2 Filters => ArrayRef[L<Paws::ComputeOptimizer::IdleRecommendationFilter>]

An array of objects to specify a filter that returns a more specific
list of idle resource recommendations.



=head2 MaxResults => Int

The maximum number of idle resource recommendations to return with a
single request.

To retrieve the remaining results, make another request with the
returned C<nextToken> value.



=head2 NextToken => Str

The token to advance to the next page of idle resource recommendations.



=head2 OrderBy => L<Paws::ComputeOptimizer::OrderBy>

The order to sort the idle resource recommendations.



=head2 ResourceArns => ArrayRef[Str|Undef]

The ARN that identifies the idle resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIdleRecommendations in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

