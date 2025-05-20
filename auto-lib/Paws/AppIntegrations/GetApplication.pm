
package Paws::AppIntegrations::GetApplication;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::GetApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::GetApplication - Arguments for method GetApplication on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplication on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method GetApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplication.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $GetApplicationResponse = $app -integrations->GetApplication(
      Arn => 'MyArnOrUUID',

    );

    # Results:
    my $ApplicationSourceConfig =
      $GetApplicationResponse->ApplicationSourceConfig;
    my $Arn              = $GetApplicationResponse->Arn;
    my $CreatedTime      = $GetApplicationResponse->CreatedTime;
    my $Description      = $GetApplicationResponse->Description;
    my $Id               = $GetApplicationResponse->Id;
    my $LastModifiedTime = $GetApplicationResponse->LastModifiedTime;
    my $Name             = $GetApplicationResponse->Name;
    my $Namespace        = $GetApplicationResponse->Namespace;
    my $Permissions      = $GetApplicationResponse->Permissions;
    my $Publications     = $GetApplicationResponse->Publications;
    my $Subscriptions    = $GetApplicationResponse->Subscriptions;
    my $Tags             = $GetApplicationResponse->Tags;

    # Returns a L<Paws::AppIntegrations::GetApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/GetApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the Application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplication in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

