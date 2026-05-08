
package Paws::OpenSearch::ListDomainNamesResponse;
  use Moose;
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DomainInfo]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListDomainNamesResponse

=head1 ATTRIBUTES


=head2 DomainNames => ArrayRef[L<Paws::OpenSearch::DomainInfo>]

The names of all OpenSearch Service domains owned by the current user
and their respective engine types.


=head2 _request_id => Str


=cut

