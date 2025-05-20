
package Paws::RedshiftServerless::ListSnapshotCopyConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SnapshotCopyConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::SnapshotCopyConfiguration]', traits => ['NameInRequest'], request_name => 'snapshotCopyConfigurations' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListSnapshotCopyConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 B<REQUIRED> SnapshotCopyConfigurations => ArrayRef[L<Paws::RedshiftServerless::SnapshotCopyConfiguration>]

All of the returned snapshot copy configurations.


=head2 _request_id => Str


=cut

1;