
package Paws::Route53RecoveryReadiness::ListRecoveryGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecoveryGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recoverygroups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryReadiness::ListRecoveryGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::ListRecoveryGroups - Arguments for method ListRecoveryGroups on L<Paws::Route53RecoveryReadiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecoveryGroups on the
L<AWS Route53 Recovery Readiness|Paws::Route53RecoveryReadiness> service. Use the attributes of this class
as arguments to method ListRecoveryGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecoveryGroups.

=head1 SYNOPSIS

    my $route53-recovery-readiness = Paws->service('Route53RecoveryReadiness');
    my $ListRecoveryGroupsResponse =
      $route53 -recovery-readiness->ListRecoveryGroups(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
      );

    # Results:
    my $NextToken      = $ListRecoveryGroupsResponse->NextToken;
    my $RecoveryGroups = $ListRecoveryGroupsResponse->RecoveryGroups;

# Returns a L<Paws::Route53RecoveryReadiness::ListRecoveryGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness/ListRecoveryGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of objects that you want to return with this call.



=head2 NextToken => Str

The token that identifies which batch of results you want to see.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecoveryGroups in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

