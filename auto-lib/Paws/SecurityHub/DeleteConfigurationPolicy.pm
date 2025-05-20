
package Paws::SecurityHub::DeleteConfigurationPolicy;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationPolicy/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::DeleteConfigurationPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DeleteConfigurationPolicy - Arguments for method DeleteConfigurationPolicy on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConfigurationPolicy on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DeleteConfigurationPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConfigurationPolicy.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DeleteConfigurationPolicyResponse =
      $securityhub->DeleteConfigurationPolicy(
      Identifier => 'MyNonEmptyString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DeleteConfigurationPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The Amazon Resource Name (ARN) or universally unique identifier (UUID)
of the configuration policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConfigurationPolicy in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

