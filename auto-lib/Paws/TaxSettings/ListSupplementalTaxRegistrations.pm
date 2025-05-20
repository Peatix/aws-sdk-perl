
package Paws::TaxSettings::ListSupplementalTaxRegistrations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSupplementalTaxRegistrations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListSupplementalTaxRegistrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TaxSettings::ListSupplementalTaxRegistrationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::ListSupplementalTaxRegistrations - Arguments for method ListSupplementalTaxRegistrations on L<Paws::TaxSettings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSupplementalTaxRegistrations on the
L<Tax Settings|Paws::TaxSettings> service. Use the attributes of this class
as arguments to method ListSupplementalTaxRegistrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSupplementalTaxRegistrations.

=head1 SYNOPSIS

    my $tax = Paws->service('TaxSettings');
    my $ListSupplementalTaxRegistrationsResponse =
      $tax->ListSupplementalTaxRegistrations(
      MaxResults => 1,                            # OPTIONAL
      NextToken  => 'MyPaginationTokenString',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListSupplementalTaxRegistrationsResponse->NextToken;
    my $TaxRegistrations =
      $ListSupplementalTaxRegistrationsResponse->TaxRegistrations;

# Returns a L<Paws::TaxSettings::ListSupplementalTaxRegistrationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tax/ListSupplementalTaxRegistrations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of C<taxRegistrations> results you want in one response.



=head2 NextToken => Str

The token to retrieve the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSupplementalTaxRegistrations in L<Paws::TaxSettings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

