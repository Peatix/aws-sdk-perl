
package Paws::SageMaker::ListClusterNodes;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has InstanceGroupNameContains => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusterNodes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListClusterNodesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListClusterNodes - Arguments for method ListClusterNodes on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClusterNodes on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListClusterNodes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClusterNodes.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListClusterNodesResponse = $api . sagemaker->ListClusterNodes(
      ClusterName               => 'MyClusterNameOrArn',
      CreationTimeAfter         => '1970-01-01T01:00:00',           # OPTIONAL
      CreationTimeBefore        => '1970-01-01T01:00:00',           # OPTIONAL
      InstanceGroupNameContains => 'MyClusterInstanceGroupName',    # OPTIONAL
      MaxResults                => 1,                               # OPTIONAL
      NextToken                 => 'MyNextToken',                   # OPTIONAL
      SortBy                    => 'CREATION_TIME',                 # OPTIONAL
      SortOrder                 => 'Ascending',                     # OPTIONAL
    );

    # Results:
    my $ClusterNodeSummaries = $ListClusterNodesResponse->ClusterNodeSummaries;
    my $NextToken            = $ListClusterNodesResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListClusterNodesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListClusterNodes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The string name or the Amazon Resource Name (ARN) of the SageMaker
HyperPod cluster in which you want to retrieve the list of nodes.



=head2 CreationTimeAfter => Str

A filter that returns nodes in a SageMaker HyperPod cluster created
after the specified time. Timestamps are formatted according to the ISO
8601 standard.

Acceptable formats include:

=over

=item *

C<YYYY-MM-DDThh:mm:ss.sssTZD> (UTC), for example,
C<2014-10-01T20:30:00.000Z>

=item *

C<YYYY-MM-DDThh:mm:ss.sssTZD> (with offset), for example,
C<2014-10-01T12:30:00.000-08:00>

=item *

C<YYYY-MM-DD>, for example, C<2014-10-01>

=item *

Unix time in seconds, for example, C<1412195400>. This is also referred
to as Unix Epoch time and represents the number of seconds since
midnight, January 1, 1970 UTC.

=back

For more information about the timestamp format, see Timestamp
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp)
in the I<Amazon Web Services Command Line Interface User Guide>.



=head2 CreationTimeBefore => Str

A filter that returns nodes in a SageMaker HyperPod cluster created
before the specified time. The acceptable formats are the same as the
timestamp formats for C<CreationTimeAfter>. For more information about
the timestamp format, see Timestamp
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp)
in the I<Amazon Web Services Command Line Interface User Guide>.



=head2 InstanceGroupNameContains => Str

A filter that returns the instance groups whose name contain a
specified string.



=head2 MaxResults => Int

The maximum number of nodes to return in the response.



=head2 NextToken => Str

If the result of the previous C<ListClusterNodes> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of cluster nodes, use the token in the next request.



=head2 SortBy => Str

The field by which to sort results. The default value is
C<CREATION_TIME>.

Valid values are: C<"CREATION_TIME">, C<"NAME">

=head2 SortOrder => Str

The sort order for results. The default value is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClusterNodes in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

