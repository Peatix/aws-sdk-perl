
package Paws::NeptuneGraph::GetExportTask;
  use Moose;
  has TaskIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/exporttasks/{taskIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::GetExportTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::GetExportTask - Arguments for method GetExportTask on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExportTask on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method GetExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExportTask.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $GetExportTaskOutput = $neptune -graph->GetExportTask(
      TaskIdentifier => 'MyExportTaskId',

    );

    # Results:
    my $Destination       = $GetExportTaskOutput->Destination;
    my $ExportFilter      = $GetExportTaskOutput->ExportFilter;
    my $ExportTaskDetails = $GetExportTaskOutput->ExportTaskDetails;
    my $Format            = $GetExportTaskOutput->Format;
    my $GraphId           = $GetExportTaskOutput->GraphId;
    my $KmsKeyIdentifier  = $GetExportTaskOutput->KmsKeyIdentifier;
    my $ParquetType       = $GetExportTaskOutput->ParquetType;
    my $RoleArn           = $GetExportTaskOutput->RoleArn;
    my $Status            = $GetExportTaskOutput->Status;
    my $StatusReason      = $GetExportTaskOutput->StatusReason;
    my $TaskId            = $GetExportTaskOutput->TaskId;

    # Returns a L<Paws::NeptuneGraph::GetExportTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/GetExportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskIdentifier => Str

The unique identifier of the export task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExportTask in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

