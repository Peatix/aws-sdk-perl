
package Paws::NeptuneGraph::GetImportTask;
  use Moose;
  has TaskIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/importtasks/{taskIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::GetImportTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::GetImportTask - Arguments for method GetImportTask on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImportTask on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method GetImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImportTask.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $GetImportTaskOutput = $neptune -graph->GetImportTask(
      TaskIdentifier => 'MyTaskId',

    );

    # Results:
    my $AttemptNumber     = $GetImportTaskOutput->AttemptNumber;
    my $Format            = $GetImportTaskOutput->Format;
    my $GraphId           = $GetImportTaskOutput->GraphId;
    my $ImportOptions     = $GetImportTaskOutput->ImportOptions;
    my $ImportTaskDetails = $GetImportTaskOutput->ImportTaskDetails;
    my $ParquetType       = $GetImportTaskOutput->ParquetType;
    my $RoleArn           = $GetImportTaskOutput->RoleArn;
    my $Source            = $GetImportTaskOutput->Source;
    my $Status            = $GetImportTaskOutput->Status;
    my $StatusReason      = $GetImportTaskOutput->StatusReason;
    my $TaskId            = $GetImportTaskOutput->TaskId;

    # Returns a L<Paws::NeptuneGraph::GetImportTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/GetImportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskIdentifier => Str

The unique identifier of the import task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImportTask in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

