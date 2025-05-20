
package Paws::WorkMail::ListMobileDeviceAccessOverrides;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMobileDeviceAccessOverrides');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::ListMobileDeviceAccessOverridesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListMobileDeviceAccessOverrides - Arguments for method ListMobileDeviceAccessOverrides on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMobileDeviceAccessOverrides on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method ListMobileDeviceAccessOverrides.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMobileDeviceAccessOverrides.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $ListMobileDeviceAccessOverridesResponse =
      $workmail->ListMobileDeviceAccessOverrides(
      OrganizationId => 'MyOrganizationId',
      DeviceId       => 'MyDeviceId',            # OPTIONAL
      MaxResults     => 1,                       # OPTIONAL
      NextToken      => 'MyNextToken',           # OPTIONAL
      UserId         => 'MyEntityIdentifier',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListMobileDeviceAccessOverridesResponse->NextToken;
    my $Overrides = $ListMobileDeviceAccessOverridesResponse->Overrides;

  # Returns a L<Paws::WorkMail::ListMobileDeviceAccessOverridesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/ListMobileDeviceAccessOverrides>

=head1 ATTRIBUTES


=head2 DeviceId => Str

The mobile device to which the access override applies.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results. The first call
does not require a token.



=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization under which to list mobile device access
overrides.



=head2 UserId => Str

The WorkMail user under which you list the mobile device access
overrides. Accepts the following types of user identities:

=over

=item *

User ID: C<12345678-1234-1234-1234-123456789012> or
C<S-1-1-12-1234567890-123456789-123456789-1234>

=item *

Email address: C<user@domain.tld>

=item *

User name: C<user>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMobileDeviceAccessOverrides in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

