
package Paws::TimestreamWrite::DescribeBatchLoadTask;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBatchLoadTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamWrite::DescribeBatchLoadTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::DescribeBatchLoadTask - Arguments for method DescribeBatchLoadTask on L<Paws::TimestreamWrite>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBatchLoadTask on the
L<Amazon Timestream Write|Paws::TimestreamWrite> service. Use the attributes of this class
as arguments to method DescribeBatchLoadTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBatchLoadTask.

=head1 SYNOPSIS

    my $ingest.timestream = Paws->service('TimestreamWrite');
    my $DescribeBatchLoadTaskResponse =
      $ingest . timestream->DescribeBatchLoadTask(
      TaskId => 'MyBatchLoadTaskId',

      );

    # Results:
    my $BatchLoadTaskDescription =
      $DescribeBatchLoadTaskResponse->BatchLoadTaskDescription;

    # Returns a L<Paws::TimestreamWrite::DescribeBatchLoadTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ingest.timestream/DescribeBatchLoadTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskId => Str

The ID of the batch load task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBatchLoadTask in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

