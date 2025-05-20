
package Paws::AppIntegrations::GetDataIntegration;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataIntegrations/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::GetDataIntegrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::GetDataIntegration - Arguments for method GetDataIntegration on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataIntegration on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method GetDataIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataIntegration.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $GetDataIntegrationResponse = $app -integrations->GetDataIntegration(
      Identifier => 'MyIdentifier',

    );

    # Results:
    my $Arn                 = $GetDataIntegrationResponse->Arn;
    my $Description         = $GetDataIntegrationResponse->Description;
    my $FileConfiguration   = $GetDataIntegrationResponse->FileConfiguration;
    my $Id                  = $GetDataIntegrationResponse->Id;
    my $KmsKey              = $GetDataIntegrationResponse->KmsKey;
    my $Name                = $GetDataIntegrationResponse->Name;
    my $ObjectConfiguration = $GetDataIntegrationResponse->ObjectConfiguration;
    my $ScheduleConfiguration =
      $GetDataIntegrationResponse->ScheduleConfiguration;
    my $SourceURI = $GetDataIntegrationResponse->SourceURI;
    my $Tags      = $GetDataIntegrationResponse->Tags;

    # Returns a L<Paws::AppIntegrations::GetDataIntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/GetDataIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

A unique identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataIntegration in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

