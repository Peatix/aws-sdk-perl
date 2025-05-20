
package Paws::Kafka::DescribeVpcConnectionResponse;
  use Moose;
  has Authentication => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authentication');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroups');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnets');
  has Tags => (is => 'ro', isa => 'Paws::Kafka::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has TargetClusterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetClusterArn');
  has VpcConnectionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcConnectionArn');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeVpcConnectionResponse

=head1 ATTRIBUTES


=head2 Authentication => Str

The authentication type of VPC connection.


=head2 CreationTime => Str

The creation time of the VPC connection.


=head2 SecurityGroups => ArrayRef[Str|Undef]

The list of security groups for the VPC connection.


=head2 State => Str

The state of VPC connection.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"INACTIVE">, C<"DEACTIVATING">, C<"DELETING">, C<"FAILED">, C<"REJECTED">, C<"REJECTING">
=head2 Subnets => ArrayRef[Str|Undef]

The list of subnets for the VPC connection.


=head2 Tags => L<Paws::Kafka::__mapOf__string>

A map of tags for the VPC connection.


=head2 TargetClusterArn => Str

The Amazon Resource Name (ARN) that uniquely identifies an MSK cluster.


=head2 VpcConnectionArn => Str

The Amazon Resource Name (ARN) that uniquely identifies a MSK VPC
connection.


=head2 VpcId => Str

The VPC Id for the VPC connection.


=head2 _request_id => Str


=cut

