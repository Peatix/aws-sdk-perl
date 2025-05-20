
package Paws::Artifact::ListCustomerAgreements;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCustomerAgreements');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/customer-agreement/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Artifact::ListCustomerAgreementsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Artifact::ListCustomerAgreements - Arguments for method ListCustomerAgreements on L<Paws::Artifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCustomerAgreements on the
L<AWS Artifact|Paws::Artifact> service. Use the attributes of this class
as arguments to method ListCustomerAgreements.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCustomerAgreements.

=head1 SYNOPSIS

    my $artifact = Paws->service('Artifact');
    my $ListCustomerAgreementsResponse = $artifact->ListCustomerAgreements(
      MaxResults => 1,                         # OPTIONAL
      NextToken  => 'MyNextTokenAttribute',    # OPTIONAL
    );

    # Results:
    my $CustomerAgreements =
      $ListCustomerAgreementsResponse->CustomerAgreements;
    my $NextToken = $ListCustomerAgreementsResponse->NextToken;

    # Returns a L<Paws::Artifact::ListCustomerAgreementsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/artifact/ListCustomerAgreements>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of resources to return in the paginated response.



=head2 NextToken => Str

Pagination token to request the next page of resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCustomerAgreements in L<Paws::Artifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

