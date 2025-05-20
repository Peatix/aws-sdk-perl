
package Paws::EC2::GetVpnConnectionDeviceTypes;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetVpnConnectionDeviceTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetVpnConnectionDeviceTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetVpnConnectionDeviceTypes - Arguments for method GetVpnConnectionDeviceTypes on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVpnConnectionDeviceTypes on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetVpnConnectionDeviceTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVpnConnectionDeviceTypes.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetVpnConnectionDeviceTypesResult = $ec2->GetVpnConnectionDeviceTypes(
      DryRun     => 1,                # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetVpnConnectionDeviceTypesResult->NextToken;
    my $VpnConnectionDeviceTypes =
      $GetVpnConnectionDeviceTypesResult->VpnConnectionDeviceTypes;

    # Returns a L<Paws::EC2::GetVpnConnectionDeviceTypesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetVpnConnectionDeviceTypes>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 MaxResults => Int

The maximum number of results returned by
C<GetVpnConnectionDeviceTypes> in paginated output. When this parameter
is used, C<GetVpnConnectionDeviceTypes> only returns C<MaxResults>
results in a single page along with a C<NextToken> response element.
The remaining results of the initial request can be seen by sending
another C<GetVpnConnectionDeviceTypes> request with the returned
C<NextToken> value. This value can be between 200 and 1000. If this
parameter is not used, then C<GetVpnConnectionDeviceTypes> returns all
results.



=head2 NextToken => Str

The C<NextToken> value returned from a previous paginated
C<GetVpnConnectionDeviceTypes> request where C<MaxResults> was used and
the results exceeded the value of that parameter. Pagination continues
from the end of the previous results that returned the C<NextToken>
value. This value is null when there are no more results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVpnConnectionDeviceTypes in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

