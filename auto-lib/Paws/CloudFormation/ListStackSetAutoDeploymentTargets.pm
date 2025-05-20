
package Paws::CloudFormation::ListStackSetAutoDeploymentTargets;
  use Moose;
  has CallAs => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackSetAutoDeploymentTargets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListStackSetAutoDeploymentTargetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackSetAutoDeploymentTargetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackSetAutoDeploymentTargets - Arguments for method ListStackSetAutoDeploymentTargets on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStackSetAutoDeploymentTargets on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListStackSetAutoDeploymentTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStackSetAutoDeploymentTargets.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListStackSetAutoDeploymentTargetsOutput =
      $cloudformation->ListStackSetAutoDeploymentTargets(
      StackSetName => 'MyStackSetNameOrId',
      CallAs       => 'SELF',                 # OPTIONAL
      MaxResults   => 1,                      # OPTIONAL
      NextToken    => 'MyNextToken',          # OPTIONAL
      );

    # Results:
    my $NextToken = $ListStackSetAutoDeploymentTargetsOutput->NextToken;
    my $Summaries = $ListStackSetAutoDeploymentTargetsOutput->Summaries;

# Returns a L<Paws::CloudFormation::ListStackSetAutoDeploymentTargetsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListStackSetAutoDeploymentTargets>

=head1 ATTRIBUTES


=head2 CallAs => Str

Specifies whether you are acting as an account administrator in the
organization's management account or as a delegated administrator in a
member account.

By default, C<SELF> is specified. Use C<SELF> for StackSets with
self-managed permissions.

=over

=item *

If you are signed in to the management account, specify C<SELF>.

=item *

If you are signed in to a delegated administrator account, specify
C<DELEGATED_ADMIN>.

Your Amazon Web Services account must be registered as a delegated
administrator in the management account. For more information, see
Register a delegated administrator
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html)
in the I<CloudFormation User Guide>.

=back


Valid values are: C<"SELF">, C<"DELEGATED_ADMIN">

=head2 MaxResults => Int

The maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

A string that identifies the next page of stack set deployment targets
that you want to retrieve.



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to get automatic
deployment targets for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStackSetAutoDeploymentTargets in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

