
package Paws::DataZone::ListProjectsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::ProjectSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListProjectsOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::DataZone::ProjectSummary>]

The results of the C<ListProjects> action.


=head2 NextToken => Str

When the number of projects is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of projects, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<ListProjects> to list the
next set of projects.


=head2 _request_id => Str


=cut

