
package Paws::IoTFleetWise::CreateFleetResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::CreateFleetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the created fleet.


=head2 B<REQUIRED> Id => Str

The ID of the created fleet.


=head2 _request_id => Str


=cut

1;