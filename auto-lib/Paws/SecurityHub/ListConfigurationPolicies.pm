
package Paws::SecurityHub::ListConfigurationPolicies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigurationPolicies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationPolicy/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::ListConfigurationPoliciesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListConfigurationPolicies - Arguments for method ListConfigurationPolicies on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigurationPolicies on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method ListConfigurationPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigurationPolicies.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $ListConfigurationPoliciesResponse =
      $securityhub->ListConfigurationPolicies(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $ConfigurationPolicySummaries =
      $ListConfigurationPoliciesResponse->ConfigurationPolicySummaries;
    my $NextToken = $ListConfigurationPoliciesResponse->NextToken;

    # Returns a L<Paws::SecurityHub::ListConfigurationPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/ListConfigurationPolicies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that's returned by
C<ListConfigurationPolicies> in each page of the response. When this
parameter is used, C<ListConfigurationPolicies> returns the specified
number of results in a single page and a C<NextToken> response element.
You can see the remaining results of the initial request by sending
another C<ListConfigurationPolicies> request with the returned
C<NextToken> value. A valid range for C<MaxResults> is between 1 and
100.



=head2 NextToken => Str

The NextToken value that's returned from a previous paginated
C<ListConfigurationPolicies> request where C<MaxResults> was used but
the results exceeded the value of that parameter. Pagination continues
from the C<MaxResults> was used but the results exceeded the value of
that parameter. Pagination continues from the end of the previous
response that returned the C<NextToken> value. This value is C<null>
when there are no more results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigurationPolicies in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

