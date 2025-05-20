
package Paws::ResourceGroups::ListGroupingStatusesOutput;
  use Moose;
  has Group => (is => 'ro', isa => 'Str');
  has GroupingStatuses => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::GroupingStatusesItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListGroupingStatusesOutput

=head1 ATTRIBUTES


=head2 Group => Str

The application group identifier, expressed as an Amazon resource name
(ARN) or the application group name.


=head2 GroupingStatuses => ArrayRef[L<Paws::ResourceGroups::GroupingStatusesItem>]

Returns details about the grouping or ungrouping status of the
resources in the specified application group.


=head2 NextToken => Str

If present, indicates that more output is available than is included in
the current response. Use this value in the C<NextToken> request
parameter in a subsequent call to the operation to get the next part of
the output. You should repeat this until the C<NextToken> response
element comes back as C<null>.


=head2 _request_id => Str


=cut

