
package Paws::Transfer::DescribeProfile;
  use Moose;
  has ProfileId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::DescribeProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeProfile - Arguments for method DescribeProfile on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProfile on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method DescribeProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProfile.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $DescribeProfileResponse = $transfer->DescribeProfile(
      ProfileId => 'MyProfileId',

    );

    # Results:
    my $Profile = $DescribeProfileResponse->Profile;

    # Returns a L<Paws::Transfer::DescribeProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/DescribeProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileId => Str

The identifier of the profile that you want described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProfile in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

