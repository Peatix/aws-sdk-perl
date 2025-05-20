
package Paws::Macie2::GetSensitiveDataOccurrencesAvailability;
  use Moose;
  has FindingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'findingId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSensitiveDataOccurrencesAvailability');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings/{findingId}/reveal/availability');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::GetSensitiveDataOccurrencesAvailabilityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetSensitiveDataOccurrencesAvailability - Arguments for method GetSensitiveDataOccurrencesAvailability on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSensitiveDataOccurrencesAvailability on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method GetSensitiveDataOccurrencesAvailability.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSensitiveDataOccurrencesAvailability.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $GetSensitiveDataOccurrencesAvailabilityResponse =
      $macie2->GetSensitiveDataOccurrencesAvailability(
      FindingId => 'My__string',

      );

    # Results:
    my $Code    = $GetSensitiveDataOccurrencesAvailabilityResponse->Code;
    my $Reasons = $GetSensitiveDataOccurrencesAvailabilityResponse->Reasons;

# Returns a L<Paws::Macie2::GetSensitiveDataOccurrencesAvailabilityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/GetSensitiveDataOccurrencesAvailability>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingId => Str

The unique identifier for the finding.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSensitiveDataOccurrencesAvailability in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

