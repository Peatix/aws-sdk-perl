
package Paws::FinspaceData::GetUser;
  use Moose;
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/user/{userId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::GetUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetUser - Arguments for method GetUser on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUser on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method GetUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUser.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $GetUserResponse = $finspace -api->GetUser(
      UserId => 'MyUserId',

    );

    # Results:
    my $ApiAccess             = $GetUserResponse->ApiAccess;
    my $ApiAccessPrincipalArn = $GetUserResponse->ApiAccessPrincipalArn;
    my $CreateTime            = $GetUserResponse->CreateTime;
    my $EmailAddress          = $GetUserResponse->EmailAddress;
    my $FirstName             = $GetUserResponse->FirstName;
    my $LastDisabledTime      = $GetUserResponse->LastDisabledTime;
    my $LastEnabledTime       = $GetUserResponse->LastEnabledTime;
    my $LastLoginTime         = $GetUserResponse->LastLoginTime;
    my $LastModifiedTime      = $GetUserResponse->LastModifiedTime;
    my $LastName              = $GetUserResponse->LastName;
    my $Status                = $GetUserResponse->Status;
    my $Type                  = $GetUserResponse->Type;
    my $UserId                = $GetUserResponse->UserId;

    # Returns a L<Paws::FinspaceData::GetUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/GetUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserId => Str

The unique identifier of the user to get data for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUser in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

