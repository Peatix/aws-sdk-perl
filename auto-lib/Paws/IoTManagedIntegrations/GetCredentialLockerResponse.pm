
package Paws::IoTManagedIntegrations::GetCredentialLockerResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetCredentialLockerResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the credential locker.


=head2 CreatedAt => Str

The timestamp value of when the credential locker requset occurred.


=head2 Id => Str

The identifier of the credential locker.


=head2 Name => Str

The name of the credential locker.


=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the credential locker.


=head2 _request_id => Str


=cut

