
package Paws::Route53RecoveryControlConfig::ListAssociatedRoute53HealthChecks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has RoutingControlArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RoutingControlArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssociatedRoute53HealthChecks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routingcontrol/{RoutingControlArn}/associatedRoute53HealthChecks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryControlConfig::ListAssociatedRoute53HealthChecksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::ListAssociatedRoute53HealthChecks - Arguments for method ListAssociatedRoute53HealthChecks on L<Paws::Route53RecoveryControlConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssociatedRoute53HealthChecks on the
L<AWS Route53 Recovery Control Config|Paws::Route53RecoveryControlConfig> service. Use the attributes of this class
as arguments to method ListAssociatedRoute53HealthChecks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssociatedRoute53HealthChecks.

=head1 SYNOPSIS

    my $route53-recovery-control-config = Paws->service('Route53RecoveryControlConfig');
    my $ListAssociatedRoute53HealthChecksResponse =
      $route53 -recovery-control-config->ListAssociatedRoute53HealthChecks(
      RoutingControlArn => 'My__string',
      MaxResults        => 1,               # OPTIONAL
      NextToken         => 'My__string',    # OPTIONAL
      );

    # Results:
    my $HealthCheckIds =
      $ListAssociatedRoute53HealthChecksResponse->HealthCheckIds;
    my $NextToken = $ListAssociatedRoute53HealthChecksResponse->NextToken;

# Returns a L<Paws::Route53RecoveryControlConfig::ListAssociatedRoute53HealthChecksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config/ListAssociatedRoute53HealthChecks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of objects that you want to return with this call.



=head2 NextToken => Str

The token that identifies which batch of results you want to see.



=head2 B<REQUIRED> RoutingControlArn => Str

The Amazon Resource Name (ARN) of the routing control.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssociatedRoute53HealthChecks in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

