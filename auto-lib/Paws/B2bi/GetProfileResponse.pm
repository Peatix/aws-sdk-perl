
package Paws::B2bi::GetProfileResponse;
  use Moose;
  has BusinessName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'businessName' , required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt' , required => 1);
  has Email => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'email' );
  has Logging => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logging' );
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' );
  has ModifiedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modifiedAt' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Phone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'phone' , required => 1);
  has ProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileArn' , required => 1);
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::GetProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BusinessName => Str

Returns the name for the business associated with this profile.


=head2 B<REQUIRED> CreatedAt => Str

Returns a timestamp for creation date and time of the transformer.


=head2 Email => Str

Returns the email address associated with this customer profile.


=head2 Logging => Str

Returns whether or not logging is enabled for this profile.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 LogGroupName => Str

Returns the name of the logging group.


=head2 ModifiedAt => Str

Returns a timestamp for last time the profile was modified.


=head2 B<REQUIRED> Name => Str

Returns the name of the profile, used to identify it.


=head2 B<REQUIRED> Phone => Str

Returns the phone number associated with the profile.


=head2 B<REQUIRED> ProfileArn => Str

Returns an Amazon Resource Name (ARN) for a specific Amazon Web
Services resource, such as a capability, partnership, profile, or
transformer.


=head2 B<REQUIRED> ProfileId => Str

Returns the unique, system-generated identifier for the profile.


=head2 _request_id => Str


=cut

1;