
package Paws::OpenSearch::AssociatePackage;
  use Moose;
  has AssociationConfiguration => (is => 'ro', isa => 'Paws::OpenSearch::PackageAssociationConfiguration');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has PackageID => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PackageID', required => 1);
  has PrerequisitePackageIDList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociatePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/packages/associate/{PackageID}/{DomainName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::AssociatePackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::AssociatePackage - Arguments for method AssociatePackage on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociatePackage on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method AssociatePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociatePackage.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $AssociatePackageResponse = $es->AssociatePackage(
      DomainName               => 'MyDomainName',
      PackageID                => 'MyPackageID',
      AssociationConfiguration => {
        KeyStoreAccessOption => {
          KeyStoreAccessEnabled => 1,
          KeyAccessRoleArn      => 'MyRoleArn',   # min: 20, max: 2048; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      PrerequisitePackageIDList => [ 'MyPackageID', ... ],    # OPTIONAL
    );

    # Results:
    my $DomainPackageDetails = $AssociatePackageResponse->DomainPackageDetails;

    # Returns a L<Paws::OpenSearch::AssociatePackageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AssociationConfiguration => L<Paws::OpenSearch::PackageAssociationConfiguration>

The configuration for associating a package with an Amazon OpenSearch
Service domain.



=head2 B<REQUIRED> DomainName => Str

Name of the domain to associate the package with.



=head2 B<REQUIRED> PackageID => Str

Internal ID of the package to associate with a domain. Use
C<DescribePackages> to find this value.



=head2 PrerequisitePackageIDList => ArrayRef[Str|Undef]

A list of package IDs that must be associated with the domain before
the package specified in the request can be associated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociatePackage in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

