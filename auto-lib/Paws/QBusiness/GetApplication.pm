
package Paws::QBusiness::GetApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::GetApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetApplication - Arguments for method GetApplication on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplication on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method GetApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplication.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $GetApplicationResponse = $qbusiness->GetApplication(
      ApplicationId => 'MyApplicationId',

    );

    # Results:
    my $ApplicationArn = $GetApplicationResponse->ApplicationArn;
    my $ApplicationId  = $GetApplicationResponse->ApplicationId;
    my $AttachmentsConfiguration =
      $GetApplicationResponse->AttachmentsConfiguration;
    my $AutoSubscriptionConfiguration =
      $GetApplicationResponse->AutoSubscriptionConfiguration;
    my $ClientIdsForOIDC = $GetApplicationResponse->ClientIdsForOIDC;
    my $CreatedAt        = $GetApplicationResponse->CreatedAt;
    my $Description      = $GetApplicationResponse->Description;
    my $DisplayName      = $GetApplicationResponse->DisplayName;
    my $EncryptionConfiguration =
      $GetApplicationResponse->EncryptionConfiguration;
    my $Error = $GetApplicationResponse->Error;
    my $IamIdentityProviderArn =
      $GetApplicationResponse->IamIdentityProviderArn;
    my $IdentityCenterApplicationArn =
      $GetApplicationResponse->IdentityCenterApplicationArn;
    my $IdentityType = $GetApplicationResponse->IdentityType;
    my $PersonalizationConfiguration =
      $GetApplicationResponse->PersonalizationConfiguration;
    my $QAppsConfiguration = $GetApplicationResponse->QAppsConfiguration;
    my $QuickSightConfiguration =
      $GetApplicationResponse->QuickSightConfiguration;
    my $RoleArn   = $GetApplicationResponse->RoleArn;
    my $Status    = $GetApplicationResponse->Status;
    my $UpdatedAt = $GetApplicationResponse->UpdatedAt;

    # Returns a L<Paws::QBusiness::GetApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/GetApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplication in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

