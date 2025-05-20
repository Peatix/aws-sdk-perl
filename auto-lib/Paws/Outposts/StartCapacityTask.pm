
package Paws::Outposts::StartCapacityTask;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstancePools => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::InstanceTypeCapacity]', required => 1);
  has InstancesToExclude => (is => 'ro', isa => 'Paws::Outposts::InstancesToExclude');
  has OrderId => (is => 'ro', isa => 'Str');
  has OutpostIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OutpostId', required => 1);
  has TaskActionOnBlockingInstances => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCapacityTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/outposts/{OutpostId}/capacity');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::StartCapacityTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::StartCapacityTask - Arguments for method StartCapacityTask on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCapacityTask on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method StartCapacityTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCapacityTask.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $StartCapacityTaskOutput = $outposts->StartCapacityTask(
      InstancePools => [
        {
          Count        => 1,                       # max: 9999
          InstanceType => 'MyInstanceTypeName',    # min: 1, max: 64

        },
        ...
      ],
      OutpostIdentifier  => 'MyOutpostIdentifier',
      AssetId            => 'MyAssetIdInput',        # OPTIONAL
      DryRun             => 1,                       # OPTIONAL
      InstancesToExclude => {
        AccountIds => [
          'MyAccountId', ...                         # min: 12, max: 12
        ],    # OPTIONAL
        Instances => [
          'MyInstanceId', ...    # min: 11, max: 32
        ],    # OPTIONAL
        Services => [
          'AWS', ...    # values: AWS, EC2, ELASTICACHE, ELB, RDS, ROUTE53
        ],    # OPTIONAL
      },    # OPTIONAL
      OrderId                       => 'MyOrderId',              # OPTIONAL
      TaskActionOnBlockingInstances => 'WAIT_FOR_EVACUATION',    # OPTIONAL
    );

    # Results:
    my $AssetId            = $StartCapacityTaskOutput->AssetId;
    my $CapacityTaskId     = $StartCapacityTaskOutput->CapacityTaskId;
    my $CapacityTaskStatus = $StartCapacityTaskOutput->CapacityTaskStatus;
    my $CompletionDate     = $StartCapacityTaskOutput->CompletionDate;
    my $CreationDate       = $StartCapacityTaskOutput->CreationDate;
    my $DryRun             = $StartCapacityTaskOutput->DryRun;
    my $Failed             = $StartCapacityTaskOutput->Failed;
    my $InstancesToExclude = $StartCapacityTaskOutput->InstancesToExclude;
    my $LastModifiedDate   = $StartCapacityTaskOutput->LastModifiedDate;
    my $OrderId            = $StartCapacityTaskOutput->OrderId;
    my $OutpostId          = $StartCapacityTaskOutput->OutpostId;
    my $RequestedInstancePools =
      $StartCapacityTaskOutput->RequestedInstancePools;
    my $TaskActionOnBlockingInstances =
      $StartCapacityTaskOutput->TaskActionOnBlockingInstances;

    # Returns a L<Paws::Outposts::StartCapacityTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/StartCapacityTask>

=head1 ATTRIBUTES


=head2 AssetId => Str

The ID of the Outpost asset. An Outpost asset can be a single server
within an Outposts rack or an Outposts server configuration.



=head2 DryRun => Bool

You can request a dry run to determine if the instance type and
instance size changes is above or below available instance capacity.
Requesting a dry run does not make any changes to your plan.



=head2 B<REQUIRED> InstancePools => ArrayRef[L<Paws::Outposts::InstanceTypeCapacity>]

The instance pools specified in the capacity task.



=head2 InstancesToExclude => L<Paws::Outposts::InstancesToExclude>

List of user-specified running instances that must not be stopped in
order to free up the capacity needed to run the capacity task.



=head2 OrderId => Str

The ID of the Amazon Web Services Outposts order associated with the
specified capacity task.



=head2 B<REQUIRED> OutpostIdentifier => Str

The ID or ARN of the Outposts associated with the specified capacity
task.



=head2 TaskActionOnBlockingInstances => Str

Specify one of the following options in case an instance is blocking
the capacity task from running.

=over

=item *

C<WAIT_FOR_EVACUATION> - Checks every 10 minutes over 48 hours to
determine if instances have stopped and capacity is available to
complete the task.

=item *

C<FAIL_TASK> - The capacity task fails.

=back


Valid values are: C<"WAIT_FOR_EVACUATION">, C<"FAIL_TASK">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCapacityTask in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

