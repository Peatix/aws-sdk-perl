
package Paws::DataZone::GetUserProfile;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');
  has UserIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUserProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/user-profiles/{userIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetUserProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetUserProfile - Arguments for method GetUserProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUserProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUserProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetUserProfileOutput = $datazone->GetUserProfile(
      DomainIdentifier => 'MyDomainId',
      UserIdentifier   => 'MyUserIdentifier',
      Type             => 'IAM',                # OPTIONAL
    );

    # Results:
    my $Details  = $GetUserProfileOutput->Details;
    my $DomainId = $GetUserProfileOutput->DomainId;
    my $Id       = $GetUserProfileOutput->Id;
    my $Status   = $GetUserProfileOutput->Status;
    my $Type     = $GetUserProfileOutput->Type;

    # Returns a L<Paws::DataZone::GetUserProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetUserProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

the ID of the Amazon DataZone domain the data portal of which you want
to get.



=head2 Type => Str

The type of the user profile.

Valid values are: C<"IAM">, C<"SSO">

=head2 B<REQUIRED> UserIdentifier => Str

The identifier of the user for which you want to get the user profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUserProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

