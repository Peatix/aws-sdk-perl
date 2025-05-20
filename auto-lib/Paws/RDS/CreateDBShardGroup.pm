
package Paws::RDS::CreateDBShardGroup;
  use Moose;
  has ComputeRedundancy => (is => 'ro', isa => 'Int');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBShardGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has MaxACU => (is => 'ro', isa => 'Num', required => 1);
  has MinACU => (is => 'ro', isa => 'Num');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBShardGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBShardGroup');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBShardGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBShardGroup - Arguments for method CreateDBShardGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBShardGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateDBShardGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBShardGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBShardGroup = $rds->CreateDBShardGroup(
      DBClusterIdentifier    => 'MyString',
      DBShardGroupIdentifier => 'MyString',
      MaxACU                 => 1,
      ComputeRedundancy      => 1,            # OPTIONAL
      MinACU                 => 1,            # OPTIONAL
      PubliclyAccessible     => 1,            # OPTIONAL
      Tags                   => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                      # OPTIONAL
    );

    # Results:
    my $ComputeRedundancy      = $DBShardGroup->ComputeRedundancy;
    my $DBClusterIdentifier    = $DBShardGroup->DBClusterIdentifier;
    my $DBShardGroupArn        = $DBShardGroup->DBShardGroupArn;
    my $DBShardGroupIdentifier = $DBShardGroup->DBShardGroupIdentifier;
    my $DBShardGroupResourceId = $DBShardGroup->DBShardGroupResourceId;
    my $Endpoint               = $DBShardGroup->Endpoint;
    my $MaxACU                 = $DBShardGroup->MaxACU;
    my $MinACU                 = $DBShardGroup->MinACU;
    my $PubliclyAccessible     = $DBShardGroup->PubliclyAccessible;
    my $Status                 = $DBShardGroup->Status;
    my $TagList                = $DBShardGroup->TagList;

    # Returns a L<Paws::RDS::DBShardGroup> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBShardGroup>

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




=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the primary DB cluster for the DB shard group.



=head2 B<REQUIRED> DBShardGroupIdentifier => Str

The name of the DB shard group.



=head2 B<REQUIRED> MaxACU => Num

The maximum capacity of the DB shard group in Aurora capacity units
(ACUs).



=head2 MinACU => Num

The minimum capacity of the DB shard group in Aurora capacity units
(ACUs).



=head2 PubliclyAccessible => Bool

Specifies whether the DB shard group is publicly accessible.

When the DB shard group is publicly accessible, its Domain Name System
(DNS) endpoint resolves to the private IP address from within the DB
shard group's virtual private cloud (VPC). It resolves to the public IP
address from outside of the DB shard group's VPC. Access to the DB
shard group is ultimately controlled by the security group it uses.
That public access is not permitted if the security group assigned to
the DB shard group doesn't permit it.

When the DB shard group isn't publicly accessible, it is an internal DB
shard group with a DNS name that resolves to a private IP address.

Default: The default behavior varies depending on whether
C<DBSubnetGroupName> is specified.

If C<DBSubnetGroupName> isn't specified, and C<PubliclyAccessible>
isn't specified, the following applies:

=over

=item *

If the default VPC in the target Region doesnE<rsquo>t have an internet
gateway attached to it, the DB shard group is private.

=item *

If the default VPC in the target Region has an internet gateway
attached to it, the DB shard group is public.

=back

If C<DBSubnetGroupName> is specified, and C<PubliclyAccessible> isn't
specified, the following applies:

=over

=item *

If the subnets are part of a VPC that doesnE<rsquo>t have an internet
gateway attached to it, the DB shard group is private.

=item *

If the subnets are part of a VPC that has an internet gateway attached
to it, the DB shard group is public.

=back




=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBShardGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

