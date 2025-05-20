
package Paws::IoTFleetWise::RegisterAccountResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime' , required => 1);
  has IamResources => (is => 'ro', isa => 'Paws::IoTFleetWise::IamResources', traits => ['NameInRequest'], request_name => 'iamResources' , required => 1);
  has LastModificationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModificationTime' , required => 1);
  has RegisterAccountStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registerAccountStatus' , required => 1);
  has TimestreamResources => (is => 'ro', isa => 'Paws::IoTFleetWise::TimestreamResources', traits => ['NameInRequest'], request_name => 'timestreamResources' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::RegisterAccountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time the account was registered, in seconds since epoch (January 1,
1970 at midnight UTC time).


=head2 B<REQUIRED> IamResources => L<Paws::IoTFleetWise::IamResources>

The registered IAM resource that allows Amazon Web Services IoT
FleetWise to send data to Amazon Timestream.


=head2 B<REQUIRED> LastModificationTime => Str

The time this registration was last updated, in seconds since epoch
(January 1, 1970 at midnight UTC time).


=head2 B<REQUIRED> RegisterAccountStatus => Str

The status of registering your Amazon Web Services account, IAM role,
and Timestream resources.

Valid values are: C<"REGISTRATION_PENDING">, C<"REGISTRATION_SUCCESS">, C<"REGISTRATION_FAILURE">
=head2 TimestreamResources => L<Paws::IoTFleetWise::TimestreamResources>




=head2 _request_id => Str


=cut

1;