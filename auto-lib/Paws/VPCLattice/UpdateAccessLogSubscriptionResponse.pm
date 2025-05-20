
package Paws::VPCLattice::UpdateAccessLogSubscriptionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has DestinationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationArn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::UpdateAccessLogSubscriptionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the access log subscription.


=head2 B<REQUIRED> DestinationArn => Str

The Amazon Resource Name (ARN) of the access log destination.


=head2 B<REQUIRED> Id => Str

The ID of the access log subscription.


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the access log subscription.


=head2 B<REQUIRED> ResourceId => Str

The ID of the resource.


=head2 _request_id => Str


=cut

