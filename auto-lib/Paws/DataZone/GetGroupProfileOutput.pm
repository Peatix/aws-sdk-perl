
package Paws::DataZone::GetGroupProfileOutput;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupName');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetGroupProfileOutput

=head1 ATTRIBUTES


=head2 DomainId => Str

The identifier of the Amazon DataZone domain in which the group profile
exists.


=head2 GroupName => Str

The name of the group for which the specified group profile exists.


=head2 Id => Str

The identifier of the group profile.


=head2 Status => Str

The identifier of the group profile.

Valid values are: C<"ASSIGNED">, C<"NOT_ASSIGNED">
=head2 _request_id => Str


=cut

