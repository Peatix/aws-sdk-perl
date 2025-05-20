
package Paws::AppRunner::CreateObservabilityConfiguration;
  use Moose;
  has ObservabilityConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::Tag]');
  has TraceConfiguration => (is => 'ro', isa => 'Paws::AppRunner::TraceConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateObservabilityConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::CreateObservabilityConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::CreateObservabilityConfiguration - Arguments for method CreateObservabilityConfiguration on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateObservabilityConfiguration on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method CreateObservabilityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateObservabilityConfiguration.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $CreateObservabilityConfigurationResponse =
      $apprunner->CreateObservabilityConfiguration(
      ObservabilityConfigurationName => 'MyObservabilityConfigurationName',
      Tags                           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TraceConfiguration => {
        Vendor => 'AWSXRAY',    # values: AWSXRAY

      },    # OPTIONAL
      );

    # Results:
    my $ObservabilityConfiguration =
      $CreateObservabilityConfigurationResponse->ObservabilityConfiguration;

# Returns a L<Paws::AppRunner::CreateObservabilityConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/CreateObservabilityConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ObservabilityConfigurationName => Str

A name for the observability configuration. When you use it for the
first time in an Amazon Web Services Region, App Runner creates
revision number C<1> of this name. When you use the same name in
subsequent calls, App Runner creates incremental revisions of the
configuration.

The name C<DefaultConfiguration> is reserved. You can't use it to
create a new observability configuration, and you can't create a
revision of it.

When you want to use your own observability configuration for your App
Runner service, I<create a configuration with a different name>, and
then provide it when you create or update your service.



=head2 Tags => ArrayRef[L<Paws::AppRunner::Tag>]

A list of metadata items that you can associate with your observability
configuration resource. A tag is a key-value pair.



=head2 TraceConfiguration => L<Paws::AppRunner::TraceConfiguration>

The configuration of the tracing feature within this observability
configuration. If you don't specify it, App Runner doesn't enable
tracing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateObservabilityConfiguration in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

