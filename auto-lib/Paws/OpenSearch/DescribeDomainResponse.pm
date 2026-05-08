
package Paws::OpenSearch::DescribeDomainResponse;
  use Moose;
  has DomainStatus => (is => 'ro', isa => 'Paws::OpenSearch::DomainStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainStatus => L<Paws::OpenSearch::DomainStatus>

List that contains the status of each specified OpenSearch Service
domain.


=head2 _request_id => Str


=cut

