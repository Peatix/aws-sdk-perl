
package Paws::OpenSearch::DescribeDryRunProgressResponse;
  use Moose;
  has DryRunConfig => (is => 'ro', isa => 'Paws::OpenSearch::DomainStatus');
  has DryRunProgressStatus => (is => 'ro', isa => 'Paws::OpenSearch::DryRunProgressStatus');
  has DryRunResults => (is => 'ro', isa => 'Paws::OpenSearch::DryRunResults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeDryRunProgressResponse

=head1 ATTRIBUTES


=head2 DryRunConfig => L<Paws::OpenSearch::DomainStatus>

Details about the changes you're planning to make on the domain.


=head2 DryRunProgressStatus => L<Paws::OpenSearch::DryRunProgressStatus>

The current status of the dry run, including any validation errors.


=head2 DryRunResults => L<Paws::OpenSearch::DryRunResults>

The results of the dry run.


=head2 _request_id => Str


=cut

