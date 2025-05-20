
package Paws::FinspaceData::ResetUserPassword;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetUserPassword');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/user/{userId}/password');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::ResetUserPasswordResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::ResetUserPassword - Arguments for method ResetUserPassword on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetUserPassword on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method ResetUserPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetUserPassword.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $ResetUserPasswordResponse = $finspace -api->ResetUserPassword(
      UserId      => 'MyUserId',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $TemporaryPassword = $ResetUserPasswordResponse->TemporaryPassword;
    my $UserId            = $ResetUserPasswordResponse->UserId;

    # Returns a L<Paws::FinspaceData::ResetUserPasswordResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/ResetUserPassword>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> UserId => Str

The unique identifier of the user that a temporary password is
requested for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetUserPassword in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

