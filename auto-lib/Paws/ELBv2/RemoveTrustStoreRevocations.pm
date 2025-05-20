
package Paws::ELBv2::RemoveTrustStoreRevocations;
  use Moose;
  has RevocationIds => (is => 'ro', isa => 'ArrayRef[Int]', required => 1);
  has TrustStoreArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTrustStoreRevocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::RemoveTrustStoreRevocationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveTrustStoreRevocationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::RemoveTrustStoreRevocations - Arguments for method RemoveTrustStoreRevocations on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTrustStoreRevocations on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method RemoveTrustStoreRevocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTrustStoreRevocations.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $RemoveTrustStoreRevocationsOutput =
      $elasticloadbalancing->RemoveTrustStoreRevocations(
      RevocationIds => [ 1, ... ],
      TrustStoreArn => 'MyTrustStoreArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/RemoveTrustStoreRevocations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RevocationIds => ArrayRef[Int]

The revocation IDs of the revocation files you want to remove.



=head2 B<REQUIRED> TrustStoreArn => Str

The Amazon Resource Name (ARN) of the trust store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTrustStoreRevocations in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

