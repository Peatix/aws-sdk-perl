
package Paws::StepFunctions::DescribeMapRun;
  use Moose;
  has MapRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mapRunArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMapRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::DescribeMapRunOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeMapRun - Arguments for method DescribeMapRun on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMapRun on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method DescribeMapRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMapRun.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $DescribeMapRunOutput = $states->DescribeMapRun(
      MapRunArn => 'MyLongArn',

    );

    # Results:
    my $ExecutionArn          = $DescribeMapRunOutput->ExecutionArn;
    my $ExecutionCounts       = $DescribeMapRunOutput->ExecutionCounts;
    my $ItemCounts            = $DescribeMapRunOutput->ItemCounts;
    my $MapRunArn             = $DescribeMapRunOutput->MapRunArn;
    my $MaxConcurrency        = $DescribeMapRunOutput->MaxConcurrency;
    my $RedriveCount          = $DescribeMapRunOutput->RedriveCount;
    my $RedriveDate           = $DescribeMapRunOutput->RedriveDate;
    my $StartDate             = $DescribeMapRunOutput->StartDate;
    my $Status                = $DescribeMapRunOutput->Status;
    my $StopDate              = $DescribeMapRunOutput->StopDate;
    my $ToleratedFailureCount = $DescribeMapRunOutput->ToleratedFailureCount;
    my $ToleratedFailurePercentage =
      $DescribeMapRunOutput->ToleratedFailurePercentage;

    # Returns a L<Paws::StepFunctions::DescribeMapRunOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MapRunArn => Str

The Amazon Resource Name (ARN) that identifies a Map Run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMapRun in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

