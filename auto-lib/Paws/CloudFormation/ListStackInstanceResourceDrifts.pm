
package Paws::CloudFormation::ListStackInstanceResourceDrifts;
  use Moose;
  has CallAs => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str', required => 1);
  has StackInstanceAccount => (is => 'ro', isa => 'Str', required => 1);
  has StackInstanceRegion => (is => 'ro', isa => 'Str', required => 1);
  has StackInstanceResourceDriftStatuses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackInstanceResourceDrifts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListStackInstanceResourceDriftsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackInstanceResourceDriftsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackInstanceResourceDrifts - Arguments for method ListStackInstanceResourceDrifts on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStackInstanceResourceDrifts on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListStackInstanceResourceDrifts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStackInstanceResourceDrifts.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListStackInstanceResourceDriftsOutput =
      $cloudformation->ListStackInstanceResourceDrifts(
      OperationId                        => 'MyClientRequestToken',
      StackInstanceAccount               => 'MyAccount',
      StackInstanceRegion                => 'MyRegion',
      StackSetName                       => 'MyStackSetNameOrId',
      CallAs                             => 'SELF',                   # OPTIONAL
      MaxResults                         => 1,                        # OPTIONAL
      NextToken                          => 'MyNextToken',            # OPTIONAL
      StackInstanceResourceDriftStatuses => [
        'IN_SYNC', ...    # values: IN_SYNC, MODIFIED, DELETED, NOT_CHECKED
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListStackInstanceResourceDriftsOutput->NextToken;
    my $Summaries = $ListStackInstanceResourceDriftsOutput->Summaries;

# Returns a L<Paws::CloudFormation::ListStackInstanceResourceDriftsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListStackInstanceResourceDrifts>

=head1 ATTRIBUTES


=head2 CallAs => Str

[Service-managed permissions] Specifies whether you are acting as an
account administrator in the organization's management account or as a
delegated administrator in a member account.

By default, C<SELF> is specified. Use C<SELF> for stack sets with
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

If the previous paginated request didn't return all of the remaining
results, the response object's C<NextToken> parameter value is set to a
token. To retrieve the next set of results, call this action again and
assign that token to the request object's C<NextToken> parameter. If
there are no remaining results, the previous response object's
C<NextToken> parameter is set to C<null>.



=head2 B<REQUIRED> OperationId => Str

The unique ID of the drift operation.



=head2 B<REQUIRED> StackInstanceAccount => Str

The name of the Amazon Web Services account that you want to list
resource drifts for.



=head2 B<REQUIRED> StackInstanceRegion => Str

The name of the Region where you want to list resource drifts.



=head2 StackInstanceResourceDriftStatuses => ArrayRef[Str|Undef]

The resource drift status of the stack instance.

=over

=item *

C<DELETED>: The resource differs from its expected template
configuration in that the resource has been deleted.

=item *

C<MODIFIED>: One or more resource properties differ from their expected
template values.

=item *

C<IN_SYNC>: The resource's actual configuration matches its expected
template configuration.

=item *

C<NOT_CHECKED>: CloudFormation doesn't currently return this value.

=back




=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to list drifted
resources for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStackInstanceResourceDrifts in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

