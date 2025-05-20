
package Paws::SNS::GetDataProtectionPolicy;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataProtectionPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::GetDataProtectionPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetDataProtectionPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetDataProtectionPolicy - Arguments for method GetDataProtectionPolicy on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataProtectionPolicy on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method GetDataProtectionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataProtectionPolicy.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $GetDataProtectionPolicyResponse = $sns->GetDataProtectionPolicy(
      ResourceArn => 'MytopicARN',

    );

    # Results:
    my $DataProtectionPolicy =
      $GetDataProtectionPolicyResponse->DataProtectionPolicy;

    # Returns a L<Paws::SNS::GetDataProtectionPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/GetDataProtectionPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the topic whose C<DataProtectionPolicy> you want to get.

For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the Amazon Web Services General Reference.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataProtectionPolicy in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

