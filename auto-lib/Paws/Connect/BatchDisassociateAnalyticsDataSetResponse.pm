
package Paws::Connect::BatchDisassociateAnalyticsDataSetResponse;
  use Moose;
  has Deleted => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ErrorResult]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::BatchDisassociateAnalyticsDataSetResponse

=head1 ATTRIBUTES


=head2 Deleted => ArrayRef[Str|Undef]

An array of successfully disassociated dataset identifiers.


=head2 Errors => ArrayRef[L<Paws::Connect::ErrorResult>]

A list of errors for any datasets not successfully removed.


=head2 _request_id => Str


=cut

