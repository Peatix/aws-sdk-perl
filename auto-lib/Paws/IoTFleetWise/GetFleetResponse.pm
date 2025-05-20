
package Paws::IoTFleetWise::GetFleetResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has LastModificationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModificationTime' , required => 1);
  has SignalCatalogArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signalCatalogArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetFleetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 B<REQUIRED> CreationTime => Str

The time the fleet was created in seconds since epoch (January 1, 1970
at midnight UTC time).


=head2 Description => Str

A brief description of the fleet.


=head2 B<REQUIRED> Id => Str

The ID of the fleet.


=head2 B<REQUIRED> LastModificationTime => Str

The time the fleet was last updated, in seconds since epoch (January 1,
1970 at midnight UTC time).


=head2 B<REQUIRED> SignalCatalogArn => Str

The ARN of a signal catalog associated with the fleet.


=head2 _request_id => Str


=cut

1;