
package Paws::PaymentCryptography::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PaymentCryptography::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PaymentCryptography::TagResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::TagResource - Arguments for method TagResource on L<Paws::PaymentCryptography>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Payment Cryptography Control Plane|Paws::PaymentCryptography> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $controlplane.payment-cryptography = Paws->service('PaymentCryptography');
    my $TagResourceOutput = $controlplane . payment-cryptography->TagResource(
      ResourceArn => 'MyResourceArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlplane.payment-cryptography/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The C<KeyARN> of the key whose tags are being updated.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::PaymentCryptography::Tag>]

One or more tags. Each tag consists of a tag key and a tag value. The
tag value can be an empty (null) string. You can't have more than one
tag on an Amazon Web Services Payment Cryptography key with the same
tag key. If you specify an existing tag key with a different tag value,
Amazon Web Services Payment Cryptography replaces the current tag value
with the new one.

Don't include personal, confidential or sensitive information in this
field. This field may be displayed in plaintext in CloudTrail logs and
other output.

To use this parameter, you must have TagResource
(https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html)
permission in an IAM policy.

Don't include personal, confidential or sensitive information in this
field. This field may be displayed in plaintext in CloudTrail logs and
other output.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::PaymentCryptography>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

