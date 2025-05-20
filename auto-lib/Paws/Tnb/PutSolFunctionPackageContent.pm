
package Paws::Tnb::PutSolFunctionPackageContent;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has File => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'file', required => 1);
  has VnfPkgId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vnfPkgId', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'File');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSolFunctionPackageContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::PutSolFunctionPackageContentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::PutSolFunctionPackageContent - Arguments for method PutSolFunctionPackageContent on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSolFunctionPackageContent on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method PutSolFunctionPackageContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSolFunctionPackageContent.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $PutSolFunctionPackageContentOutput = $tnb->PutSolFunctionPackageContent(
      File        => 'BlobSensitiveBlob',
      VnfPkgId    => 'MyVnfPkgId',
      ContentType => 'application/zip',     # OPTIONAL
    );

    # Results:
    my $Id             = $PutSolFunctionPackageContentOutput->Id;
    my $Metadata       = $PutSolFunctionPackageContentOutput->Metadata;
    my $VnfProductName = $PutSolFunctionPackageContentOutput->VnfProductName;
    my $VnfProvider    = $PutSolFunctionPackageContentOutput->VnfProvider;
    my $VnfdId         = $PutSolFunctionPackageContentOutput->VnfdId;
    my $VnfdVersion    = $PutSolFunctionPackageContentOutput->VnfdVersion;

    # Returns a L<Paws::Tnb::PutSolFunctionPackageContentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/PutSolFunctionPackageContent>

=head1 ATTRIBUTES


=head2 ContentType => Str

Function package content type.

Valid values are: C<"application/zip">

=head2 B<REQUIRED> File => Str

Function package file.



=head2 B<REQUIRED> VnfPkgId => Str

Function package ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSolFunctionPackageContent in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

