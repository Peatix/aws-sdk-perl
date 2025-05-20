
package Paws::ApplicationMigration::ListTemplateActionsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::TemplateActionDocument]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListTemplateActionsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApplicationMigration::TemplateActionDocument>]

List of template post migration custom actions.


=head2 NextToken => Str

Next token returned when listing template post migration custom
actions.


=head2 _request_id => Str


=cut

