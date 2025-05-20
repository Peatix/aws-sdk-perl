
package Paws::Panorama::ListNodes;
  use Moose;
  has Category => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'category');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ownerAccount');
  has PackageName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'packageName');
  has PackageVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'packageVersion');
  has PatchVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'patchVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNodes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/nodes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::ListNodesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListNodes - Arguments for method ListNodes on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNodes on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method ListNodes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNodes.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $ListNodesResponse = $panorama->ListNodes(
      Category       => 'BUSINESS_LOGIC',               # OPTIONAL
      MaxResults     => 1,                              # OPTIONAL
      NextToken      => 'MyToken',                      # OPTIONAL
      OwnerAccount   => 'MyPackageOwnerAccount',        # OPTIONAL
      PackageName    => 'MyNodePackageName',            # OPTIONAL
      PackageVersion => 'MyNodePackageVersion',         # OPTIONAL
      PatchVersion   => 'MyNodePackagePatchVersion',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListNodesResponse->NextToken;
    my $Nodes     = $ListNodesResponse->Nodes;

    # Returns a L<Paws::Panorama::ListNodesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/ListNodes>

=head1 ATTRIBUTES


=head2 Category => Str

Search for nodes by category.

Valid values are: C<"BUSINESS_LOGIC">, C<"ML_MODEL">, C<"MEDIA_SOURCE">, C<"MEDIA_SINK">

=head2 MaxResults => Int

The maximum number of nodes to return in one page of results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 OwnerAccount => Str

Search for nodes by the account ID of the nodes' owner.



=head2 PackageName => Str

Search for nodes by name.



=head2 PackageVersion => Str

Search for nodes by version.



=head2 PatchVersion => Str

Search for nodes by patch version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNodes in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

