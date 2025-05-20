
package Paws::Omics::GetRun;
  use Moose;
  has Export => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'export');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/run/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetRun - Arguments for method GetRun on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRun on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRun.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetRunResponse = $omics->GetRun(
      Id     => 'MyRunId',
      Export => [
        'DEFINITION', ...    # values: DEFINITIONmin: 1, max: 64
      ],    # OPTIONAL
    );

    # Results:
    my $Accelerators        = $GetRunResponse->Accelerators;
    my $Arn                 = $GetRunResponse->Arn;
    my $CacheBehavior       = $GetRunResponse->CacheBehavior;
    my $CacheId             = $GetRunResponse->CacheId;
    my $CreationTime        = $GetRunResponse->CreationTime;
    my $Definition          = $GetRunResponse->Definition;
    my $Digest              = $GetRunResponse->Digest;
    my $EngineVersion       = $GetRunResponse->EngineVersion;
    my $FailureReason       = $GetRunResponse->FailureReason;
    my $Id                  = $GetRunResponse->Id;
    my $LogLevel            = $GetRunResponse->LogLevel;
    my $LogLocation         = $GetRunResponse->LogLocation;
    my $Name                = $GetRunResponse->Name;
    my $OutputUri           = $GetRunResponse->OutputUri;
    my $Parameters          = $GetRunResponse->Parameters;
    my $Priority            = $GetRunResponse->Priority;
    my $ResourceDigests     = $GetRunResponse->ResourceDigests;
    my $RetentionMode       = $GetRunResponse->RetentionMode;
    my $RoleArn             = $GetRunResponse->RoleArn;
    my $RunGroupId          = $GetRunResponse->RunGroupId;
    my $RunId               = $GetRunResponse->RunId;
    my $RunOutputUri        = $GetRunResponse->RunOutputUri;
    my $StartTime           = $GetRunResponse->StartTime;
    my $StartedBy           = $GetRunResponse->StartedBy;
    my $Status              = $GetRunResponse->Status;
    my $StatusMessage       = $GetRunResponse->StatusMessage;
    my $StopTime            = $GetRunResponse->StopTime;
    my $StorageCapacity     = $GetRunResponse->StorageCapacity;
    my $StorageType         = $GetRunResponse->StorageType;
    my $Tags                = $GetRunResponse->Tags;
    my $Uuid                = $GetRunResponse->Uuid;
    my $WorkflowId          = $GetRunResponse->WorkflowId;
    my $WorkflowOwnerId     = $GetRunResponse->WorkflowOwnerId;
    my $WorkflowType        = $GetRunResponse->WorkflowType;
    my $WorkflowUuid        = $GetRunResponse->WorkflowUuid;
    my $WorkflowVersionName = $GetRunResponse->WorkflowVersionName;

    # Returns a L<Paws::Omics::GetRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetRun>

=head1 ATTRIBUTES


=head2 Export => ArrayRef[Str|Undef]

The run's export format.



=head2 B<REQUIRED> Id => Str

The run's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRun in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

