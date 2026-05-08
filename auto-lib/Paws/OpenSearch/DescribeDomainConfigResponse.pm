
package Paws::OpenSearch::DescribeDomainConfigResponse;
  use Moose;
  has DomainConfig => (is => 'ro', isa => 'Paws::OpenSearch::DomainConfig', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeDomainConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainConfig => L<Paws::OpenSearch::DomainConfig>

Container for the configuration of the OpenSearch Service domain.


=head2 _request_id => Str


=cut

