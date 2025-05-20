
package Paws::EC2::GetSubnetCidrReservations;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubnetCidrReservations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetSubnetCidrReservationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetSubnetCidrReservations - Arguments for method GetSubnetCidrReservations on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSubnetCidrReservations on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetSubnetCidrReservations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSubnetCidrReservations.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetSubnetCidrReservationsResult = $ec2->GetSubnetCidrReservations(
      SubnetId => 'MySubnetId',
      DryRun   => 1,              # OPTIONAL
      Filters  => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetSubnetCidrReservationsResult->NextToken;
    my $SubnetIpv4CidrReservations =
      $GetSubnetCidrReservationsResult->SubnetIpv4CidrReservations;
    my $SubnetIpv6CidrReservations =
      $GetSubnetCidrReservationsResult->SubnetIpv6CidrReservations;

    # Returns a L<Paws::EC2::GetSubnetCidrReservationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetSubnetCidrReservations>

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

C<reservationType> - The type of reservation (C<prefix> | C<explicit>).

=item *

C<subnet-id> - The ID of the subnet.

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 B<REQUIRED> SubnetId => Str

The ID of the subnet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSubnetCidrReservations in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

