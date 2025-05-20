
package Paws::Transfer::DescribeSecurityPolicy;
  use Moose;
  has SecurityPolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::DescribeSecurityPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeSecurityPolicy - Arguments for method DescribeSecurityPolicy on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSecurityPolicy on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method DescribeSecurityPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSecurityPolicy.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $DescribeSecurityPolicyResponse = $transfer->DescribeSecurityPolicy(
      SecurityPolicyName => 'MySecurityPolicyName',

    );

    # Results:
    my $SecurityPolicy = $DescribeSecurityPolicyResponse->SecurityPolicy;

    # Returns a L<Paws::Transfer::DescribeSecurityPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/DescribeSecurityPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityPolicyName => Str

Specify the text name of the security policy for which you want the
details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSecurityPolicy in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

