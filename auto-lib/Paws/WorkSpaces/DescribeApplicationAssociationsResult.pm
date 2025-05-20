
package Paws::WorkSpaces::DescribeApplicationAssociationsResult;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::ApplicationResourceAssociation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeApplicationAssociationsResult

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[L<Paws::WorkSpaces::ApplicationResourceAssociation>]

List of associations and information about them.


=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.


=head2 _request_id => Str


=cut

1;