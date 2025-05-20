
package Paws::WorkMail::CreateAvailabilityConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has EwsProvider => (is => 'ro', isa => 'Paws::WorkMail::EwsAvailabilityProvider');
  has LambdaProvider => (is => 'ro', isa => 'Paws::WorkMail::LambdaAvailabilityProvider');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAvailabilityConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::CreateAvailabilityConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateAvailabilityConfiguration - Arguments for method CreateAvailabilityConfiguration on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAvailabilityConfiguration on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method CreateAvailabilityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAvailabilityConfiguration.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $CreateAvailabilityConfigurationResponse =
      $workmail->CreateAvailabilityConfiguration(
      DomainName     => 'MyDomainName',
      OrganizationId => 'MyOrganizationId',
      ClientToken    => 'MyIdempotencyClientToken',    # OPTIONAL
      EwsProvider    => {
        EwsEndpoint => 'MyUrl',                        # max: 256
        EwsPassword => 'MyPassword',                   # max: 256
        EwsUsername => 'MyExternalUserName',           # max: 256

      },    # OPTIONAL
      LambdaProvider => {
        LambdaArn => 'MyLambdaArn',    # min: 49, max: 256

      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/CreateAvailabilityConfiguration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

An idempotent token that ensures that an API request is executed only
once.



=head2 B<REQUIRED> DomainName => Str

The domain to which the provider applies.



=head2 EwsProvider => L<Paws::WorkMail::EwsAvailabilityProvider>

Exchange Web Services (EWS) availability provider definition. The
request must contain exactly one provider definition, either
C<EwsProvider> or C<LambdaProvider>.



=head2 LambdaProvider => L<Paws::WorkMail::LambdaAvailabilityProvider>

Lambda availability provider definition. The request must contain
exactly one provider definition, either C<EwsProvider> or
C<LambdaProvider>.



=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization for which the C<AvailabilityConfiguration>
will be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAvailabilityConfiguration in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

