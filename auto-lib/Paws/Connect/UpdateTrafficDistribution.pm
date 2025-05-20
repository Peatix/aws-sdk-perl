
package Paws::Connect::UpdateTrafficDistribution;
  use Moose;
  has AgentConfig => (is => 'ro', isa => 'Paws::Connect::AgentConfig');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has SignInConfig => (is => 'ro', isa => 'Paws::Connect::SignInConfig');
  has TelephonyConfig => (is => 'ro', isa => 'Paws::Connect::TelephonyConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrafficDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/traffic-distribution/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdateTrafficDistributionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateTrafficDistribution - Arguments for method UpdateTrafficDistribution on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTrafficDistribution on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateTrafficDistribution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTrafficDistribution.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdateTrafficDistributionResponse = $connect->UpdateTrafficDistribution(
      Id          => 'MyTrafficDistributionGroupIdOrArn',
      AgentConfig => {
        Distributions => [
          {
            Percentage => 1,                # max: 100
            Region     => 'MyAwsRegion',    # min: 8, max: 31

          },
          ...
        ],

      },    # OPTIONAL
      SignInConfig => {
        Distributions => [
          {
            Enabled => 1,
            Region  => 'MyAwsRegion',    # min: 8, max: 31

          },
          ...
        ],

      },    # OPTIONAL
      TelephonyConfig => {
        Distributions => [
          {
            Percentage => 1,                # max: 100
            Region     => 'MyAwsRegion',    # min: 8, max: 31

          },
          ...
        ],

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateTrafficDistribution>

=head1 ATTRIBUTES


=head2 AgentConfig => L<Paws::Connect::AgentConfig>

The distribution of agents between the instance and its replica(s).



=head2 B<REQUIRED> Id => Str

The identifier of the traffic distribution group. This can be the ID or
the ARN if the API is being called in the Region where the traffic
distribution group was created. The ARN must be provided if the call is
from the replicated Region.



=head2 SignInConfig => L<Paws::Connect::SignInConfig>

The distribution that determines which Amazon Web Services Regions
should be used to sign in agents in to both the instance and its
replica(s).



=head2 TelephonyConfig => L<Paws::Connect::TelephonyConfig>

The distribution of traffic between the instance and its replica(s).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTrafficDistribution in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

