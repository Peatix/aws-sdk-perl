
package Paws::WorkMail::TestAvailabilityConfiguration;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has EwsProvider => (is => 'ro', isa => 'Paws::WorkMail::EwsAvailabilityProvider');
  has LambdaProvider => (is => 'ro', isa => 'Paws::WorkMail::LambdaAvailabilityProvider');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestAvailabilityConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::TestAvailabilityConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::TestAvailabilityConfiguration - Arguments for method TestAvailabilityConfiguration on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestAvailabilityConfiguration on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method TestAvailabilityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestAvailabilityConfiguration.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $TestAvailabilityConfigurationResponse =
      $workmail->TestAvailabilityConfiguration(
      OrganizationId => 'MyOrganizationId',
      DomainName     => 'MyDomainName',       # OPTIONAL
      EwsProvider    => {
        EwsEndpoint => 'MyUrl',                 # max: 256
        EwsPassword => 'MyPassword',            # max: 256
        EwsUsername => 'MyExternalUserName',    # max: 256

      },    # OPTIONAL
      LambdaProvider => {
        LambdaArn => 'MyLambdaArn',    # min: 49, max: 256

      },    # OPTIONAL
      );

    # Results:
    my $FailureReason = $TestAvailabilityConfigurationResponse->FailureReason;
    my $TestPassed    = $TestAvailabilityConfigurationResponse->TestPassed;

    # Returns a L<Paws::WorkMail::TestAvailabilityConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/TestAvailabilityConfiguration>

=head1 ATTRIBUTES


=head2 DomainName => Str

The domain to which the provider applies. If this field is provided, a
stored availability provider associated to this domain name will be
tested.



=head2 EwsProvider => L<Paws::WorkMail::EwsAvailabilityProvider>





=head2 LambdaProvider => L<Paws::WorkMail::LambdaAvailabilityProvider>





=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization where the availability provider will be
tested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestAvailabilityConfiguration in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

