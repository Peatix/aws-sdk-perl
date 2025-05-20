
package Paws::B2bi::GetProfile;
  use Moose;
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::GetProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::GetProfile - Arguments for method GetProfile on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProfile on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method GetProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProfile.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $GetProfileResponse = $b2bi->GetProfile(
      ProfileId => 'MyProfileId',

    );

    # Results:
    my $BusinessName = $GetProfileResponse->BusinessName;
    my $CreatedAt    = $GetProfileResponse->CreatedAt;
    my $Email        = $GetProfileResponse->Email;
    my $LogGroupName = $GetProfileResponse->LogGroupName;
    my $Logging      = $GetProfileResponse->Logging;
    my $ModifiedAt   = $GetProfileResponse->ModifiedAt;
    my $Name         = $GetProfileResponse->Name;
    my $Phone        = $GetProfileResponse->Phone;
    my $ProfileArn   = $GetProfileResponse->ProfileArn;
    my $ProfileId    = $GetProfileResponse->ProfileId;

    # Returns a L<Paws::B2bi::GetProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/GetProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileId => Str

Specifies the unique, system-generated identifier for the profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProfile in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

