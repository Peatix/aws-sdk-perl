
package Paws::Deadline::GetQueue;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetQueue - Arguments for method GetQueue on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueue on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueue.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetQueueResponse = $deadline->GetQueue(
      FarmId  => 'MyFarmId',
      QueueId => 'MyQueueId',

    );

    # Results:
    my $AllowedStorageProfileIds = $GetQueueResponse->AllowedStorageProfileIds;
    my $BlockedReason            = $GetQueueResponse->BlockedReason;
    my $CreatedAt                = $GetQueueResponse->CreatedAt;
    my $CreatedBy                = $GetQueueResponse->CreatedBy;
    my $DefaultBudgetAction      = $GetQueueResponse->DefaultBudgetAction;
    my $Description              = $GetQueueResponse->Description;
    my $DisplayName              = $GetQueueResponse->DisplayName;
    my $FarmId                   = $GetQueueResponse->FarmId;
    my $JobAttachmentSettings    = $GetQueueResponse->JobAttachmentSettings;
    my $JobRunAsUser             = $GetQueueResponse->JobRunAsUser;
    my $QueueId                  = $GetQueueResponse->QueueId;
    my $RequiredFileSystemLocationNames =
      $GetQueueResponse->RequiredFileSystemLocationNames;
    my $RoleArn   = $GetQueueResponse->RoleArn;
    my $Status    = $GetQueueResponse->Status;
    my $UpdatedAt = $GetQueueResponse->UpdatedAt;
    my $UpdatedBy = $GetQueueResponse->UpdatedBy;

    # Returns a L<Paws::Deadline::GetQueueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetQueue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm in the queue.



=head2 B<REQUIRED> QueueId => Str

The queue ID for the queue to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueue in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

