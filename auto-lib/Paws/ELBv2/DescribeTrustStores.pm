
package Paws::ELBv2::DescribeTrustStores;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PageSize => (is => 'ro', isa => 'Int');
  has TrustStoreArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustStores');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DescribeTrustStoresOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTrustStoresResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTrustStores - Arguments for method DescribeTrustStores on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrustStores on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method DescribeTrustStores.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrustStores.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $DescribeTrustStoresOutput = $elasticloadbalancing->DescribeTrustStores(
      Marker => 'MyMarker',    # OPTIONAL
      Names  => [
        'MyTrustStoreName', ...    # min: 1, max: 32
      ],    # OPTIONAL
      PageSize       => 1,                             # OPTIONAL
      TrustStoreArns => [ 'MyTrustStoreArn', ... ],    # OPTIONAL
    );

    # Results:
    my $NextMarker  = $DescribeTrustStoresOutput->NextMarker;
    my $TrustStores = $DescribeTrustStoresOutput->TrustStores;

    # Returns a L<Paws::ELBv2::DescribeTrustStoresOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeTrustStores>

=head1 ATTRIBUTES


=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)



=head2 Names => ArrayRef[Str|Undef]

The names of the trust stores.



=head2 PageSize => Int

The maximum number of results to return with this call.



=head2 TrustStoreArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the trust store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrustStores in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

