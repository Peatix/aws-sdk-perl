
package Paws::SecurityHub::EnableSecurityHub;
  use Moose;
  has ControlFindingGenerator => (is => 'ro', isa => 'Str');
  has EnableDefaultStandards => (is => 'ro', isa => 'Bool');
  has Tags => (is => 'ro', isa => 'Paws::SecurityHub::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableSecurityHub');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::EnableSecurityHubResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::EnableSecurityHub - Arguments for method EnableSecurityHub on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableSecurityHub on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method EnableSecurityHub.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableSecurityHub.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $EnableSecurityHubResponse = $securityhub->EnableSecurityHub(
      ControlFindingGenerator => 'STANDARD_CONTROL',    # OPTIONAL
      EnableDefaultStandards  => 1,                     # OPTIONAL
      Tags                    => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/EnableSecurityHub>

=head1 ATTRIBUTES


=head2 ControlFindingGenerator => Str

This field, used when enabling Security Hub, specifies whether the
calling account has consolidated control findings turned on. If the
value for this field is set to C<SECURITY_CONTROL>, Security Hub
generates a single finding for a control check even when the check
applies to multiple enabled standards.

If the value for this field is set to C<STANDARD_CONTROL>, Security Hub
generates separate findings for a control check when the check applies
to multiple enabled standards.

The value for this field in a member account matches the value in the
administrator account. For accounts that aren't part of an
organization, the default value of this field is C<SECURITY_CONTROL> if
you enabled Security Hub on or after February 23, 2023.

Valid values are: C<"STANDARD_CONTROL">, C<"SECURITY_CONTROL">

=head2 EnableDefaultStandards => Bool

Whether to enable the security standards that Security Hub has
designated as automatically enabled. If you don't provide a value for
C<EnableDefaultStandards>, it is set to C<true>. To not enable the
automatically enabled standards, set C<EnableDefaultStandards> to
C<false>.



=head2 Tags => L<Paws::SecurityHub::TagMap>

The tags to add to the hub resource when you enable Security Hub.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableSecurityHub in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

