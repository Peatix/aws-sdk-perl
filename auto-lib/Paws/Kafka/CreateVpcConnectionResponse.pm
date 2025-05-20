
package Paws::Kafka::CreateVpcConnectionResponse;
  use Moose;
  has Authentication => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authentication');
  has ClientSubnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'clientSubnets');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroups');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Tags => (is => 'ro', isa => 'Paws::Kafka::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has VpcConnectionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcConnectionArn');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::CreateVpcConnectionResponse

=head1 ATTRIBUTES


=head2 Authentication => Str

The authentication type of VPC connection.


=head2 ClientSubnets => ArrayRef[Str|Undef]

The list of client subnets.


=head2 CreationTime => Str

The creation time of VPC connection.


=head2 SecurityGroups => ArrayRef[Str|Undef]

The list of security groups.


=head2 State => Str

The State of Vpc Connection.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"INACTIVE">, C<"DEACTIVATING">, C<"DELETING">, C<"FAILED">, C<"REJECTED">, C<"REJECTING">
=head2 Tags => L<Paws::Kafka::__mapOf__string>

A map of tags for the VPC connection.


=head2 VpcConnectionArn => Str

The VPC connection ARN.


=head2 VpcId => Str

The VPC ID of the VPC connection.


=head2 _request_id => Str


=cut

