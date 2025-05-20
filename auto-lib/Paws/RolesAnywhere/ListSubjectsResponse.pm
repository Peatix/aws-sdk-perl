
package Paws::RolesAnywhere::ListSubjectsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Subjects => (is => 'ro', isa => 'ArrayRef[Paws::RolesAnywhere::SubjectSummary]', traits => ['NameInRequest'], request_name => 'subjects');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::ListSubjectsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates where the output should continue from, if a
previous request did not show all results. To get the next results,
make the request again with this value.


=head2 Subjects => ArrayRef[L<Paws::RolesAnywhere::SubjectSummary>]

A list of subjects.


=head2 _request_id => Str


=cut

