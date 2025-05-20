
package Paws::RedshiftServerless::ListTableRestoreStatusResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TableRestoreStatuses => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::TableRestoreStatus]', traits => ['NameInRequest'], request_name => 'tableRestoreStatuses' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListTableRestoreStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If your initial C<ListTableRestoreStatus> operation returns a
C<nextToken>, you can include the returned C<nextToken> in following
C<ListTableRestoreStatus> operations. This will returns results on the
next page.


=head2 TableRestoreStatuses => ArrayRef[L<Paws::RedshiftServerless::TableRestoreStatus>]

The array of returned C<TableRestoreStatus> objects.


=head2 _request_id => Str


=cut

1;