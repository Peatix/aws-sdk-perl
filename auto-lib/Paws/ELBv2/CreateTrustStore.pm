
package Paws::ELBv2::CreateTrustStore;
  use Moose;
  has CaCertificatesBundleS3Bucket => (is => 'ro', isa => 'Str', required => 1);
  has CaCertificatesBundleS3Key => (is => 'ro', isa => 'Str', required => 1);
  has CaCertificatesBundleS3ObjectVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrustStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::CreateTrustStoreOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTrustStoreResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateTrustStore - Arguments for method CreateTrustStore on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrustStore on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method CreateTrustStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrustStore.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $CreateTrustStoreOutput = $elasticloadbalancing->CreateTrustStore(
      CaCertificatesBundleS3Bucket        => 'MyS3Bucket',
      CaCertificatesBundleS3Key           => 'MyS3Key',
      Name                                => 'MyTrustStoreName',
      CaCertificatesBundleS3ObjectVersion => 'MyS3ObjectVersion',    # OPTIONAL
      Tags                                => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $TrustStores = $CreateTrustStoreOutput->TrustStores;

    # Returns a L<Paws::ELBv2::CreateTrustStoreOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/CreateTrustStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaCertificatesBundleS3Bucket => Str

The Amazon S3 bucket for the ca certificates bundle.



=head2 B<REQUIRED> CaCertificatesBundleS3Key => Str

The Amazon S3 path for the ca certificates bundle.



=head2 CaCertificatesBundleS3ObjectVersion => Str

The Amazon S3 object version for the ca certificates bundle. If
undefined the current version is used.



=head2 B<REQUIRED> Name => Str

The name of the trust store.

This name must be unique per region and can't be changed after
creation.



=head2 Tags => ArrayRef[L<Paws::ELBv2::Tag>]

The tags to assign to the trust store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrustStore in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

