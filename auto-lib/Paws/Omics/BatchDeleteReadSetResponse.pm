
package Paws::Omics::BatchDeleteReadSetResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Omics::ReadSetBatchError]', traits => ['NameInRequest'], request_name => 'errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::BatchDeleteReadSetResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Omics::ReadSetBatchError>]

Errors returned by individual delete operations.


=head2 _request_id => Str


=cut

