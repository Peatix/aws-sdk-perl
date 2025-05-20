
package Paws::CloudFormation::ListHookResults;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TargetId => (is => 'ro', isa => 'Str', required => 1);
  has TargetType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHookResults');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListHookResultsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListHookResultsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListHookResults - Arguments for method ListHookResults on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHookResults on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListHookResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHookResults.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListHookResultsOutput = $cloudformation->ListHookResults(
      TargetId   => 'MyHookResultId',
      TargetType => 'CHANGE_SET',
      NextToken  => 'MyNextToken',      # OPTIONAL
    );

    # Results:
    my $HookResults = $ListHookResultsOutput->HookResults;
    my $NextToken   = $ListHookResultsOutput->NextToken;
    my $TargetId    = $ListHookResultsOutput->TargetId;
    my $TargetType  = $ListHookResultsOutput->TargetType;

    # Returns a L<Paws::CloudFormation::ListHookResultsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListHookResults>

=head1 ATTRIBUTES


=head2 NextToken => Str

A string that identifies the next page of events that you want to
retrieve.



=head2 B<REQUIRED> TargetId => Str

The logical ID of the target the operation is acting on by the Hook. If
the target is a change set, it's the ARN of the change set.

If the target is a Cloud Control API operation, this will be the
C<HookRequestToken> returned by the Cloud Control API operation
request. For more information on the C<HookRequestToken>, see
ProgressEvent
(https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_ProgressEvent.html).



=head2 B<REQUIRED> TargetType => Str

The type of operation being targeted by the Hook.

Valid values are: C<"CHANGE_SET">, C<"STACK">, C<"RESOURCE">, C<"CLOUD_CONTROL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHookResults in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

