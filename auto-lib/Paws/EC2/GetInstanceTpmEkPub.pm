
package Paws::EC2::GetInstanceTpmEkPub;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has KeyFormat => (is => 'ro', isa => 'Str', required => 1);
  has KeyType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceTpmEkPub');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetInstanceTpmEkPubResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetInstanceTpmEkPub - Arguments for method GetInstanceTpmEkPub on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstanceTpmEkPub on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetInstanceTpmEkPub.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstanceTpmEkPub.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetInstanceTpmEkPubResult = $ec2->GetInstanceTpmEkPub(
      InstanceId => 'MyInstanceId',
      KeyFormat  => 'der',
      KeyType    => 'rsa-2048',
      DryRun     => 1,                # OPTIONAL
    );

    # Results:
    my $InstanceId = $GetInstanceTpmEkPubResult->InstanceId;
    my $KeyFormat  = $GetInstanceTpmEkPubResult->KeyFormat;
    my $KeyType    = $GetInstanceTpmEkPubResult->KeyType;
    my $KeyValue   = $GetInstanceTpmEkPubResult->KeyValue;

    # Returns a L<Paws::EC2::GetInstanceTpmEkPubResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetInstanceTpmEkPub>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Specify this parameter to verify whether the request will succeed,
without actually making the request. If the request will succeed, the
response is C<DryRunOperation>. Otherwise, the response is
C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance for which to get the public endorsement key.



=head2 B<REQUIRED> KeyFormat => Str

The required public endorsement key format. Specify C<der> for a
DER-encoded public key that is compatible with OpenSSL. Specify C<tpmt>
for a TPM 2.0 format that is compatible with tpm2-tools. The returned
key is base64 encoded.

Valid values are: C<"der">, C<"tpmt">

=head2 B<REQUIRED> KeyType => Str

The required public endorsement key type.

Valid values are: C<"rsa-2048">, C<"ecc-sec-p384">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstanceTpmEkPub in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

