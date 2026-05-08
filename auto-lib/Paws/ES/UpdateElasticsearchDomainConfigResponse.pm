
package Paws::ES::UpdateElasticsearchDomainConfigResponse;
  use Moose;
  has DomainConfig => (is => 'ro', isa => 'Paws::ES::ElasticsearchDomainConfig', required => 1);
  has DryRunResults => (is => 'ro', isa => 'Paws::ES::DryRunResults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpdateElasticsearchDomainConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainConfig => L<Paws::ES::ElasticsearchDomainConfig>

The status of the updated Elasticsearch domain.


=head2 DryRunResults => L<Paws::ES::DryRunResults>

Contains result of DryRun.


=head2 _request_id => Str


=cut

