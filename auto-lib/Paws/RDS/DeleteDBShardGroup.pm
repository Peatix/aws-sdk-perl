
package Paws::RDS::DeleteDBShardGroup;
  use Moose;
  has DBShardGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBShardGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBShardGroup');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBShardGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBShardGroup - Arguments for method DeleteDBShardGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBShardGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteDBShardGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBShardGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBShardGroup = $rds->DeleteDBShardGroup(
      DBShardGroupIdentifier => 'MyDBShardGroupIdentifier',

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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBShardGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBShardGroupIdentifier => Str

The name of the DB shard group to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBShardGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

