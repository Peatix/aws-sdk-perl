
package Paws::DSQL::CreateCluster;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deletionProtectionEnabled');
  has MultiRegionProperties => (is => 'ro', isa => 'Paws::DSQL::MultiRegionProperties', traits => ['NameInRequest'], request_name => 'multiRegionProperties');
  has Tags => (is => 'ro', isa => 'Paws::DSQL::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DSQL::CreateClusterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL::CreateCluster - Arguments for method CreateCluster on L<Paws::DSQL>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Amazon Aurora DSQL|Paws::DSQL> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $dsql = Paws->service('DSQL');
    my $CreateClusterOutput = $dsql->CreateCluster(
      ClientToken               => 'MyClientToken',    # OPTIONAL
      DeletionProtectionEnabled => 1,                  # OPTIONAL
      MultiRegionProperties     => {
        Clusters      => [ 'MyClusterArn', ... ],      # OPTIONAL
        WitnessRegion => 'MyRegion',                   # max: 50; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn          = $CreateClusterOutput->Arn;
    my $CreationTime = $CreateClusterOutput->CreationTime;
    my $DeletionProtectionEnabled =
      $CreateClusterOutput->DeletionProtectionEnabled;
    my $Identifier            = $CreateClusterOutput->Identifier;
    my $MultiRegionProperties = $CreateClusterOutput->MultiRegionProperties;
    my $Status                = $CreateClusterOutput->Status;

    # Returns a L<Paws::DSQL::CreateClusterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dsql/CreateCluster>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original
request completes successfully, the subsequent retries with the same
client token return the result from the original successful request and
they have no additional effect.

If you don't specify a client token, the Amazon Web Services SDK
automatically generates one.



=head2 DeletionProtectionEnabled => Bool

If enabled, you can't delete your cluster. You must first disable this
property before you can delete your cluster.



=head2 MultiRegionProperties => L<Paws::DSQL::MultiRegionProperties>

The configuration settings when creating a multi-Region cluster,
including the witness region and linked cluster properties.



=head2 Tags => L<Paws::DSQL::TagMap>

A map of key and value pairs to use to tag your cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::DSQL>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

