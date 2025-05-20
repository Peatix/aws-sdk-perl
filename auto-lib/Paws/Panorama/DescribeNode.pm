
package Paws::Panorama::DescribeNode;
  use Moose;
  has NodeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'NodeId', required => 1);
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'OwnerAccount');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/nodes/{NodeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::DescribeNodeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribeNode - Arguments for method DescribeNode on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNode on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method DescribeNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNode.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $DescribeNodeResponse = $panorama->DescribeNode(
      NodeId       => 'MyNodeId',
      OwnerAccount => 'MyPackageOwnerAccount',    # OPTIONAL
    );

    # Results:
    my $AssetName       = $DescribeNodeResponse->AssetName;
    my $Category        = $DescribeNodeResponse->Category;
    my $CreatedTime     = $DescribeNodeResponse->CreatedTime;
    my $Description     = $DescribeNodeResponse->Description;
    my $LastUpdatedTime = $DescribeNodeResponse->LastUpdatedTime;
    my $Name            = $DescribeNodeResponse->Name;
    my $NodeId          = $DescribeNodeResponse->NodeId;
    my $NodeInterface   = $DescribeNodeResponse->NodeInterface;
    my $OwnerAccount    = $DescribeNodeResponse->OwnerAccount;
    my $PackageArn      = $DescribeNodeResponse->PackageArn;
    my $PackageId       = $DescribeNodeResponse->PackageId;
    my $PackageName     = $DescribeNodeResponse->PackageName;
    my $PackageVersion  = $DescribeNodeResponse->PackageVersion;
    my $PatchVersion    = $DescribeNodeResponse->PatchVersion;

    # Returns a L<Paws::Panorama::DescribeNodeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/DescribeNode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NodeId => Str

The node's ID.



=head2 OwnerAccount => Str

The account ID of the node's owner.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNode in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

