
package Paws::IoTFleetWise::GetRegisterAccountStatusResponse;
  use Moose;
  has AccountStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountStatus' , required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime' , required => 1);
  has CustomerAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerAccountId' , required => 1);
  has IamRegistrationResponse => (is => 'ro', isa => 'Paws::IoTFleetWise::IamRegistrationResponse', traits => ['NameInRequest'], request_name => 'iamRegistrationResponse' , required => 1);
  has LastModificationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModificationTime' , required => 1);
  has TimestreamRegistrationResponse => (is => 'ro', isa => 'Paws::IoTFleetWise::TimestreamRegistrationResponse', traits => ['NameInRequest'], request_name => 'timestreamRegistrationResponse' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetRegisterAccountStatusResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountStatus => Str

The status of registering your account and resources. The status can be
one of:

=over

=item *

C<REGISTRATION_SUCCESS> - The Amazon Web Services resource is
successfully registered.

=item *

C<REGISTRATION_PENDING> - Amazon Web Services IoT FleetWise is
processing the registration request. This process takes approximately
five minutes to complete.

=item *

C<REGISTRATION_FAILURE> - Amazon Web Services IoT FleetWise can't
register the AWS resource. Try again later.

=back


Valid values are: C<"REGISTRATION_PENDING">, C<"REGISTRATION_SUCCESS">, C<"REGISTRATION_FAILURE">
=head2 B<REQUIRED> CreationTime => Str

The time the account was registered, in seconds since epoch (January 1,
1970 at midnight UTC time).


=head2 B<REQUIRED> CustomerAccountId => Str

The unique ID of the Amazon Web Services account, provided at account
creation.


=head2 B<REQUIRED> IamRegistrationResponse => L<Paws::IoTFleetWise::IamRegistrationResponse>

Information about the registered IAM resources or errors, if any.


=head2 B<REQUIRED> LastModificationTime => Str

The time this registration was last updated, in seconds since epoch
(January 1, 1970 at midnight UTC time).


=head2 TimestreamRegistrationResponse => L<Paws::IoTFleetWise::TimestreamRegistrationResponse>

Information about the registered Amazon Timestream resources or errors,
if any.


=head2 _request_id => Str


=cut

1;