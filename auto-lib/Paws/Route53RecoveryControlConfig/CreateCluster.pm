
package Paws::Route53RecoveryControlConfig::CreateCluster;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has NetworkType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryControlConfig::CreateClusterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::CreateCluster - Arguments for method CreateCluster on L<Paws::Route53RecoveryControlConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<AWS Route53 Recovery Control Config|Paws::Route53RecoveryControlConfig> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $route53-recovery-control-config = Paws->service('Route53RecoveryControlConfig');
    my $CreateClusterResponse =
      $route53 -recovery-control-config->CreateCluster(
      ClusterName => 'My__stringMin1Max64PatternS',
      ClientToken => 'My__stringMin1Max64PatternS',    # OPTIONAL
      NetworkType => 'IPV4',                           # OPTIONAL
      Tags        => {
        'My__string' => 'My__stringMin0Max256PatternS',    # , value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Cluster = $CreateClusterResponse->Cluster;

# Returns a L<Paws::Route53RecoveryControlConfig::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config/CreateCluster>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive string of up to 64 ASCII characters. To make
an idempotent API request with an action, specify a client token in the
request.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster.



=head2 NetworkType => Str

The network type of the cluster. NetworkType can be one of the
following: IPV4, DUALSTACK.

Valid values are: C<"IPV4">, C<"DUALSTACK">

=head2 Tags => L<Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS>

The tags associated with the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

