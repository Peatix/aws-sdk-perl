
package Paws::QBusiness::StartDataSourceSyncJobResponse;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::StartDataSourceSyncJobResponse

=head1 ATTRIBUTES


=head2 ExecutionId => Str

The identifier for a particular synchronization job.


=head2 _request_id => Str


=cut

