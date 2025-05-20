
package Paws::WorkSpacesWeb::UpdatePortal;
  use Moose;
  has AuthenticationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationType');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType');
  has MaxConcurrentSessions => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxConcurrentSessions');
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'portalArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePortal');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals/{portalArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::UpdatePortalResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::UpdatePortal - Arguments for method UpdatePortal on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePortal on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method UpdatePortal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePortal.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $UpdatePortalResponse = $workspaces -web->UpdatePortal(
      PortalArn             => 'MyARN',
      AuthenticationType    => 'Standard',            # OPTIONAL
      DisplayName           => 'MyDisplayName',       # OPTIONAL
      InstanceType          => 'standard.regular',    # OPTIONAL
      MaxConcurrentSessions => 1,                     # OPTIONAL
    );

    # Results:
    my $Portal = $UpdatePortalResponse->Portal;

    # Returns a L<Paws::WorkSpacesWeb::UpdatePortalResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/UpdatePortal>

=head1 ATTRIBUTES


=head2 AuthenticationType => Str

The type of authentication integration points used when signing into
the web portal. Defaults to C<Standard>.

C<Standard> web portals are authenticated directly through your
identity provider. You need to call C<CreateIdentityProvider> to
integrate your identity provider with your web portal. User and group
access to your web portal is controlled through your identity provider.

C<IAM Identity Center> web portals are authenticated through IAM
Identity Center. Identity sources (including external identity provider
integration), plus user and group access to your web portal, can be
configured in the IAM Identity Center.

Valid values are: C<"Standard">, C<"IAM_Identity_Center">

=head2 DisplayName => Str

The name of the web portal. This is not visible to users who log into
the web portal.



=head2 InstanceType => Str

The type and resources of the underlying instance.

Valid values are: C<"standard.regular">, C<"standard.large">, C<"standard.xlarge">

=head2 MaxConcurrentSessions => Int

The maximum number of concurrent sessions for the portal.



=head2 B<REQUIRED> PortalArn => Str

The ARN of the web portal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePortal in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

