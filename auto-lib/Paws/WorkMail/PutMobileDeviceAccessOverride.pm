
package Paws::WorkMail::PutMobileDeviceAccessOverride;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DeviceId => (is => 'ro', isa => 'Str', required => 1);
  has Effect => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMobileDeviceAccessOverride');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::PutMobileDeviceAccessOverrideResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::PutMobileDeviceAccessOverride - Arguments for method PutMobileDeviceAccessOverride on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMobileDeviceAccessOverride on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method PutMobileDeviceAccessOverride.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMobileDeviceAccessOverride.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $PutMobileDeviceAccessOverrideResponse =
      $workmail->PutMobileDeviceAccessOverride(
      DeviceId       => 'MyDeviceId',
      Effect         => 'ALLOW',
      OrganizationId => 'MyOrganizationId',
      UserId         => 'MyEntityIdentifier',
      Description    => 'MyMobileDeviceAccessRuleDescription',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/PutMobileDeviceAccessOverride>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the override.



=head2 B<REQUIRED> DeviceId => Str

The mobile device for which you create the override. C<DeviceId> is
case insensitive.



=head2 B<REQUIRED> Effect => Str

The effect of the override, C<ALLOW> or C<DENY>.

Valid values are: C<"ALLOW">, C<"DENY">

=head2 B<REQUIRED> OrganizationId => Str

Identifies the WorkMail organization for which you create the override.



=head2 B<REQUIRED> UserId => Str

The WorkMail user for which you create the override. Accepts the
following types of user identities:

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

This class forms part of L<Paws>, documenting arguments for method PutMobileDeviceAccessOverride in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

