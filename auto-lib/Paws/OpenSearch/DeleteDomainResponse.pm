
package Paws::OpenSearch::DeleteDomainResponse;
  use Moose;
  has DomainStatus => (is => 'ro', isa => 'Paws::OpenSearch::DomainStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DeleteDomainResponse

=head1 ATTRIBUTES


=head2 DomainStatus => L<Paws::OpenSearch::DomainStatus>

The status of the domain being deleted.


=head2 _request_id => Str


=cut

