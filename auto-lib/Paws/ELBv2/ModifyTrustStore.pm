
package Paws::ELBv2::ModifyTrustStore;
  use Moose;
  has CaCertificatesBundleS3Bucket => (is => 'ro', isa => 'Str', required => 1);
  has CaCertificatesBundleS3Key => (is => 'ro', isa => 'Str', required => 1);
  has CaCertificatesBundleS3ObjectVersion => (is => 'ro', isa => 'Str');
  has TrustStoreArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyTrustStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::ModifyTrustStoreOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyTrustStoreResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyTrustStore - Arguments for method ModifyTrustStore on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyTrustStore on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method ModifyTrustStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyTrustStore.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $ModifyTrustStoreOutput = $elasticloadbalancing->ModifyTrustStore(
      CaCertificatesBundleS3Bucket        => 'MyS3Bucket',
      CaCertificatesBundleS3Key           => 'MyS3Key',
      TrustStoreArn                       => 'MyTrustStoreArn',
      CaCertificatesBundleS3ObjectVersion => 'MyS3ObjectVersion',    # OPTIONAL
    );

    # Results:
    my $TrustStores = $ModifyTrustStoreOutput->TrustStores;

    # Returns a L<Paws::ELBv2::ModifyTrustStoreOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyTrustStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaCertificatesBundleS3Bucket => Str

The Amazon S3 bucket for the ca certificates bundle.



=head2 B<REQUIRED> CaCertificatesBundleS3Key => Str

The Amazon S3 path for the ca certificates bundle.



=head2 CaCertificatesBundleS3ObjectVersion => Str

The Amazon S3 object version for the ca certificates bundle. If
undefined the current version is used.



=head2 B<REQUIRED> TrustStoreArn => Str

The Amazon Resource Name (ARN) of the trust store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyTrustStore in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

