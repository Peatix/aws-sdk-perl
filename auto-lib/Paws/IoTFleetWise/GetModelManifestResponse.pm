
package Paws::IoTFleetWise::GetModelManifestResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has LastModificationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModificationTime' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has SignalCatalogArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signalCatalogArn' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetModelManifestResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the vehicle model.


=head2 B<REQUIRED> CreationTime => Str

The time the vehicle model was created, in seconds since epoch (January
1, 1970 at midnight UTC time).


=head2 Description => Str

A brief description of the vehicle model.


=head2 B<REQUIRED> LastModificationTime => Str

The last time the vehicle model was modified.


=head2 B<REQUIRED> Name => Str

The name of the vehicle model.


=head2 SignalCatalogArn => Str

The ARN of the signal catalog associated with the vehicle model.


=head2 Status => Str

The state of the vehicle model. If the status is C<ACTIVE>, the vehicle
model can't be edited. You can edit the vehicle model if the status is
marked C<DRAFT>.

Valid values are: C<"ACTIVE">, C<"DRAFT">, C<"INVALID">, C<"VALIDATING">
=head2 _request_id => Str


=cut

1;