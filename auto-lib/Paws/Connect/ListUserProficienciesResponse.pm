
package Paws::Connect::ListUserProficienciesResponse;
  use Moose;
  has LastModifiedRegion => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has UserProficiencyList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::UserProficiency]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListUserProficienciesResponse

=head1 ATTRIBUTES


=head2 LastModifiedRegion => Str

The region in which a user's proficiencies were last modified.


=head2 LastModifiedTime => Str

The last time that the user's proficiencies are were modified.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 UserProficiencyList => ArrayRef[L<Paws::Connect::UserProficiency>]

Information about the user proficiencies.


=head2 _request_id => Str


=cut

