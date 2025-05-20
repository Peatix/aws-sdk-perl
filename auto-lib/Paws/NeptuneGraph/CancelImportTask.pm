
package Paws::NeptuneGraph::CancelImportTask;
  use Moose;
  has TaskIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelImportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/importtasks/{taskIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::CancelImportTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::CancelImportTask - Arguments for method CancelImportTask on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelImportTask on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method CancelImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelImportTask.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $CancelImportTaskOutput = $neptune -graph->CancelImportTask(
      TaskIdentifier => 'MyTaskId',

    );

    # Results:
    my $Format      = $CancelImportTaskOutput->Format;
    my $GraphId     = $CancelImportTaskOutput->GraphId;
    my $ParquetType = $CancelImportTaskOutput->ParquetType;
    my $RoleArn     = $CancelImportTaskOutput->RoleArn;
    my $Source      = $CancelImportTaskOutput->Source;
    my $Status      = $CancelImportTaskOutput->Status;
    my $TaskId      = $CancelImportTaskOutput->TaskId;

    # Returns a L<Paws::NeptuneGraph::CancelImportTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/CancelImportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskIdentifier => Str

The unique identifier of the import task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelImportTask in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

