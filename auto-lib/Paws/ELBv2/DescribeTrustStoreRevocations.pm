
package Paws::ELBv2::DescribeTrustStoreRevocations;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');
  has RevocationIds => (is => 'ro', isa => 'ArrayRef[Int]');
  has TrustStoreArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustStoreRevocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DescribeTrustStoreRevocationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTrustStoreRevocationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTrustStoreRevocations - Arguments for method DescribeTrustStoreRevocations on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrustStoreRevocations on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method DescribeTrustStoreRevocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrustStoreRevocations.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $DescribeTrustStoreRevocationsOutput =
      $elasticloadbalancing->DescribeTrustStoreRevocations(
      TrustStoreArn => 'MyTrustStoreArn',
      Marker        => 'MyMarker',          # OPTIONAL
      PageSize      => 1,                   # OPTIONAL
      RevocationIds => [ 1, ... ],          # OPTIONAL
      );

    # Results:
    my $NextMarker = $DescribeTrustStoreRevocationsOutput->NextMarker;
    my $TrustStoreRevocations =
      $DescribeTrustStoreRevocationsOutput->TrustStoreRevocations;

    # Returns a L<Paws::ELBv2::DescribeTrustStoreRevocationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeTrustStoreRevocations>

=head1 ATTRIBUTES


=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)



=head2 PageSize => Int

The maximum number of results to return with this call.



=head2 RevocationIds => ArrayRef[Int]

The revocation IDs of the revocation files you want to describe.



=head2 B<REQUIRED> TrustStoreArn => Str

The Amazon Resource Name (ARN) of the trust store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrustStoreRevocations in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

