
package Paws::CloudFormation::DescribeStackRefactor;
  use Moose;
  has StackRefactorId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackRefactor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeStackRefactorOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackRefactorResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackRefactor - Arguments for method DescribeStackRefactor on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStackRefactor on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeStackRefactor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStackRefactor.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeStackRefactorOutput = $cloudformation->DescribeStackRefactor(
      StackRefactorId => 'MyStackRefactorId',

    );

    # Results:
    my $Description     = $DescribeStackRefactorOutput->Description;
    my $ExecutionStatus = $DescribeStackRefactorOutput->ExecutionStatus;
    my $ExecutionStatusReason =
      $DescribeStackRefactorOutput->ExecutionStatusReason;
    my $StackIds        = $DescribeStackRefactorOutput->StackIds;
    my $StackRefactorId = $DescribeStackRefactorOutput->StackRefactorId;
    my $Status          = $DescribeStackRefactorOutput->Status;
    my $StatusReason    = $DescribeStackRefactorOutput->StatusReason;

    # Returns a L<Paws::CloudFormation::DescribeStackRefactorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeStackRefactor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StackRefactorId => Str

The ID associated with the stack refactor created from the
CreateStackRefactor action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStackRefactor in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

