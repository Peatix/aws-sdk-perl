
package Paws::Bedrock::GetModelInvocationLoggingConfiguration;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetModelInvocationLoggingConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/logging/modelinvocations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::GetModelInvocationLoggingConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetModelInvocationLoggingConfiguration - Arguments for method GetModelInvocationLoggingConfiguration on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetModelInvocationLoggingConfiguration on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method GetModelInvocationLoggingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetModelInvocationLoggingConfiguration.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $GetModelInvocationLoggingConfigurationResponse =
      $bedrock->GetModelInvocationLoggingConfiguration();

    # Results:
    my $LoggingConfig =
      $GetModelInvocationLoggingConfigurationResponse->LoggingConfig;

# Returns a L<Paws::Bedrock::GetModelInvocationLoggingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/GetModelInvocationLoggingConfiguration>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetModelInvocationLoggingConfiguration in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

