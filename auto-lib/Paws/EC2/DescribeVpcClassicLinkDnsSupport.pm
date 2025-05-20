
package Paws::EC2::DescribeVpcClassicLinkDnsSupport;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has VpcIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcClassicLinkDnsSupport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVpcClassicLinkDnsSupportResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcClassicLinkDnsSupport - Arguments for method DescribeVpcClassicLinkDnsSupport on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVpcClassicLinkDnsSupport on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVpcClassicLinkDnsSupport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVpcClassicLinkDnsSupport.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeVpcClassicLinkDnsSupportResult =
      $ec2->DescribeVpcClassicLinkDnsSupport(
      MaxResults => 1,                                                # OPTIONAL
      NextToken  => 'MyDescribeVpcClassicLinkDnsSupportNextToken',    # OPTIONAL
      VpcIds     => [ 'MyVpcId', ... ],                               # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeVpcClassicLinkDnsSupportResult->NextToken;
    my $Vpcs      = $DescribeVpcClassicLinkDnsSupportResult->Vpcs;

    # Returns a L<Paws::EC2::DescribeVpcClassicLinkDnsSupportResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVpcClassicLinkDnsSupport>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 VpcIds => ArrayRef[Str|Undef]

The IDs of the VPCs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVpcClassicLinkDnsSupport in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

