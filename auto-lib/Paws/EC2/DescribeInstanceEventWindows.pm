
package Paws::EC2::DescribeInstanceEventWindows;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InstanceEventWindowIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'InstanceEventWindowId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceEventWindows');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeInstanceEventWindowsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceEventWindows - Arguments for method DescribeInstanceEventWindows on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceEventWindows on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeInstanceEventWindows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceEventWindows.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeInstanceEventWindowsResult = $ec2->DescribeInstanceEventWindows(
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
      InstanceEventWindowIds => [ 'MyInstanceEventWindowId', ... ],   # OPTIONAL
      MaxResults             => 1,                                    # OPTIONAL
      NextToken              => 'MyString',                           # OPTIONAL
    );

    # Results:
    my $InstanceEventWindows =
      $DescribeInstanceEventWindowsResult->InstanceEventWindows;
    my $NextToken = $DescribeInstanceEventWindowsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeInstanceEventWindowsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeInstanceEventWindows>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<dedicated-host-id> - The event windows associated with the specified
Dedicated Host ID.

=item *

C<event-window-name> - The event windows associated with the specified
names.

=item *

C<instance-id> - The event windows associated with the specified
instance ID.

=item *

C<instance-tag> - The event windows associated with the specified tag
and value.

=item *

C<instance-tag-key> - The event windows associated with the specified
tag key, regardless of the value.

=item *

C<instance-tag-value> - The event windows associated with the specified
tag value, regardless of the key.

=item *

C<tag:E<lt>keyE<gt>> - The key/value combination of a tag assigned to
the event window. Use the tag key in the filter name and the tag value
as the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<CMX>, specify C<tag:Owner> for
the filter name and C<CMX> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the event window. Use this
filter to find all event windows that have a tag with a specific key,
regardless of the tag value.

=item *

C<tag-value> - The value of a tag assigned to the event window. Use
this filter to find all event windows that have a tag with a specific
value, regardless of the tag key.

=back




=head2 InstanceEventWindowIds => ArrayRef[Str|Undef]

The IDs of the event windows.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value. This value can be between 20 and 500. You cannot specify this
parameter and the event window IDs parameter in the same call.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceEventWindows in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

