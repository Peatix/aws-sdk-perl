
package Paws::M2::GetDataSetExportTask;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataSetExportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/dataset-export-tasks/{taskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::GetDataSetExportTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetDataSetExportTask - Arguments for method GetDataSetExportTask on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataSetExportTask on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method GetDataSetExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataSetExportTask.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $GetDataSetExportTaskResponse = $m2->GetDataSetExportTask(
      ApplicationId => 'MyIdentifier',
      TaskId        => 'MyIdentifier',

    );

    # Results:
    my $KmsKeyArn    = $GetDataSetExportTaskResponse->KmsKeyArn;
    my $Status       = $GetDataSetExportTaskResponse->Status;
    my $StatusReason = $GetDataSetExportTaskResponse->StatusReason;
    my $Summary      = $GetDataSetExportTaskResponse->Summary;
    my $TaskId       = $GetDataSetExportTaskResponse->TaskId;

    # Returns a L<Paws::M2::GetDataSetExportTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/GetDataSetExportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application identifier.



=head2 B<REQUIRED> TaskId => Str

The task identifier returned by the CreateDataSetExportTask operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataSetExportTask in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

