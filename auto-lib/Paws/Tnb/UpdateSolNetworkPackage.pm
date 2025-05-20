
package Paws::Tnb::UpdateSolNetworkPackage;
  use Moose;
  has NsdInfoId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nsdInfoId', required => 1);
  has NsdOperationalState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdOperationalState', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSolNetworkPackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/nsd/v1/ns_descriptors/{nsdInfoId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::UpdateSolNetworkPackageOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::UpdateSolNetworkPackage - Arguments for method UpdateSolNetworkPackage on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSolNetworkPackage on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method UpdateSolNetworkPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSolNetworkPackage.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $UpdateSolNetworkPackageOutput = $tnb->UpdateSolNetworkPackage(
      NsdInfoId           => 'MyNsdInfoId',
      NsdOperationalState => 'ENABLED',

    );

    # Results:
    my $NsdOperationalState =
      $UpdateSolNetworkPackageOutput->NsdOperationalState;

    # Returns a L<Paws::Tnb::UpdateSolNetworkPackageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/UpdateSolNetworkPackage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NsdInfoId => Str

ID of the network service descriptor in the network package.



=head2 B<REQUIRED> NsdOperationalState => Str

Operational state of the network service descriptor in the network
package.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSolNetworkPackage in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

