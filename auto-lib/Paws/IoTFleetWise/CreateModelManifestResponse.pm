
package Paws::IoTFleetWise::CreateModelManifestResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::CreateModelManifestResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the created vehicle model.


=head2 B<REQUIRED> Name => Str

The name of the created vehicle model.


=head2 _request_id => Str


=cut

1;