
package Paws::Omics::ListReferencesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has References => (is => 'ro', isa => 'ArrayRef[Paws::Omics::ReferenceListItem]', traits => ['NameInRequest'], request_name => 'references', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReferencesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 B<REQUIRED> References => ArrayRef[L<Paws::Omics::ReferenceListItem>]

A list of references.


=head2 _request_id => Str


=cut

