
package Paws::OpenSearch::CancelDomainConfigChangeResponse;
  use Moose;
  has CancelledChangeIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CancelledChangeProperties => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::CancelledChangeProperty]');
  has DryRun => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::CancelDomainConfigChangeResponse

=head1 ATTRIBUTES


=head2 CancelledChangeIds => ArrayRef[Str|Undef]

The unique identifiers of the changes that were cancelled.


=head2 CancelledChangeProperties => ArrayRef[L<Paws::OpenSearch::CancelledChangeProperty>]

The domain change properties that were cancelled.


=head2 DryRun => Bool

Whether or not the request was a dry run. If C<True>, the changes were
not actually cancelled.


=head2 _request_id => Str


=cut

