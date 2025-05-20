
package Paws::Resiliencehub::ListSuggestedResiliencyPolicies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSuggestedResiliencyPolicies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-suggested-resiliency-policies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::ListSuggestedResiliencyPoliciesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListSuggestedResiliencyPolicies - Arguments for method ListSuggestedResiliencyPolicies on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSuggestedResiliencyPolicies on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method ListSuggestedResiliencyPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSuggestedResiliencyPolicies.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $ListSuggestedResiliencyPoliciesResponse =
      $resiliencehub->ListSuggestedResiliencyPolicies(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListSuggestedResiliencyPoliciesResponse->NextToken;
    my $ResiliencyPolicies =
      $ListSuggestedResiliencyPoliciesResponse->ResiliencyPolicies;

# Returns a L<Paws::Resiliencehub::ListSuggestedResiliencyPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/ListSuggestedResiliencyPolicies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of results to include in the response. If more results
exist than the specified C<MaxResults> value, a token is included in
the response so that the remaining results can be retrieved.



=head2 NextToken => Str

Null, or the token from a previous call to get the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSuggestedResiliencyPolicies in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

