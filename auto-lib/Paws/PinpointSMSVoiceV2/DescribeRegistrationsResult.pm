
package Paws::PinpointSMSVoiceV2::DescribeRegistrationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Registrations => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::RegistrationInformation]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeRegistrationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.


=head2 B<REQUIRED> Registrations => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationInformation>]

An array of RegistrationInformation objects.


=head2 _request_id => Str


=cut

1;