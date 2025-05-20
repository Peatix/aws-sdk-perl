
package Paws::EC2::DescribeMacHosts;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has HostIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'HostId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMacHosts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeMacHostsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeMacHosts - Arguments for method DescribeMacHosts on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMacHosts on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeMacHosts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMacHosts.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeMacHostsResult = $ec2->DescribeMacHosts(
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      HostIds    => [ 'MyDedicatedHostId', ... ],    # OPTIONAL
      MaxResults => 1,                               # OPTIONAL
      NextToken  => 'MyString',                      # OPTIONAL
    );

    # Results:
    my $MacHosts  = $DescribeMacHostsResult->MacHosts;
    my $NextToken = $DescribeMacHostsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeMacHostsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeMacHosts>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<availability-zone> - The Availability Zone of the EC2 Mac Dedicated
Host.

=item *

C<instance-type> - The instance type size that the EC2 Mac Dedicated
Host is configured to support.

=back




=head2 HostIds => ArrayRef[Str|Undef]

The IDs of the EC2 Mac Dedicated Hosts.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the returned C<nextToken> value. This value can be between 5 and 500.
If C<maxResults> is given a larger value than 500, you receive an
error.



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMacHosts in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

