
package Paws::CloudFormation::DescribeChangeSetHooks;
  use Moose;
  has ChangeSetName => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChangeSetHooks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeChangeSetHooksOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeChangeSetHooksResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeChangeSetHooks - Arguments for method DescribeChangeSetHooks on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChangeSetHooks on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeChangeSetHooks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChangeSetHooks.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeChangeSetHooksOutput = $cloudformation->DescribeChangeSetHooks(
      ChangeSetName     => 'MyChangeSetNameOrId',
      LogicalResourceId => 'MyLogicalResourceId',    # OPTIONAL
      NextToken         => 'MyNextToken',            # OPTIONAL
      StackName         => 'MyStackNameOrId',        # OPTIONAL
    );

    # Results:
    my $ChangeSetId   = $DescribeChangeSetHooksOutput->ChangeSetId;
    my $ChangeSetName = $DescribeChangeSetHooksOutput->ChangeSetName;
    my $Hooks         = $DescribeChangeSetHooksOutput->Hooks;
    my $NextToken     = $DescribeChangeSetHooksOutput->NextToken;
    my $StackId       = $DescribeChangeSetHooksOutput->StackId;
    my $StackName     = $DescribeChangeSetHooksOutput->StackName;
    my $Status        = $DescribeChangeSetHooksOutput->Status;

    # Returns a L<Paws::CloudFormation::DescribeChangeSetHooksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeChangeSetHooks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeSetName => Str

The name or Amazon Resource Name (ARN) of the change set that you want
to describe.



=head2 LogicalResourceId => Str

If specified, lists only the Hooks related to the specified
C<LogicalResourceId>.



=head2 NextToken => Str

A string, provided by the C<DescribeChangeSetHooks> response output,
that identifies the next page of information that you want to retrieve.



=head2 StackName => Str

If you specified the name of a change set, specify the stack name or
stack ID (ARN) of the change set you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChangeSetHooks in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

