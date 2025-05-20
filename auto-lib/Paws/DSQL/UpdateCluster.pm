
package Paws::DSQL::UpdateCluster;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deletionProtectionEnabled');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has MultiRegionProperties => (is => 'ro', isa => 'Paws::DSQL::MultiRegionProperties', traits => ['NameInRequest'], request_name => 'multiRegionProperties');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DSQL::UpdateClusterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL::UpdateCluster - Arguments for method UpdateCluster on L<Paws::DSQL>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCluster on the
L<Amazon Aurora DSQL|Paws::DSQL> service. Use the attributes of this class
as arguments to method UpdateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCluster.

=head1 SYNOPSIS

    my $dsql = Paws->service('DSQL');
    my $UpdateClusterOutput = $dsql->UpdateCluster(
      Identifier                => 'MyClusterId',
      ClientToken               => 'MyClientToken',    # OPTIONAL
      DeletionProtectionEnabled => 1,                  # OPTIONAL
      MultiRegionProperties     => {
        Clusters      => [ 'MyClusterArn', ... ],      # OPTIONAL
        WitnessRegion => 'MyRegion',                   # max: 50; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn          = $UpdateClusterOutput->Arn;
    my $CreationTime = $UpdateClusterOutput->CreationTime;
    my $Identifier   = $UpdateClusterOutput->Identifier;
    my $Status       = $UpdateClusterOutput->Status;

    # Returns a L<Paws::DSQL::UpdateClusterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dsql/UpdateCluster>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original
request completes successfully. The subsequent retries with the same
client token return the result from the original successful request and
they have no additional effect.

If you don't specify a client token, the Amazon Web Services SDK
automatically generates one.



=head2 DeletionProtectionEnabled => Bool

Specifies whether to enable deletion protection in your cluster.



=head2 B<REQUIRED> Identifier => Str

The ID of the cluster you want to update.



=head2 MultiRegionProperties => L<Paws::DSQL::MultiRegionProperties>

The new multi-Region cluster configuration settings to be applied
during an update operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCluster in L<Paws::DSQL>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

