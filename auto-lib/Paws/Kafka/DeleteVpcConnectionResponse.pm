
package Paws::Kafka::DeleteVpcConnectionResponse;
  use Moose;
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has VpcConnectionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcConnectionArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DeleteVpcConnectionResponse

=head1 ATTRIBUTES


=head2 State => Str

The state of the VPC connection.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"INACTIVE">, C<"DEACTIVATING">, C<"DELETING">, C<"FAILED">, C<"REJECTED">, C<"REJECTING">
=head2 VpcConnectionArn => Str

The Amazon Resource Name (ARN) that uniquely identifies an MSK VPC
connection.


=head2 _request_id => Str


=cut

