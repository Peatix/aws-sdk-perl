
package Paws::OpenSearch::DescribeDomainChangeProgressResponse;
  use Moose;
  has ChangeProgressStatus => (is => 'ro', isa => 'Paws::OpenSearch::ChangeProgressStatusDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeDomainChangeProgressResponse

=head1 ATTRIBUTES


=head2 ChangeProgressStatus => L<Paws::OpenSearch::ChangeProgressStatusDetails>

Container for information about the stages of a configuration change
happening on a domain.


=head2 _request_id => Str


=cut

