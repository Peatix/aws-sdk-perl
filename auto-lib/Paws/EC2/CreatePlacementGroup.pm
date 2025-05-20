
package Paws::EC2::CreatePlacementGroup;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has GroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupName' );
  has PartitionCount => (is => 'ro', isa => 'Int');
  has SpreadLevel => (is => 'ro', isa => 'Str');
  has Strategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'strategy' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlacementGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreatePlacementGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreatePlacementGroup - Arguments for method CreatePlacementGroup on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlacementGroup on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreatePlacementGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlacementGroup.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To create a placement group
    # This example creates a placement group with the specified name.
    my $CreatePlacementGroupResult = $ec2->CreatePlacementGroup(
      'GroupName' => 'my-cluster',
      'Strategy'  => 'cluster'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreatePlacementGroup>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 GroupName => Str

A name for the placement group. Must be unique within the scope of your
account for the Region.

Constraints: Up to 255 ASCII characters



=head2 PartitionCount => Int

The number of partitions. Valid only when B<Strategy> is set to
C<partition>.



=head2 SpreadLevel => Str

Determines how placement groups spread instances.

=over

=item *

Host E<ndash> You can use C<host> only with Outpost placement groups.

=item *

Rack E<ndash> No usage restrictions.

=back


Valid values are: C<"host">, C<"rack">

=head2 Strategy => Str

The placement strategy.

Valid values are: C<"cluster">, C<"spread">, C<"partition">

=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the new placement group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlacementGroup in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

