
package Paws::SecurityHub::GetConfigurationPolicy;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfigurationPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configurationPolicy/get/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::GetConfigurationPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetConfigurationPolicy - Arguments for method GetConfigurationPolicy on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfigurationPolicy on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetConfigurationPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfigurationPolicy.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetConfigurationPolicyResponse = $securityhub->GetConfigurationPolicy(
      Identifier => 'MyNonEmptyString',

    );

    # Results:
    my $Arn = $GetConfigurationPolicyResponse->Arn;
    my $ConfigurationPolicy =
      $GetConfigurationPolicyResponse->ConfigurationPolicy;
    my $CreatedAt   = $GetConfigurationPolicyResponse->CreatedAt;
    my $Description = $GetConfigurationPolicyResponse->Description;
    my $Id          = $GetConfigurationPolicyResponse->Id;
    my $Name        = $GetConfigurationPolicyResponse->Name;
    my $UpdatedAt   = $GetConfigurationPolicyResponse->UpdatedAt;

    # Returns a L<Paws::SecurityHub::GetConfigurationPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetConfigurationPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The Amazon Resource Name (ARN) or universally unique identifier (UUID)
of the configuration policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfigurationPolicy in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

