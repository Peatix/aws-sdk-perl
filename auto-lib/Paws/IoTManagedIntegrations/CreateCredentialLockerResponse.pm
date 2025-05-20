
package Paws::IoTManagedIntegrations::CreateCredentialLockerResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateCredentialLockerResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the credential locker.


=head2 CreatedAt => Str

The timestamp value of when the credential locker request occurred.


=head2 Id => Str

The identifier of the credential locker creation request.


=head2 _request_id => Str


=cut

