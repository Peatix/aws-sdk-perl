
package Paws::ApplicationSignals::BatchUpdateExclusionWindowsOutput;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::BatchUpdateExclusionWindowsError]', required => 1);
  has SloIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::BatchUpdateExclusionWindowsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::ApplicationSignals::BatchUpdateExclusionWindowsError>]

A list of errors that occurred while processing the request.


=head2 B<REQUIRED> SloIds => ArrayRef[Str|Undef]

The list of SLO IDs that were successfully processed.


=head2 _request_id => Str


=cut

