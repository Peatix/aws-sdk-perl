
package Paws::DataZone::GetUserProfileOutput;
  use Moose;
  has Details => (is => 'ro', isa => 'Paws::DataZone::UserProfileDetails', traits => ['NameInRequest'], request_name => 'details');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetUserProfileOutput

=head1 ATTRIBUTES


=head2 Details => L<Paws::DataZone::UserProfileDetails>




=head2 DomainId => Str

the identifier of the Amazon DataZone domain of which you want to get
the user profile.


=head2 Id => Str

The identifier of the user profile.


=head2 Status => Str

The status of the user profile.

Valid values are: C<"ASSIGNED">, C<"NOT_ASSIGNED">, C<"ACTIVATED">, C<"DEACTIVATED">
=head2 Type => Str

The type of the user profile.

Valid values are: C<"IAM">, C<"SSO">
=head2 _request_id => Str


=cut

