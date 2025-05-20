
package Paws::EC2::GetIpamPoolAllocations;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IpamPoolAllocationId => (is => 'ro', isa => 'Str');
  has IpamPoolId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIpamPoolAllocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetIpamPoolAllocationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamPoolAllocations - Arguments for method GetIpamPoolAllocations on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIpamPoolAllocations on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetIpamPoolAllocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIpamPoolAllocations.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetIpamPoolAllocationsResult = $ec2->GetIpamPoolAllocations(
      IpamPoolId => 'MyIpamPoolId',
      DryRun     => 1,                # OPTIONAL
      Filters    => [
        {
          Name   => 'MyString',       # OPTIONAL
          Values => [
            'MyString', ...           # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      IpamPoolAllocationId => 'MyIpamPoolAllocationId',    # OPTIONAL
      MaxResults           => 1,                           # OPTIONAL
      NextToken            => 'MyNextToken',               # OPTIONAL
    );

    # Results:
    my $IpamPoolAllocations =
      $GetIpamPoolAllocationsResult->IpamPoolAllocations;
    my $NextToken = $GetIpamPoolAllocationsResult->NextToken;

    # Returns a L<Paws::EC2::GetIpamPoolAllocationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetIpamPoolAllocations>

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



=head2 IpamPoolAllocationId => Str

The ID of the allocation.



=head2 B<REQUIRED> IpamPoolId => Str

The ID of the IPAM pool you want to see the allocations for.



=head2 MaxResults => Int

The maximum number of results you would like returned per page.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIpamPoolAllocations in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

