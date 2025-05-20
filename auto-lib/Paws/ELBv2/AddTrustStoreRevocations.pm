
package Paws::ELBv2::AddTrustStoreRevocations;
  use Moose;
  has RevocationContents => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::RevocationContent]');
  has TrustStoreArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTrustStoreRevocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::AddTrustStoreRevocationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AddTrustStoreRevocationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::AddTrustStoreRevocations - Arguments for method AddTrustStoreRevocations on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTrustStoreRevocations on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method AddTrustStoreRevocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTrustStoreRevocations.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $AddTrustStoreRevocationsOutput =
      $elasticloadbalancing->AddTrustStoreRevocations(
      TrustStoreArn      => 'MyTrustStoreArn',
      RevocationContents => [
        {
          RevocationType  => 'CRL',                  # values: CRL; OPTIONAL
          S3Bucket        => 'MyS3Bucket',           # OPTIONAL
          S3Key           => 'MyS3Key',              # OPTIONAL
          S3ObjectVersion => 'MyS3ObjectVersion',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $TrustStoreRevocations =
      $AddTrustStoreRevocationsOutput->TrustStoreRevocations;

    # Returns a L<Paws::ELBv2::AddTrustStoreRevocationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/AddTrustStoreRevocations>

=head1 ATTRIBUTES


=head2 RevocationContents => ArrayRef[L<Paws::ELBv2::RevocationContent>]

The revocation file to add.



=head2 B<REQUIRED> TrustStoreArn => Str

The Amazon Resource Name (ARN) of the trust store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTrustStoreRevocations in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

