
package Paws::SSMContacts::DeleteRotationOverride;
  use Moose;
  has RotationId => (is => 'ro', isa => 'Str', required => 1);
  has RotationOverrideId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRotationOverride');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::DeleteRotationOverrideResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::DeleteRotationOverride - Arguments for method DeleteRotationOverride on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRotationOverride on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method DeleteRotationOverride.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRotationOverride.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $DeleteRotationOverrideResult = $ssm -contacts->DeleteRotationOverride(
      RotationId         => 'MySsmContactsArn',
      RotationOverrideId => 'MyUuid',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/DeleteRotationOverride>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RotationId => Str

The Amazon Resource Name (ARN) of the rotation that was overridden.



=head2 B<REQUIRED> RotationOverrideId => Str

The Amazon Resource Name (ARN) of the on-call rotation override to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRotationOverride in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

