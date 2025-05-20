
package Paws::SsmSap::GetApplication;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str');
  has ApplicationId => (is => 'ro', isa => 'Str');
  has AppRegistryArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-application');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SsmSap::GetApplicationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::GetApplication - Arguments for method GetApplication on L<Paws::SsmSap>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplication on the
L<AWS Systems Manager for SAP|Paws::SsmSap> service. Use the attributes of this class
as arguments to method GetApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplication.

=head1 SYNOPSIS

    my $ssm-sap = Paws->service('SsmSap');
    my $GetApplicationOutput = $ssm -sap->GetApplication(
      AppRegistryArn => 'MyAppRegistryArn',    # OPTIONAL
      ApplicationArn => 'MySsmSapArn',         # OPTIONAL
      ApplicationId  => 'MyApplicationId',     # OPTIONAL
    );

    # Results:
    my $Application = $GetApplicationOutput->Application;
    my $Tags        = $GetApplicationOutput->Tags;

    # Returns a L<Paws::SsmSap::GetApplicationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-sap/GetApplication>

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

The Amazon Resource Name (ARN) of the application.



=head2 ApplicationId => Str

The ID of the application.



=head2 AppRegistryArn => Str

The Amazon Resource Name (ARN) of the application registry.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplication in L<Paws::SsmSap>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

