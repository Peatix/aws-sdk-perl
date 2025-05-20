
package Paws::Personalize::UpdateDatasetResponse;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::UpdateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset you updated.


=head2 _request_id => Str


=cut

1;