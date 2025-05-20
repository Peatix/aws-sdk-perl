
package Paws::Personalize::CreateDataDeletionJobResponse;
  use Moose;
  has DataDeletionJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataDeletionJobArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDataDeletionJobResponse

=head1 ATTRIBUTES


=head2 DataDeletionJobArn => Str

The Amazon Resource Name (ARN) of the data deletion job.


=head2 _request_id => Str


=cut

1;