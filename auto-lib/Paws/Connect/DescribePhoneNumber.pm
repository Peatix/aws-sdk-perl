
package Paws::Connect::DescribePhoneNumber;
  use Moose;
  has PhoneNumberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PhoneNumberId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePhoneNumber');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-number/{PhoneNumberId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DescribePhoneNumberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribePhoneNumber - Arguments for method DescribePhoneNumber on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePhoneNumber on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribePhoneNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePhoneNumber.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribePhoneNumberResponse = $connect->DescribePhoneNumber(
      PhoneNumberId => 'MyPhoneNumberId',

    );

    # Results:
    my $ClaimedPhoneNumberSummary =
      $DescribePhoneNumberResponse->ClaimedPhoneNumberSummary;

    # Returns a L<Paws::Connect::DescribePhoneNumberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribePhoneNumber>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PhoneNumberId => Str

A unique identifier for the phone number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePhoneNumber in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

