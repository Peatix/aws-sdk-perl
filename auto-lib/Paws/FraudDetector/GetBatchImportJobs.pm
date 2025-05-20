
package Paws::FraudDetector::GetBatchImportJobs;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBatchImportJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::GetBatchImportJobsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetBatchImportJobs - Arguments for method GetBatchImportJobs on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBatchImportJobs on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method GetBatchImportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBatchImportJobs.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $GetBatchImportJobsResult = $frauddetector->GetBatchImportJobs(
      JobId      => 'Myidentifier',    # OPTIONAL
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'Mystring',        # OPTIONAL
    );

    # Results:
    my $BatchImports = $GetBatchImportJobsResult->BatchImports;
    my $NextToken    = $GetBatchImportJobsResult->NextToken;

    # Returns a L<Paws::FraudDetector::GetBatchImportJobsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/GetBatchImportJobs>

=head1 ATTRIBUTES


=head2 JobId => Str

The ID of the batch import job to get.



=head2 MaxResults => Int

The maximum number of objects to return for request.



=head2 NextToken => Str

The next token from the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBatchImportJobs in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

