
package Paws::EC2::DescribeServiceLinkVirtualInterfaces;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceLinkVirtualInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ServiceLinkVirtualInterfaceId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceLinkVirtualInterfaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeServiceLinkVirtualInterfacesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeServiceLinkVirtualInterfaces - Arguments for method DescribeServiceLinkVirtualInterfaces on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServiceLinkVirtualInterfaces on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeServiceLinkVirtualInterfaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServiceLinkVirtualInterfaces.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeServiceLinkVirtualInterfacesResult =
      $ec2->DescribeServiceLinkVirtualInterfaces(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults                     => 1,             # OPTIONAL
      NextToken                      => 'MyString',    # OPTIONAL
      ServiceLinkVirtualInterfaceIds =>
        [ 'MyServiceLinkVirtualInterfaceId', ... ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeServiceLinkVirtualInterfacesResult->NextToken;
    my $ServiceLinkVirtualInterfaces =
      $DescribeServiceLinkVirtualInterfacesResult->ServiceLinkVirtualInterfaces;

    # Returns a L<Paws::EC2::DescribeServiceLinkVirtualInterfacesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeServiceLinkVirtualInterfaces>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters to use for narrowing down the request. The following
filters are supported:

=over

=item *

C<outpost-lag-id> - The ID of the Outpost LAG.

=item *

C<outpost-arn> - The Outpost ARN.

=item *

C<owner-id> - The ID of the Amazon Web Services account that owns the
service link virtual interface.

=item *

C<state> - The state of the Outpost LAG.

=item *

C<vlan> - The ID of the address pool.

=item *

C<service-link-virtual-interface-id> - The ID of the service link
virtual interface.

=item *

C<local-gateway-virtual-interface-id> - The ID of the local gateway
virtual interface.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 ServiceLinkVirtualInterfaceIds => ArrayRef[Str|Undef]

The IDs of the service link virtual interfaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServiceLinkVirtualInterfaces in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

