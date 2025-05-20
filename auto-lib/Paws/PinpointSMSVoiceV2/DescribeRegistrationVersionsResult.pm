
package Paws::PinpointSMSVoiceV2::DescribeRegistrationVersionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RegistrationArn => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationVersions => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::RegistrationVersionInformation]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeRegistrationVersionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.


=head2 B<REQUIRED> RegistrationArn => Str

The Amazon Resource Name (ARN) for the registration.


=head2 B<REQUIRED> RegistrationId => Str

The unique identifier for the registration.


=head2 B<REQUIRED> RegistrationVersions => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationVersionInformation>]

An array of RegistrationVersions objects.


=head2 _request_id => Str


=cut

1;