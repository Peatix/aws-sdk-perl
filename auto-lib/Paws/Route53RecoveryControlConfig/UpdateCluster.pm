
package Paws::Route53RecoveryControlConfig::UpdateCluster;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', required => 1);
  has NetworkType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryControlConfig::UpdateClusterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::UpdateCluster - Arguments for method UpdateCluster on L<Paws::Route53RecoveryControlConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCluster on the
L<AWS Route53 Recovery Control Config|Paws::Route53RecoveryControlConfig> service. Use the attributes of this class
as arguments to method UpdateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCluster.

=head1 SYNOPSIS

    my $route53-recovery-control-config = Paws->service('Route53RecoveryControlConfig');
    my $UpdateClusterResponse =
      $route53 -recovery-control-config->UpdateCluster(
      ClusterArn  => 'My__stringMin1Max256PatternAZaZ09',
      NetworkType => 'IPV4',

      );

    # Results:
    my $Cluster = $UpdateClusterResponse->Cluster;

# Returns a L<Paws::Route53RecoveryControlConfig::UpdateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config/UpdateCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster.



=head2 B<REQUIRED> NetworkType => Str

The network type of the cluster. NetworkType can be one of the
following: IPV4, DUALSTACK.

Valid values are: C<"IPV4">, C<"DUALSTACK">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCluster in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

