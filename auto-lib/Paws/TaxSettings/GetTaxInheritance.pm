
package Paws::TaxSettings::GetTaxInheritance;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTaxInheritance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetTaxInheritance');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TaxSettings::GetTaxInheritanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::GetTaxInheritance - Arguments for method GetTaxInheritance on L<Paws::TaxSettings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTaxInheritance on the
L<Tax Settings|Paws::TaxSettings> service. Use the attributes of this class
as arguments to method GetTaxInheritance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTaxInheritance.

=head1 SYNOPSIS

    my $tax = Paws->service('TaxSettings');
    my $GetTaxInheritanceResponse = $tax->GetTaxInheritance();

    # Results:
    my $HeritageStatus = $GetTaxInheritanceResponse->HeritageStatus;

    # Returns a L<Paws::TaxSettings::GetTaxInheritanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tax/GetTaxInheritance>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTaxInheritance in L<Paws::TaxSettings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

