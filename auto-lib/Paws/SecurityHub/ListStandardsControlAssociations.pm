
package Paws::SecurityHub::ListStandardsControlAssociations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has SecurityControlId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SecurityControlId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStandardsControlAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::ListStandardsControlAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListStandardsControlAssociations - Arguments for method ListStandardsControlAssociations on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStandardsControlAssociations on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method ListStandardsControlAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStandardsControlAssociations.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $ListStandardsControlAssociationsResponse =
      $securityhub->ListStandardsControlAssociations(
      SecurityControlId => 'MyNonEmptyString',
      MaxResults        => 1,                    # OPTIONAL
      NextToken         => 'MyNextToken',        # OPTIONAL
      );

    # Results:
    my $NextToken = $ListStandardsControlAssociationsResponse->NextToken;
    my $StandardsControlAssociationSummaries =
      $ListStandardsControlAssociationsResponse
      ->StandardsControlAssociationSummaries;

# Returns a L<Paws::SecurityHub::ListStandardsControlAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/ListStandardsControlAssociations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that limits the total results of the API response
to the specified number. If this parameter isn't provided in the
request, the results include the first 25 standard and control
associations. The results also include a C<NextToken> parameter that
you can use in a subsequent API call to get the next 25 associations.
This repeats until all associations for the specified control are
returned. The number of results is limited by the number of supported
Security Hub standards that you've enabled in the calling account.



=head2 NextToken => Str

Optional pagination parameter.



=head2 B<REQUIRED> SecurityControlId => Str

The identifier of the control (identified with C<SecurityControlId>,
C<SecurityControlArn>, or a mix of both parameters) that you want to
determine the enablement status of in each enabled standard.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStandardsControlAssociations in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

