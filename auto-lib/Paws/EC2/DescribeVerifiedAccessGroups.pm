
package Paws::EC2::DescribeVerifiedAccessGroups;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VerifiedAccessGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'VerifiedAccessGroupId' );
  has VerifiedAccessInstanceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVerifiedAccessGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVerifiedAccessGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVerifiedAccessGroups - Arguments for method DescribeVerifiedAccessGroups on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVerifiedAccessGroups on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVerifiedAccessGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVerifiedAccessGroups.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeVerifiedAccessGroupsResult = $ec2->DescribeVerifiedAccessGroups(
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
      MaxResults               => 1,                                  # OPTIONAL
      NextToken                => 'MyNextToken',                      # OPTIONAL
      VerifiedAccessGroupIds   => [ 'MyVerifiedAccessGroupId', ... ], # OPTIONAL
      VerifiedAccessInstanceId => 'MyVerifiedAccessInstanceId',       # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeVerifiedAccessGroupsResult->NextToken;
    my $VerifiedAccessGroups =
      $DescribeVerifiedAccessGroupsResult->VerifiedAccessGroups;

    # Returns a L<Paws::EC2::DescribeVerifiedAccessGroupsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVerifiedAccessGroups>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. Filter names and values are case-sensitive.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 VerifiedAccessGroupIds => ArrayRef[Str|Undef]

The ID of the Verified Access groups.



=head2 VerifiedAccessInstanceId => Str

The ID of the Verified Access instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVerifiedAccessGroups in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

