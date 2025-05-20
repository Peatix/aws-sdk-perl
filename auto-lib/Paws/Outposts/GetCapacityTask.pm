
package Paws::Outposts::GetCapacityTask;
  use Moose;
  has CapacityTaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CapacityTaskId', required => 1);
  has OutpostIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OutpostId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCapacityTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/outposts/{OutpostId}/capacity/{CapacityTaskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::GetCapacityTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetCapacityTask - Arguments for method GetCapacityTask on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCapacityTask on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method GetCapacityTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCapacityTask.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $GetCapacityTaskOutput = $outposts->GetCapacityTask(
      CapacityTaskId    => 'MyCapacityTaskId',
      OutpostIdentifier => 'MyOutpostIdentifier',

    );

    # Results:
    my $AssetId                = $GetCapacityTaskOutput->AssetId;
    my $CapacityTaskId         = $GetCapacityTaskOutput->CapacityTaskId;
    my $CapacityTaskStatus     = $GetCapacityTaskOutput->CapacityTaskStatus;
    my $CompletionDate         = $GetCapacityTaskOutput->CompletionDate;
    my $CreationDate           = $GetCapacityTaskOutput->CreationDate;
    my $DryRun                 = $GetCapacityTaskOutput->DryRun;
    my $Failed                 = $GetCapacityTaskOutput->Failed;
    my $InstancesToExclude     = $GetCapacityTaskOutput->InstancesToExclude;
    my $LastModifiedDate       = $GetCapacityTaskOutput->LastModifiedDate;
    my $OrderId                = $GetCapacityTaskOutput->OrderId;
    my $OutpostId              = $GetCapacityTaskOutput->OutpostId;
    my $RequestedInstancePools = $GetCapacityTaskOutput->RequestedInstancePools;
    my $TaskActionOnBlockingInstances =
      $GetCapacityTaskOutput->TaskActionOnBlockingInstances;

    # Returns a L<Paws::Outposts::GetCapacityTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/GetCapacityTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityTaskId => Str

ID of the capacity task.



=head2 B<REQUIRED> OutpostIdentifier => Str

ID or ARN of the Outpost associated with the specified capacity task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCapacityTask in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

