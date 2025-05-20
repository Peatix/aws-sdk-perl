
package Paws::Personalize::CreateDatasetGroupResponse;
  use Moose;
  has DatasetGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetGroupArn' );
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDatasetGroupResponse

=head1 ATTRIBUTES


=head2 DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the new dataset group.


=head2 Domain => Str

The domain for the new Domain dataset group.

Valid values are: C<"ECOMMERCE">, C<"VIDEO_ON_DEMAND">
=head2 _request_id => Str


=cut

1;