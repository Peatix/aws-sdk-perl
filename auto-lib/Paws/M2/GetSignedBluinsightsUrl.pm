
package Paws::M2::GetSignedBluinsightsUrl;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSignedBluinsightsUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signed-bi-url');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::GetSignedBluinsightsUrlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetSignedBluinsightsUrl - Arguments for method GetSignedBluinsightsUrl on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSignedBluinsightsUrl on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method GetSignedBluinsightsUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSignedBluinsightsUrl.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $GetSignedBluinsightsUrlResponse = $m2->GetSignedBluinsightsUrl();

    # Results:
    my $SignedBiUrl = $GetSignedBluinsightsUrlResponse->SignedBiUrl;

    # Returns a L<Paws::M2::GetSignedBluinsightsUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/GetSignedBluinsightsUrl>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSignedBluinsightsUrl in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

