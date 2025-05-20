
package Paws::CloudHSMv2::GetResourcePolicy;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::GetResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::GetResourcePolicy - Arguments for method GetResourcePolicy on L<Paws::CloudHSMv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourcePolicy on the
L<AWS CloudHSM V2|Paws::CloudHSMv2> service. Use the attributes of this class
as arguments to method GetResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourcePolicy.

=head1 SYNOPSIS

    my $cloudhsmv2 = Paws->service('CloudHSMv2');
    my $GetResourcePolicyResponse = $cloudhsmv2->GetResourcePolicy(
      ResourceArn => 'MyCloudHsmArn',    # OPTIONAL
    );

    # Results:
    my $Policy = $GetResourcePolicyResponse->Policy;

    # Returns a L<Paws::CloudHSMv2::GetResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2/GetResourcePolicy>

=head1 ATTRIBUTES


=head2 ResourceArn => Str

Amazon Resource Name (ARN) of the resource to which a policy is
attached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourcePolicy in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

