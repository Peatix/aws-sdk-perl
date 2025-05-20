
package Paws::CodeCatalyst::GetUserDetails;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'id');
  has UserName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUserDetails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/userDetails');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::GetUserDetailsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetUserDetails - Arguments for method GetUserDetails on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUserDetails on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method GetUserDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUserDetails.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $GetUserDetailsResponse = $codecatalyst->GetUserDetails(
      Id       => 'MyGetUserDetailsRequestIdString',          # OPTIONAL
      UserName => 'MyGetUserDetailsRequestUserNameString',    # OPTIONAL
    );

    # Results:
    my $DisplayName  = $GetUserDetailsResponse->DisplayName;
    my $PrimaryEmail = $GetUserDetailsResponse->PrimaryEmail;
    my $UserId       = $GetUserDetailsResponse->UserId;
    my $UserName     = $GetUserDetailsResponse->UserName;
    my $Version      = $GetUserDetailsResponse->Version;

    # Returns a L<Paws::CodeCatalyst::GetUserDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/GetUserDetails>

=head1 ATTRIBUTES


=head2 Id => Str

The system-generated unique ID of the user.



=head2 UserName => Str

The name of the user as displayed in Amazon CodeCatalyst.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUserDetails in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

