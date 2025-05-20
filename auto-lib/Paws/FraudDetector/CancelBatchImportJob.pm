
package Paws::FraudDetector::CancelBatchImportJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelBatchImportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::CancelBatchImportJobResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::CancelBatchImportJob - Arguments for method CancelBatchImportJob on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelBatchImportJob on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method CancelBatchImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelBatchImportJob.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $CancelBatchImportJobResult = $frauddetector->CancelBatchImportJob(
      JobId => 'Myidentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/CancelBatchImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID of an in-progress batch import job to cancel.

Amazon Fraud Detector will throw an error if the batch import job is in
C<FAILED>, C<CANCELED>, or C<COMPLETED> state.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelBatchImportJob in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

