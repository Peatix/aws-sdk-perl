
package Paws::Tnb::GetSolNetworkPackageDescriptor;
  use Moose;
  has NsdInfoId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nsdInfoId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSolNetworkPackageDescriptor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::GetSolNetworkPackageDescriptorOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolNetworkPackageDescriptor - Arguments for method GetSolNetworkPackageDescriptor on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSolNetworkPackageDescriptor on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method GetSolNetworkPackageDescriptor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSolNetworkPackageDescriptor.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $GetSolNetworkPackageDescriptorOutput =
      $tnb->GetSolNetworkPackageDescriptor(
      NsdInfoId => 'MyNsdInfoId',

      );

    # Results:
    my $ContentType = $GetSolNetworkPackageDescriptorOutput->ContentType;
    my $Nsd         = $GetSolNetworkPackageDescriptorOutput->Nsd;

    # Returns a L<Paws::Tnb::GetSolNetworkPackageDescriptorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/GetSolNetworkPackageDescriptor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NsdInfoId => Str

ID of the network service descriptor in the network package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSolNetworkPackageDescriptor in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

