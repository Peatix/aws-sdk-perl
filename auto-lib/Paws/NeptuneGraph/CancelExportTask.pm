
package Paws::NeptuneGraph::CancelExportTask;
  use Moose;
  has TaskIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelExportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/exporttasks/{taskIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::CancelExportTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::CancelExportTask - Arguments for method CancelExportTask on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelExportTask on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method CancelExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelExportTask.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $CancelExportTaskOutput = $neptune -graph->CancelExportTask(
      TaskIdentifier => 'MyExportTaskId',

    );

    # Results:
    my $Destination      = $CancelExportTaskOutput->Destination;
    my $Format           = $CancelExportTaskOutput->Format;
    my $GraphId          = $CancelExportTaskOutput->GraphId;
    my $KmsKeyIdentifier = $CancelExportTaskOutput->KmsKeyIdentifier;
    my $ParquetType      = $CancelExportTaskOutput->ParquetType;
    my $RoleArn          = $CancelExportTaskOutput->RoleArn;
    my $Status           = $CancelExportTaskOutput->Status;
    my $StatusReason     = $CancelExportTaskOutput->StatusReason;
    my $TaskId           = $CancelExportTaskOutput->TaskId;

    # Returns a L<Paws::NeptuneGraph::CancelExportTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/CancelExportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskIdentifier => Str

The unique identifier of the export task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelExportTask in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

