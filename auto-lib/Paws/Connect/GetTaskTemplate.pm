
package Paws::Connect::GetTaskTemplate;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has SnapshotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'snapshotVersion');
  has TaskTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TaskTemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTaskTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/task/template/{TaskTemplateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::GetTaskTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetTaskTemplate - Arguments for method GetTaskTemplate on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTaskTemplate on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method GetTaskTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTaskTemplate.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $GetTaskTemplateResponse = $connect->GetTaskTemplate(
      InstanceId      => 'MyInstanceId',
      TaskTemplateId  => 'MyTaskTemplateId',
      SnapshotVersion => 'MySnapshotVersion',    # OPTIONAL
    );

    # Results:
    my $Arn              = $GetTaskTemplateResponse->Arn;
    my $Constraints      = $GetTaskTemplateResponse->Constraints;
    my $ContactFlowId    = $GetTaskTemplateResponse->ContactFlowId;
    my $CreatedTime      = $GetTaskTemplateResponse->CreatedTime;
    my $Defaults         = $GetTaskTemplateResponse->Defaults;
    my $Description      = $GetTaskTemplateResponse->Description;
    my $Fields           = $GetTaskTemplateResponse->Fields;
    my $Id               = $GetTaskTemplateResponse->Id;
    my $InstanceId       = $GetTaskTemplateResponse->InstanceId;
    my $LastModifiedTime = $GetTaskTemplateResponse->LastModifiedTime;
    my $Name             = $GetTaskTemplateResponse->Name;
    my $SelfAssignFlowId = $GetTaskTemplateResponse->SelfAssignFlowId;
    my $Status           = $GetTaskTemplateResponse->Status;
    my $Tags             = $GetTaskTemplateResponse->Tags;

    # Returns a L<Paws::Connect::GetTaskTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/GetTaskTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 SnapshotVersion => Str

The system generated version of a task template that is associated with
a task, when the task is created.



=head2 B<REQUIRED> TaskTemplateId => Str

A unique identifier for the task template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTaskTemplate in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

