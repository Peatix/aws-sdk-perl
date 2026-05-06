
package Paws::OpenSearch::UpdateDomainConfigResponse;
  use Moose;
  has DomainConfig => (is => 'ro', isa => 'Paws::OpenSearch::DomainConfig', required => 1);
  has DryRunProgressStatus => (is => 'ro', isa => 'Paws::OpenSearch::DryRunProgressStatus');
  has DryRunResults => (is => 'ro', isa => 'Paws::OpenSearch::DryRunResults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpdateDomainConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainConfig => L<Paws::OpenSearch::DomainConfig>

The status of the updated domain.


=head2 DryRunProgressStatus => L<Paws::OpenSearch::DryRunProgressStatus>

The status of the dry run being performed on the domain, if any.


=head2 DryRunResults => L<Paws::OpenSearch::DryRunResults>

Results of the dry run performed in the update domain request.


=head2 _request_id => Str


=cut

