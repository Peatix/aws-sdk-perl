
package Paws::DataZone::ListProjectProfilesOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::ProjectProfileSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListProjectProfilesOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::DataZone::ProjectProfileSummary>]

The results of the ListProjectProfiles action.


=head2 NextToken => Str

When the number of project profiles is greater than the default value
for the MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of project profiles, the
response includes a pagination token named NextToken. You can specify
this NextToken value in a subsequent call to ListProjectProfiles to
list the next set of project profiles.


=head2 _request_id => Str


=cut

