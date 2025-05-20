
package Paws::IoT::ListPackageVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PackageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'packageName', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPackageVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/{packageName}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListPackageVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPackageVersions - Arguments for method ListPackageVersions on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPackageVersions on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListPackageVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPackageVersions.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListPackageVersionsResponse = $iot->ListPackageVersions(
      PackageName => 'MyPackageName',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
      Status      => 'DRAFT',           # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPackageVersionsResponse->NextToken;
    my $PackageVersionSummaries =
      $ListPackageVersionsResponse->PackageVersionSummaries;

    # Returns a L<Paws::IoT::ListPackageVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListPackageVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

The token for the next set of results.



=head2 B<REQUIRED> PackageName => Str

The name of the target software package.



=head2 Status => Str

The status of the package version. For more information, see Package
version lifecycle
(https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle).

Valid values are: C<"DRAFT">, C<"PUBLISHED">, C<"DEPRECATED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPackageVersions in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

