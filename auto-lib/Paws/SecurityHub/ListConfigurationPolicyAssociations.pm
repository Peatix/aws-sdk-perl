
package Paws::SecurityHub::ListConfigurationPolicyAssociations;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::SecurityHub::AssociationFilters');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigurationPolicyAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationPolicyAssociation/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::ListConfigurationPolicyAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListConfigurationPolicyAssociations - Arguments for method ListConfigurationPolicyAssociations on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigurationPolicyAssociations on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method ListConfigurationPolicyAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigurationPolicyAssociations.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $ListConfigurationPolicyAssociationsResponse =
      $securityhub->ListConfigurationPolicyAssociations(
      Filters => {
        AssociationStatus =>
          'PENDING',    # values: PENDING, SUCCESS, FAILED; OPTIONAL
        AssociationType => 'INHERITED',   # values: INHERITED, APPLIED; OPTIONAL
        ConfigurationPolicyId => 'MyNonEmptyString',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $ConfigurationPolicyAssociationSummaries =
      $ListConfigurationPolicyAssociationsResponse
      ->ConfigurationPolicyAssociationSummaries;
    my $NextToken = $ListConfigurationPolicyAssociationsResponse->NextToken;

# Returns a L<Paws::SecurityHub::ListConfigurationPolicyAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/ListConfigurationPolicyAssociations>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::SecurityHub::AssociationFilters>

Options for filtering the C<ListConfigurationPolicyAssociations>
response. You can filter by the Amazon Resource Name (ARN) or
universally unique identifier (UUID) of a configuration,
C<AssociationType>, or C<AssociationStatus>.



=head2 MaxResults => Int

The maximum number of results that's returned by
C<ListConfigurationPolicies> in each page of the response. When this
parameter is used, C<ListConfigurationPolicyAssociations> returns the
specified number of results in a single page and a C<NextToken>
response element. You can see the remaining results of the initial
request by sending another C<ListConfigurationPolicyAssociations>
request with the returned C<NextToken> value. A valid range for
C<MaxResults> is between 1 and 100.



=head2 NextToken => Str

The C<NextToken> value that's returned from a previous paginated
C<ListConfigurationPolicyAssociations> request where C<MaxResults> was
used but the results exceeded the value of that parameter. Pagination
continues from the end of the previous response that returned the
C<NextToken> value. This value is C<null> when there are no more
results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigurationPolicyAssociations in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

