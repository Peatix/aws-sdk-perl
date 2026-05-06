
package Paws::OpenSearch::DescribeDomainsResponse;
  use Moose;
  has DomainStatusList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DomainStatus]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeDomainsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainStatusList => ArrayRef[L<Paws::OpenSearch::DomainStatus>]

The status of the requested domains.


=head2 _request_id => Str


=cut

