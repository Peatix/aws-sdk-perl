
package Paws::WorkMail::PutInboundDmarcSettings;
  use Moose;
  has Enforced => (is => 'ro', isa => 'Bool', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutInboundDmarcSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::PutInboundDmarcSettingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::PutInboundDmarcSettings - Arguments for method PutInboundDmarcSettings on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutInboundDmarcSettings on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method PutInboundDmarcSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutInboundDmarcSettings.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $PutInboundDmarcSettingsResponse = $workmail->PutInboundDmarcSettings(
      Enforced       => 1,
      OrganizationId => 'MyOrganizationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/PutInboundDmarcSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enforced => Bool

Enforces or suspends a policy after it's applied.



=head2 B<REQUIRED> OrganizationId => Str

The ID of the organization that you are applying the DMARC policy to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutInboundDmarcSettings in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

