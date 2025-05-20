
package Paws::RDS::DBShardGroup;
  use Moose;
  has ComputeRedundancy => (is => 'ro', isa => 'Int');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBShardGroupArn => (is => 'ro', isa => 'Str');
  has DBShardGroupIdentifier => (is => 'ro', isa => 'Str');
  has DBShardGroupResourceId => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Str');
  has MaxACU => (is => 'ro', isa => 'Num');
  has MinACU => (is => 'ro', isa => 'Num');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has Status => (is => 'ro', isa => 'Str');
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]', request_name => 'Tag', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBShardGroup

=head1 ATTRIBUTES


=head2 ComputeRedundancy => Int

Specifies whether to create standby DB shard groups for the DB shard
group. Valid values are the following:

=over

=item *

0 - Creates a DB shard group without a standby DB shard group. This is
the default value.

=item *

1 - Creates a DB shard group with a standby DB shard group in a
different Availability Zone (AZ).

=item *

2 - Creates a DB shard group with two standby DB shard groups in two
different AZs.

=back



=head2 DBClusterIdentifier => Str

The name of the primary DB cluster for the DB shard group.


=head2 DBShardGroupArn => Str

The Amazon Resource Name (ARN) for the DB shard group.


=head2 DBShardGroupIdentifier => Str

The name of the DB shard group.


=head2 DBShardGroupResourceId => Str

The Amazon Web Services Region-unique, immutable identifier for the DB
shard group.


=head2 Endpoint => Str

The connection endpoint for the DB shard group.


=head2 MaxACU => Num

The maximum capacity of the DB shard group in Aurora capacity units
(ACUs).


=head2 MinACU => Num

The minimum capacity of the DB shard group in Aurora capacity units
(ACUs).


=head2 PubliclyAccessible => Bool

Indicates whether the DB shard group is publicly accessible.

When the DB shard group is publicly accessible, its Domain Name System
(DNS) endpoint resolves to the private IP address from within the DB
shard group's virtual private cloud (VPC). It resolves to the public IP
address from outside of the DB shard group's VPC. Access to the DB
shard group is ultimately controlled by the security group it uses.
That public access isn't permitted if the security group assigned to
the DB shard group doesn't permit it.

When the DB shard group isn't publicly accessible, it is an internal DB
shard group with a DNS name that resolves to a private IP address.

For more information, see CreateDBShardGroup.

This setting is only for Aurora Limitless Database.


=head2 Status => Str

The status of the DB shard group.


=head2 TagList => ArrayRef[L<Paws::RDS::Tag>]




=head2 _request_id => Str


=cut

