
package Paws::Kendra::BatchDeleteFeaturedResultsSetResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::BatchDeleteFeaturedResultsSetError]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::BatchDeleteFeaturedResultsSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::Kendra::BatchDeleteFeaturedResultsSetError>]

The list of errors for the featured results set IDs, explaining why
they couldn't be removed from the index.


=head2 _request_id => Str


=cut

1;