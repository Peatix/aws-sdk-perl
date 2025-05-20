
package Paws::QApps::UpdateQAppSessionOutput;
  use Moose;
  has SessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionArn', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::UpdateQAppSessionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionArn => Str

The Amazon Resource Name (ARN) of the updated Q App session.


=head2 B<REQUIRED> SessionId => Str

The unique identifier of the updated Q App session.


=head2 _request_id => Str


=cut

