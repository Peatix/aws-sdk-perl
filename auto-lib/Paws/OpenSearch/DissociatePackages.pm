
package Paws::OpenSearch::DissociatePackages;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has PackageList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DissociatePackages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/packages/dissociateMultiple');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::DissociatePackagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DissociatePackages - Arguments for method DissociatePackages on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DissociatePackages on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method DissociatePackages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DissociatePackages.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $DissociatePackagesResponse = $es->DissociatePackages(
      DomainName  => 'MyDomainName',
      PackageList => [ 'MyPackageID', ... ],

    );

    # Results:
    my $DomainPackageDetailsList =
      $DissociatePackagesResponse->DomainPackageDetailsList;

    # Returns a L<Paws::OpenSearch::DissociatePackagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str





=head2 B<REQUIRED> PackageList => ArrayRef[Str|Undef]

A list of package IDs to be dissociated from a domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DissociatePackages in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

