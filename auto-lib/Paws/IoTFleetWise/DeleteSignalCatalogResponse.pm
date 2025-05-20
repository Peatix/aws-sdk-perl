
package Paws::IoTFleetWise::DeleteSignalCatalogResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::DeleteSignalCatalogResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the deleted signal catalog.


=head2 B<REQUIRED> Name => Str

The name of the deleted signal catalog.


=head2 _request_id => Str


=cut

1;