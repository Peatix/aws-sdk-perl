
package Paws::S3Tables::ListNamespacesResponse;
  use Moose;
  has ContinuationToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'continuationToken');
  has Namespaces => (is => 'ro', isa => 'ArrayRef[Paws::S3Tables::NamespaceSummary]', traits => ['NameInRequest'], request_name => 'namespaces', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::ListNamespacesResponse

=head1 ATTRIBUTES


=head2 ContinuationToken => Str

The C<ContinuationToken> for pagination of the list results.


=head2 B<REQUIRED> Namespaces => ArrayRef[L<Paws::S3Tables::NamespaceSummary>]

A list of namespaces.


=head2 _request_id => Str


=cut

