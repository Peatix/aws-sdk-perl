
package Paws::QApps::UpdateQAppSessionMetadataOutput;
  use Moose;
  has SessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionArn', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);
  has SessionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionName');
  has SharingConfiguration => (is => 'ro', isa => 'Paws::QApps::SessionSharingConfiguration', traits => ['NameInRequest'], request_name => 'sharingConfiguration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::UpdateQAppSessionMetadataOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionArn => Str

The Amazon Resource Name (ARN) of the updated Q App session.


=head2 B<REQUIRED> SessionId => Str

The unique identifier of the updated Q App session.


=head2 SessionName => Str

The new name of the updated Q App session.


=head2 B<REQUIRED> SharingConfiguration => L<Paws::QApps::SessionSharingConfiguration>

The new sharing configuration of the updated Q App data collection
session.


=head2 _request_id => Str


=cut

