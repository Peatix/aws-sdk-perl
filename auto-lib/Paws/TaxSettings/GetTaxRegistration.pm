
package Paws::TaxSettings::GetTaxRegistration;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTaxRegistration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetTaxRegistration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TaxSettings::GetTaxRegistrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::GetTaxRegistration - Arguments for method GetTaxRegistration on L<Paws::TaxSettings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTaxRegistration on the
L<Tax Settings|Paws::TaxSettings> service. Use the attributes of this class
as arguments to method GetTaxRegistration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTaxRegistration.

=head1 SYNOPSIS

    my $tax = Paws->service('TaxSettings');
    my $GetTaxRegistrationResponse = $tax->GetTaxRegistration(
      AccountId => 'MyAccountId',    # OPTIONAL
    );

    # Results:
    my $TaxRegistration = $GetTaxRegistrationResponse->TaxRegistration;

    # Returns a L<Paws::TaxSettings::GetTaxRegistrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tax/GetTaxRegistration>

=head1 ATTRIBUTES


=head2 AccountId => Str

Your unique account identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTaxRegistration in L<Paws::TaxSettings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

