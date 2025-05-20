
package Paws::DataZone::CreateUserProfile;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has UserIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userIdentifier', required => 1);
  has UserType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/user-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateUserProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateUserProfile - Arguments for method CreateUserProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateUserProfileOutput = $datazone->CreateUserProfile(
      DomainIdentifier => 'MyDomainId',
      UserIdentifier   => 'MyUserIdentifier',
      ClientToken      => 'MyString',           # OPTIONAL
      UserType         => 'IAM_USER',           # OPTIONAL
    );

    # Results:
    my $Details  = $CreateUserProfileOutput->Details;
    my $DomainId = $CreateUserProfileOutput->DomainId;
    my $Id       = $CreateUserProfileOutput->Id;
    my $Status   = $CreateUserProfileOutput->Status;
    my $Type     = $CreateUserProfileOutput->Type;

    # Returns a L<Paws::DataZone::CreateUserProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateUserProfile>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which a user profile is
created.



=head2 B<REQUIRED> UserIdentifier => Str

The identifier of the user for which the user profile is created.



=head2 UserType => Str

The user type of the user for which the user profile is created.

Valid values are: C<"IAM_USER">, C<"IAM_ROLE">, C<"SSO_USER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

