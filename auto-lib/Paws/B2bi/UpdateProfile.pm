
package Paws::B2bi::UpdateProfile;
  use Moose;
  has BusinessName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'businessName' );
  has Email => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'email' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has Phone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'phone' );
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::UpdateProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::UpdateProfile - Arguments for method UpdateProfile on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProfile on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method UpdateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProfile.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $UpdateProfileResponse = $b2bi->UpdateProfile(
      ProfileId    => 'MyProfileId',
      BusinessName => 'MyBusinessName',    # OPTIONAL
      Email        => 'MyEmail',           # OPTIONAL
      Name         => 'MyProfileName',     # OPTIONAL
      Phone        => 'MyPhone',           # OPTIONAL
    );

    # Results:
    my $BusinessName = $UpdateProfileResponse->BusinessName;
    my $CreatedAt    = $UpdateProfileResponse->CreatedAt;
    my $Email        = $UpdateProfileResponse->Email;
    my $LogGroupName = $UpdateProfileResponse->LogGroupName;
    my $Logging      = $UpdateProfileResponse->Logging;
    my $ModifiedAt   = $UpdateProfileResponse->ModifiedAt;
    my $Name         = $UpdateProfileResponse->Name;
    my $Phone        = $UpdateProfileResponse->Phone;
    my $ProfileArn   = $UpdateProfileResponse->ProfileArn;
    my $ProfileId    = $UpdateProfileResponse->ProfileId;

    # Returns a L<Paws::B2bi::UpdateProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/UpdateProfile>

=head1 ATTRIBUTES


=head2 BusinessName => Str

Specifies the name for the business associated with this profile.



=head2 Email => Str

Specifies the email address associated with this customer profile.



=head2 Name => Str

The name of the profile, used to identify it.



=head2 Phone => Str

Specifies the phone number associated with the profile.



=head2 B<REQUIRED> ProfileId => Str

Specifies the unique, system-generated identifier for the profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProfile in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

