
package Paws::IoTFleetWise::GetSignalCatalogResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has LastModificationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModificationTime' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has NodeCounts => (is => 'ro', isa => 'Paws::IoTFleetWise::NodeCounts', traits => ['NameInRequest'], request_name => 'nodeCounts' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetSignalCatalogResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the signal catalog.


=head2 B<REQUIRED> CreationTime => Str

The time the signal catalog was created in seconds since epoch (January
1, 1970 at midnight UTC time).


=head2 Description => Str

A brief description of the signal catalog.


=head2 B<REQUIRED> LastModificationTime => Str

The last time the signal catalog was modified.


=head2 B<REQUIRED> Name => Str

The name of the signal catalog.


=head2 NodeCounts => L<Paws::IoTFleetWise::NodeCounts>

The total number of network nodes specified in a signal catalog.


=head2 _request_id => Str


=cut

1;