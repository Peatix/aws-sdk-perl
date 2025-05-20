
package Paws::Bedrock::BatchDeleteEvaluationJob;
  use Moose;
  has JobIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'jobIdentifiers', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteEvaluationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/evaluation-jobs/batch-delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::BatchDeleteEvaluationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::BatchDeleteEvaluationJob - Arguments for method BatchDeleteEvaluationJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteEvaluationJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method BatchDeleteEvaluationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteEvaluationJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $BatchDeleteEvaluationJobResponse = $bedrock->BatchDeleteEvaluationJob(
      JobIdentifiers => [
        'MyEvaluationJobIdentifier', ...    # max: 1011
      ],

    );

    # Results:
    my $Errors         = $BatchDeleteEvaluationJobResponse->Errors;
    my $EvaluationJobs = $BatchDeleteEvaluationJobResponse->EvaluationJobs;

    # Returns a L<Paws::Bedrock::BatchDeleteEvaluationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/BatchDeleteEvaluationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobIdentifiers => ArrayRef[Str|Undef]

A list of one or more evaluation job Amazon Resource Names (ARNs) you
want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteEvaluationJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

