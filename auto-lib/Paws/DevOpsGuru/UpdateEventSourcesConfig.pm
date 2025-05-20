
package Paws::DevOpsGuru::UpdateEventSourcesConfig;
  use Moose;
  has EventSources => (is => 'ro', isa => 'Paws::DevOpsGuru::EventSourcesConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventSourcesConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/event-sources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::UpdateEventSourcesConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::UpdateEventSourcesConfig - Arguments for method UpdateEventSourcesConfig on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventSourcesConfig on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method UpdateEventSourcesConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventSourcesConfig.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $UpdateEventSourcesConfigResponse =
      $devops -guru->UpdateEventSourcesConfig(
      EventSources => {
        AmazonCodeGuruProfiler => {
          Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/UpdateEventSourcesConfig>

=head1 ATTRIBUTES


=head2 EventSources => L<Paws::DevOpsGuru::EventSourcesConfig>

Configuration information about the integration of DevOps Guru as the
Consumer via EventBridge with another AWS Service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventSourcesConfig in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

