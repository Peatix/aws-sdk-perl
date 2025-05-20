
package Paws::EC2::GetIpamResourceCidrs;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IpamPoolId => (is => 'ro', isa => 'Str');
  has IpamScopeId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceOwner => (is => 'ro', isa => 'Str');
  has ResourceTag => (is => 'ro', isa => 'Paws::EC2::RequestIpamResourceTag');
  has ResourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIpamResourceCidrs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetIpamResourceCidrsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamResourceCidrs - Arguments for method GetIpamResourceCidrs on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIpamResourceCidrs on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetIpamResourceCidrs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIpamResourceCidrs.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetIpamResourceCidrsResult = $ec2->GetIpamResourceCidrs(
      IpamScopeId => 'MyIpamScopeId',
      DryRun      => 1,                 # OPTIONAL
      Filters     => [
        {
          Name   => 'MyString',         # OPTIONAL
          Values => [
            'MyString', ...             # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      IpamPoolId    => 'MyIpamPoolId',    # OPTIONAL
      MaxResults    => 1,                 # OPTIONAL
      NextToken     => 'MyNextToken',     # OPTIONAL
      ResourceId    => 'MyString',        # OPTIONAL
      ResourceOwner => 'MyString',        # OPTIONAL
      ResourceTag   => {
        Key   => 'MyString',              # OPTIONAL
        Value => 'MyString',              # OPTIONAL
      },    # OPTIONAL
      ResourceType => 'vpc',    # OPTIONAL
    );

    # Results:
    my $IpamResourceCidrs = $GetIpamResourceCidrsResult->IpamResourceCidrs;
    my $NextToken         = $GetIpamResourceCidrsResult->NextToken;

    # Returns a L<Paws::EC2::GetIpamResourceCidrsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetIpamResourceCidrs>

=head1 ATTRIBUTES


=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters for the request. For more information about
filtering, see Filtering CLI output
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html).



=head2 IpamPoolId => Str

The ID of the IPAM pool that the resource is in.



=head2 B<REQUIRED> IpamScopeId => Str

The ID of the scope that the resource is in.



=head2 MaxResults => Int

The maximum number of results to return in the request.



=head2 NextToken => Str

The token for the next page of results.



=head2 ResourceId => Str

The ID of the resource.



=head2 ResourceOwner => Str

The ID of the Amazon Web Services account that owns the resource.



=head2 ResourceTag => L<Paws::EC2::RequestIpamResourceTag>

The resource tag.



=head2 ResourceType => Str

The resource type.

Valid values are: C<"vpc">, C<"subnet">, C<"eip">, C<"public-ipv4-pool">, C<"ipv6-pool">, C<"eni">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIpamResourceCidrs in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

