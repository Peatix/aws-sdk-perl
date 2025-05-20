
package Paws::EntityResolution::GetProviderService;
  use Moose;
  has ProviderName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'providerName', required => 1);
  has ProviderServiceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'providerServiceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProviderService');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/providerservices/{providerName}/{providerServiceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::GetProviderServiceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::GetProviderService - Arguments for method GetProviderService on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProviderService on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method GetProviderService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProviderService.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $GetProviderServiceOutput = $entityresolution->GetProviderService(
      ProviderName        => 'MyEntityName',
      ProviderServiceName => 'MyProviderServiceArn',

    );

    # Results:
    my $AnonymizedOutput = $GetProviderServiceOutput->AnonymizedOutput;
    my $ProviderComponentSchema =
      $GetProviderServiceOutput->ProviderComponentSchema;
    my $ProviderConfigurationDefinition =
      $GetProviderServiceOutput->ProviderConfigurationDefinition;
    my $ProviderEndpointConfiguration =
      $GetProviderServiceOutput->ProviderEndpointConfiguration;
    my $ProviderEntityOutputDefinition =
      $GetProviderServiceOutput->ProviderEntityOutputDefinition;
    my $ProviderIdNameSpaceConfiguration =
      $GetProviderServiceOutput->ProviderIdNameSpaceConfiguration;
    my $ProviderIntermediateDataAccessConfiguration =
      $GetProviderServiceOutput->ProviderIntermediateDataAccessConfiguration;
    my $ProviderJobConfiguration =
      $GetProviderServiceOutput->ProviderJobConfiguration;
    my $ProviderName       = $GetProviderServiceOutput->ProviderName;
    my $ProviderServiceArn = $GetProviderServiceOutput->ProviderServiceArn;
    my $ProviderServiceDisplayName =
      $GetProviderServiceOutput->ProviderServiceDisplayName;
    my $ProviderServiceName = $GetProviderServiceOutput->ProviderServiceName;
    my $ProviderServiceType = $GetProviderServiceOutput->ProviderServiceType;

    # Returns a L<Paws::EntityResolution::GetProviderServiceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/GetProviderService>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProviderName => Str

The name of the provider. This name is typically the company name.



=head2 B<REQUIRED> ProviderServiceName => Str

The ARN (Amazon Resource Name) of the product that the provider service
provides.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProviderService in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

