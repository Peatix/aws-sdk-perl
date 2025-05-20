
package Paws::SecurityHub::UpdateSecurityControl;
  use Moose;
  has LastUpdateReason => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SecurityHub::Parameters', required => 1);
  has SecurityControlId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSecurityControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/securityControl/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::UpdateSecurityControlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::UpdateSecurityControl - Arguments for method UpdateSecurityControl on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSecurityControl on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method UpdateSecurityControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSecurityControl.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $UpdateSecurityControlResponse = $securityhub->UpdateSecurityControl(
      Parameters => {
        'MyNonEmptyString' => {
          ValueType => 'DEFAULT',    # values: DEFAULT, CUSTOM
          Value     => {
            Boolean     => 1,                              # OPTIONAL
            Double      => 1,                              # OPTIONAL
            Enum        => 'MyNonEmptyString',
            EnumList    => [ 'MyNonEmptyString', ... ],    # OPTIONAL
            Integer     => 1,                              # OPTIONAL
            IntegerList => [
              1, ...                                       # OPTIONAL
            ],    # OPTIONAL
            String     => 'MyNonEmptyString',
            StringList => [ 'MyNonEmptyString', ... ],    # OPTIONAL
          },    # OPTIONAL
        },
      },
      SecurityControlId => 'MyNonEmptyString',
      LastUpdateReason  => 'MyAlphaNumericNonEmptyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/UpdateSecurityControl>

=head1 ATTRIBUTES


=head2 LastUpdateReason => Str

The most recent reason for updating the properties of the security
control. This field accepts alphanumeric characters in addition to
white spaces, dashes, and underscores.



=head2 B<REQUIRED> Parameters => L<Paws::SecurityHub::Parameters>

An object that specifies which security control parameters to update.



=head2 B<REQUIRED> SecurityControlId => Str

The Amazon Resource Name (ARN) or ID of the control to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecurityControl in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

