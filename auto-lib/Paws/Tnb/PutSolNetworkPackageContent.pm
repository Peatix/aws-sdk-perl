
package Paws::Tnb::PutSolNetworkPackageContent;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has File => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'file', required => 1);
  has NsdInfoId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nsdInfoId', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'File');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSolNetworkPackageContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::PutSolNetworkPackageContentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::PutSolNetworkPackageContent - Arguments for method PutSolNetworkPackageContent on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSolNetworkPackageContent on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method PutSolNetworkPackageContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSolNetworkPackageContent.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $PutSolNetworkPackageContentOutput = $tnb->PutSolNetworkPackageContent(
      File        => 'BlobSensitiveBlob',
      NsdInfoId   => 'MyNsdInfoId',
      ContentType => 'application/zip',     # OPTIONAL
    );

    # Results:
    my $Arn        = $PutSolNetworkPackageContentOutput->Arn;
    my $Id         = $PutSolNetworkPackageContentOutput->Id;
    my $Metadata   = $PutSolNetworkPackageContentOutput->Metadata;
    my $NsdId      = $PutSolNetworkPackageContentOutput->NsdId;
    my $NsdName    = $PutSolNetworkPackageContentOutput->NsdName;
    my $NsdVersion = $PutSolNetworkPackageContentOutput->NsdVersion;
    my $VnfPkgIds  = $PutSolNetworkPackageContentOutput->VnfPkgIds;

    # Returns a L<Paws::Tnb::PutSolNetworkPackageContentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/PutSolNetworkPackageContent>

=head1 ATTRIBUTES


=head2 ContentType => Str

Network package content type.

Valid values are: C<"application/zip">

=head2 B<REQUIRED> File => Str

Network package file.



=head2 B<REQUIRED> NsdInfoId => Str

Network service descriptor info ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSolNetworkPackageContent in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

