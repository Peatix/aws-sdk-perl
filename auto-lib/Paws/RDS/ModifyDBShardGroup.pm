
package Paws::RDS::ModifyDBShardGroup;
  use Moose;
  has ComputeRedundancy => (is => 'ro', isa => 'Int');
  has DBShardGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has MaxACU => (is => 'ro', isa => 'Num');
  has MinACU => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBShardGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBShardGroup');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBShardGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBShardGroup - Arguments for method ModifyDBShardGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBShardGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBShardGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBShardGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBShardGroup = $rds->ModifyDBShardGroup(
      DBShardGroupIdentifier => 'MyDBShardGroupIdentifier',
      ComputeRedundancy      => 1,                            # OPTIONAL
      MaxACU                 => 1,                            # OPTIONAL
      MinACU                 => 1,                            # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBShardGroup>

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




=head2 B<REQUIRED> DBShardGroupIdentifier => Str

The name of the DB shard group to modify.



=head2 MaxACU => Num

The maximum capacity of the DB shard group in Aurora capacity units
(ACUs).



=head2 MinACU => Num

The minimum capacity of the DB shard group in Aurora capacity units
(ACUs).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBShardGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

