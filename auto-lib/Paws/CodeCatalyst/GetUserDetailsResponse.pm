
package Paws::CodeCatalyst::GetUserDetailsResponse;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has PrimaryEmail => (is => 'ro', isa => 'Paws::CodeCatalyst::EmailAddress', traits => ['NameInRequest'], request_name => 'primaryEmail');
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId');
  has UserName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userName');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetUserDetailsResponse

=head1 ATTRIBUTES


=head2 DisplayName => Str

The friendly name displayed for the user in Amazon CodeCatalyst.


=head2 PrimaryEmail => L<Paws::CodeCatalyst::EmailAddress>

The email address provided by the user when they signed up.


=head2 UserId => Str

The system-generated unique ID of the user.


=head2 UserName => Str

The name of the user as displayed in Amazon CodeCatalyst.


=head2 Version => Str




=head2 _request_id => Str


=cut

