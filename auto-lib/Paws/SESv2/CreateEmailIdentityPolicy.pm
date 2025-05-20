
package Paws::SESv2::CreateEmailIdentityPolicy;
  use Moose;
  has EmailIdentity => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EmailIdentity', required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PolicyName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEmailIdentityPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/identities/{EmailIdentity}/policies/{PolicyName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::CreateEmailIdentityPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CreateEmailIdentityPolicy - Arguments for method CreateEmailIdentityPolicy on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEmailIdentityPolicy on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method CreateEmailIdentityPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEmailIdentityPolicy.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $CreateEmailIdentityPolicyResponse = $email->CreateEmailIdentityPolicy(
      EmailIdentity => 'MyIdentity',
      Policy        => 'MyPolicy',
      PolicyName    => 'MyPolicyName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateEmailIdentityPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailIdentity => Str

The email identity.



=head2 B<REQUIRED> Policy => Str

The text of the policy in JSON format. The policy cannot exceed 4 KB.

For information about the syntax of sending authorization policies, see
the Amazon SES Developer Guide
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html).



=head2 B<REQUIRED> PolicyName => Str

The name of the policy.

The policy name cannot exceed 64 characters and can only include
alphanumeric characters, dashes, and underscores.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEmailIdentityPolicy in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

