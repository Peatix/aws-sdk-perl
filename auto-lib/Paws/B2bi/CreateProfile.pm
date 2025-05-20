
package Paws::B2bi::CreateProfile;
  use Moose;
  has BusinessName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'businessName' , required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Email => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'email' );
  has Logging => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logging' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Phone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'phone' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::B2bi::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::CreateProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::CreateProfile - Arguments for method CreateProfile on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProfile on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method CreateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProfile.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $CreateProfileResponse = $b2bi->CreateProfile(
      BusinessName => 'MyBusinessName',
      Logging      => 'ENABLED',
      Name         => 'MyProfileName',
      Phone        => 'MyPhone',
      ClientToken  => 'MyString',         # OPTIONAL
      Email        => 'MyEmail',          # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $BusinessName = $CreateProfileResponse->BusinessName;
    my $CreatedAt    = $CreateProfileResponse->CreatedAt;
    my $Email        = $CreateProfileResponse->Email;
    my $LogGroupName = $CreateProfileResponse->LogGroupName;
    my $Logging      = $CreateProfileResponse->Logging;
    my $Name         = $CreateProfileResponse->Name;
    my $Phone        = $CreateProfileResponse->Phone;
    my $ProfileArn   = $CreateProfileResponse->ProfileArn;
    my $ProfileId    = $CreateProfileResponse->ProfileId;

    # Returns a L<Paws::B2bi::CreateProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/CreateProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BusinessName => Str

Specifies the name for the business associated with this profile.



=head2 ClientToken => Str

Reserved for future use.



=head2 Email => Str

Specifies the email address associated with this customer profile.



=head2 B<REQUIRED> Logging => Str

Specifies whether or not logging is enabled for this profile.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> Name => Str

Specifies the name of the profile.



=head2 B<REQUIRED> Phone => Str

Specifies the phone number associated with the profile.



=head2 Tags => ArrayRef[L<Paws::B2bi::Tag>]

Specifies the key-value pairs assigned to ARNs that you can use to
group and search for resources by type. You can attach this metadata to
resources (capabilities, partnerships, and so on) for any purpose.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProfile in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

