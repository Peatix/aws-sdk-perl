
package Paws::SSOAdmin::CreateApplication;
  use Moose;
  has ApplicationProviderArn => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PortalOptions => (is => 'ro', isa => 'Paws::SSOAdmin::PortalOptions');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::CreateApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::CreateApplication - Arguments for method CreateApplication on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $CreateApplicationResponse = $sso->CreateApplication(
      ApplicationProviderArn => 'MyApplicationProviderArn',
      InstanceArn            => 'MyInstanceArn',
      Name                   => 'MyApplicationNameType',
      ClientToken            => 'MyClientToken',              # OPTIONAL
      Description            => 'MyDescription',              # OPTIONAL
      PortalOptions          => {
        SignInOptions => {
          Origin => 'IDENTITY_CENTER',    # values: IDENTITY_CENTER, APPLICATION
          ApplicationUrl => 'MyApplicationUrl',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        Visibility => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      Status => 'ENABLED',    # OPTIONAL
      Tags   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ApplicationArn = $CreateApplicationResponse->ApplicationArn;

    # Returns a L<Paws::SSOAdmin::CreateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/CreateApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationProviderArn => Str

The ARN of the application provider under which the operation will run.



=head2 ClientToken => Str

Specifies a unique, case-sensitive ID that you provide to ensure the
idempotency of the request. This lets you safely retry the request
without accidentally performing the same operation a second time.
Passing the same value to a later call to an operation requires that
you also pass the same value for all other parameters. We recommend
that you use a UUID type of value
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an
C<IdempotentParameterMismatch> error.



=head2 Description => Str

The description of the .



=head2 B<REQUIRED> InstanceArn => Str

The ARN of the instance of IAM Identity Center under which the
operation will run. For more information about ARNs, see Amazon
Resource Names (ARNs) and Amazon Web Services Service Namespaces in the
I<Amazon Web Services General Reference>.



=head2 B<REQUIRED> Name => Str

The name of the .



=head2 PortalOptions => L<Paws::SSOAdmin::PortalOptions>

A structure that describes the options for the portal associated with
an application.



=head2 Status => Str

Specifies whether the application is enabled or disabled.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]

Specifies tags to be attached to the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

