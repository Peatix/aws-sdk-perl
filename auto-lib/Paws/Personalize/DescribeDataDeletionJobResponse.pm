
package Paws::Personalize::DescribeDataDeletionJobResponse;
  use Moose;
  has DataDeletionJob => (is => 'ro', isa => 'Paws::Personalize::DataDeletionJob', traits => ['NameInRequest'], request_name => 'dataDeletionJob' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeDataDeletionJobResponse

=head1 ATTRIBUTES


=head2 DataDeletionJob => L<Paws::Personalize::DataDeletionJob>

Information about the data deletion job, including the status.

The status is one of the following values:

=over

=item *

PENDING

=item *

IN_PROGRESS

=item *

COMPLETED

=item *

FAILED

=back



=head2 _request_id => Str


=cut

1;