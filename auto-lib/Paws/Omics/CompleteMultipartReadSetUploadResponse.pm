
package Paws::Omics::CompleteMultipartReadSetUploadResponse;
  use Moose;
  has ReadSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readSetId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CompleteMultipartReadSetUploadResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReadSetId => Str

The read set ID created for an uploaded read set.


=head2 _request_id => Str


=cut

