
package Paws::ApplicationMigration::ListSourceServerActionsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::SourceServerActionDocument]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListSourceServerActionsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApplicationMigration::SourceServerActionDocument>]

List of source server post migration custom actions.


=head2 NextToken => Str

Next token returned when listing source server post migration custom
actions.


=head2 _request_id => Str


=cut

