
package Paws::SecurityHub::GetSecurityControlDefinition;
  use Moose;
  has SecurityControlId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SecurityControlId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSecurityControlDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/securityControl/definition');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::GetSecurityControlDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetSecurityControlDefinition - Arguments for method GetSecurityControlDefinition on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSecurityControlDefinition on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetSecurityControlDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSecurityControlDefinition.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetSecurityControlDefinitionResponse =
      $securityhub->GetSecurityControlDefinition(
      SecurityControlId => 'MyNonEmptyString',

      );

    # Results:
    my $SecurityControlDefinition =
      $GetSecurityControlDefinitionResponse->SecurityControlDefinition;

  # Returns a L<Paws::SecurityHub::GetSecurityControlDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetSecurityControlDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityControlId => Str

The ID of the security control to retrieve the definition for. This
field doesnE<rsquo>t accept an Amazon Resource Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSecurityControlDefinition in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

