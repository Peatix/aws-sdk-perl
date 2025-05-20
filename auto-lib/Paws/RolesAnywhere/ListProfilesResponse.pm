
package Paws::RolesAnywhere::ListProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Profiles => (is => 'ro', isa => 'ArrayRef[Paws::RolesAnywhere::ProfileDetail]', traits => ['NameInRequest'], request_name => 'profiles');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::ListProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates where the output should continue from, if a
previous request did not show all results. To get the next results,
make the request again with this value.


=head2 Profiles => ArrayRef[L<Paws::RolesAnywhere::ProfileDetail>]

A list of profiles.


=head2 _request_id => Str


=cut

