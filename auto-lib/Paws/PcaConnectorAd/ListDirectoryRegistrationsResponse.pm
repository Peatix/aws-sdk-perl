
package Paws::PcaConnectorAd::ListDirectoryRegistrationsResponse;
  use Moose;
  has DirectoryRegistrations => (is => 'ro', isa => 'ArrayRef[Paws::PcaConnectorAd::DirectoryRegistrationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::ListDirectoryRegistrationsResponse

=head1 ATTRIBUTES


=head2 DirectoryRegistrations => ArrayRef[L<Paws::PcaConnectorAd::DirectoryRegistrationSummary>]

Summary information about each directory registration you have created.


=head2 NextToken => Str

Use this parameter when paginating results in a subsequent request
after you receive a response with truncated results. Set it to the
value of the C<NextToken> parameter from the response you just
received.


=head2 _request_id => Str


=cut

