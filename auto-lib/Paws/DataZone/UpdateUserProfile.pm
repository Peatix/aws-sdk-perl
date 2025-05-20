
package Paws::DataZone::UpdateUserProfile;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has UserIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/user-profiles/{userIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateUserProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateUserProfile - Arguments for method UpdateUserProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateUserProfileOutput = $datazone->UpdateUserProfile(
      DomainIdentifier => 'MyDomainId',
      Status           => 'ASSIGNED',
      UserIdentifier   => 'MyUserIdentifier',
      Type             => 'IAM',                # OPTIONAL
    );

    # Results:
    my $Details  = $UpdateUserProfileOutput->Details;
    my $DomainId = $UpdateUserProfileOutput->DomainId;
    my $Id       = $UpdateUserProfileOutput->Id;
    my $Status   = $UpdateUserProfileOutput->Status;
    my $Type     = $UpdateUserProfileOutput->Type;

    # Returns a L<Paws::DataZone::UpdateUserProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateUserProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which a user profile is
updated.



=head2 B<REQUIRED> Status => Str

The status of the user profile that are to be updated.

Valid values are: C<"ASSIGNED">, C<"NOT_ASSIGNED">, C<"ACTIVATED">, C<"DEACTIVATED">

=head2 Type => Str

The type of the user profile that are to be updated.

Valid values are: C<"IAM">, C<"SSO">

=head2 B<REQUIRED> UserIdentifier => Str

The identifier of the user whose user profile is to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

