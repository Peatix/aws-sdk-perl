
package Paws::CodeArtifact::PublishPackageVersion;
  use Moose;
  has AssetContent => (is => 'ro', isa => 'Str', traits => ['ParamInBody'], required => 1);
  has AssetName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'asset', required => 1);
  has AssetSHA256 => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-content-sha256', required => 1);
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has Package => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package', required => 1);
  has PackageVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);
  has Unfinished => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'unfinished');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'AssetContent');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PublishPackageVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package/version/publish');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::PublishPackageVersionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::PublishPackageVersion - Arguments for method PublishPackageVersion on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PublishPackageVersion on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method PublishPackageVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PublishPackageVersion.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $PublishPackageVersionResult = $codeartifact->PublishPackageVersion(
      AssetContent   => 'BlobAsset',
      AssetName      => 'MyAssetName',
      AssetSHA256    => 'MySHA256',
      Domain         => 'MyDomainName',
      Format         => 'npm',
      Package        => 'MyPackageName',
      PackageVersion => 'MyPackageVersion',
      Repository     => 'MyRepositoryName',
      DomainOwner    => 'MyAccountId',           # OPTIONAL
      Namespace      => 'MyPackageNamespace',    # OPTIONAL
      Unfinished     => 1,                       # OPTIONAL
    );

    # Results:
    my $Asset           = $PublishPackageVersionResult->Asset;
    my $Format          = $PublishPackageVersionResult->Format;
    my $Namespace       = $PublishPackageVersionResult->Namespace;
    my $Package         = $PublishPackageVersionResult->Package;
    my $Status          = $PublishPackageVersionResult->Status;
    my $Version         = $PublishPackageVersionResult->Version;
    my $VersionRevision = $PublishPackageVersionResult->VersionRevision;

    # Returns a L<Paws::CodeArtifact::PublishPackageVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/PublishPackageVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetContent => Str

The content of the asset to publish.



=head2 B<REQUIRED> AssetName => Str

The name of the asset to publish. Asset names can include Unicode
letters and numbers, and the following special characters: C<~ ! @ ^ &
( ) - ` _ + [ ] { } ; , . `>



=head2 B<REQUIRED> AssetSHA256 => Str

The SHA256 hash of the C<assetContent> to publish. This value must be
calculated by the caller and provided with the request (see Publishing
a generic package
(https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html#publishing-generic-packages)
in the I<CodeArtifact User Guide>).

This value is used as an integrity check to verify that the
C<assetContent> has not changed after it was originally sent.



=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository that contains the
package version to publish.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 B<REQUIRED> Format => Str

A format that specifies the type of the package version with the
requested asset file.

The only supported value is C<generic>.

Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">, C<"generic">, C<"ruby">, C<"swift">, C<"cargo">

=head2 Namespace => Str

The namespace of the package version to publish.



=head2 B<REQUIRED> Package => Str

The name of the package version to publish.



=head2 B<REQUIRED> PackageVersion => Str

The package version to publish (for example, C<3.5.2>).



=head2 B<REQUIRED> Repository => Str

The name of the repository that the package version will be published
to.



=head2 Unfinished => Bool

Specifies whether the package version should remain in the
C<unfinished> state. If omitted, the package version status will be set
to C<Published> (see Package version status
(https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status)
in the I<CodeArtifact User Guide>).

Valid values: C<unfinished>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PublishPackageVersion in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

