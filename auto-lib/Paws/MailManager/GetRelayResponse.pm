
package Paws::MailManager::GetRelayResponse;
  use Moose;
  has Authentication => (is => 'ro', isa => 'Paws::MailManager::RelayAuthentication');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str');
  has RelayArn => (is => 'ro', isa => 'Str');
  has RelayId => (is => 'ro', isa => 'Str', required => 1);
  has RelayName => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str');
  has ServerPort => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetRelayResponse

=head1 ATTRIBUTES


=head2 Authentication => L<Paws::MailManager::RelayAuthentication>

The authentication attributeE<mdash>contains the secret ARN where the
customer relay server credentials are stored.


=head2 CreatedTimestamp => Str

The timestamp of when the relay was created.


=head2 LastModifiedTimestamp => Str

The timestamp of when relay was last updated.


=head2 RelayArn => Str

The Amazon Resource Name (ARN) of the relay.


=head2 B<REQUIRED> RelayId => Str

The unique relay identifier.


=head2 RelayName => Str

The unique name of the relay.


=head2 ServerName => Str

The destination relay server address.


=head2 ServerPort => Int

The destination relay server port.


=head2 _request_id => Str


=cut

1;