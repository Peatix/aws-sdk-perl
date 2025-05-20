
package Paws::WorkMail::UpdateAvailabilityConfiguration;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has EwsProvider => (is => 'ro', isa => 'Paws::WorkMail::EwsAvailabilityProvider');
  has LambdaProvider => (is => 'ro', isa => 'Paws::WorkMail::LambdaAvailabilityProvider');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAvailabilityConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::UpdateAvailabilityConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::UpdateAvailabilityConfiguration - Arguments for method UpdateAvailabilityConfiguration on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAvailabilityConfiguration on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method UpdateAvailabilityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAvailabilityConfiguration.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $UpdateAvailabilityConfigurationResponse =
      $workmail->UpdateAvailabilityConfiguration(
      DomainName     => 'MyDomainName',
      OrganizationId => 'MyOrganizationId',
      EwsProvider    => {
        EwsEndpoint => 'MyUrl',                 # max: 256
        EwsPassword => 'MyPassword',            # max: 256
        EwsUsername => 'MyExternalUserName',    # max: 256

      },    # OPTIONAL
      LambdaProvider => {
        LambdaArn => 'MyLambdaArn',    # min: 49, max: 256

      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/UpdateAvailabilityConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The domain to which the provider applies the availability
configuration.



=head2 EwsProvider => L<Paws::WorkMail::EwsAvailabilityProvider>

The EWS availability provider definition. The request must contain
exactly one provider definition, either C<EwsProvider> or
C<LambdaProvider>. The previously stored provider will be overridden by
the one provided.



=head2 LambdaProvider => L<Paws::WorkMail::LambdaAvailabilityProvider>

The Lambda availability provider definition. The request must contain
exactly one provider definition, either C<EwsProvider> or
C<LambdaProvider>. The previously stored provider will be overridden by
the one provided.



=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization for which the C<AvailabilityConfiguration>
will be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAvailabilityConfiguration in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

