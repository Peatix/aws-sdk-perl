
package Paws::Kendra::DescribePrincipalMappingResponse;
  use Moose;
  has DataSourceId => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupOrderingIdSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::GroupOrderingIdSummary]');
  has IndexId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribePrincipalMappingResponse

=head1 ATTRIBUTES


=head2 DataSourceId => Str

Shows the identifier of the data source to see information on the
processing of C<PUT> and C<DELETE> actions for mapping users to their
groups.


=head2 GroupId => Str

Shows the identifier of the group to see information on the processing
of C<PUT> and C<DELETE> actions for mapping users to their groups.


=head2 GroupOrderingIdSummaries => ArrayRef[L<Paws::Kendra::GroupOrderingIdSummary>]

Shows the following information on the processing of C<PUT> and
C<DELETE> actions for mapping users to their groups:

=over

=item *

StatusE<mdash>the status can be either C<PROCESSING>, C<SUCCEEDED>,
C<DELETING>, C<DELETED>, or C<FAILED>.

=item *

Last updatedE<mdash>the last date-time an action was updated.

=item *

ReceivedE<mdash>the last date-time an action was received or submitted.

=item *

Ordering IDE<mdash>the latest action that should process and apply
after other actions.

=item *

Failure reasonE<mdash>the reason an action could not be processed.

=back



=head2 IndexId => Str

Shows the identifier of the index to see information on the processing
of C<PUT> and C<DELETE> actions for mapping users to their groups.


=head2 _request_id => Str


=cut

1;