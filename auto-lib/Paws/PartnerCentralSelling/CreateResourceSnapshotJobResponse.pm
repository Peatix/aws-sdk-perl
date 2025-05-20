
package Paws::PartnerCentralSelling::CreateResourceSnapshotJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::CreateResourceSnapshotJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the created snapshot job.


=head2 Id => Str

The unique identifier for the created snapshot job.


=head2 _request_id => Str


=cut

1;