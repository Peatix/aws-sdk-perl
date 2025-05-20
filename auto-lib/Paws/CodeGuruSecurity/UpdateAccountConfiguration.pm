
package Paws::CodeGuruSecurity::UpdateAccountConfiguration;
  use Moose;
  has EncryptionConfig => (is => 'ro', isa => 'Paws::CodeGuruSecurity::EncryptionConfig', traits => ['NameInRequest'], request_name => 'encryptionConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateAccountConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruSecurity::UpdateAccountConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::UpdateAccountConfiguration - Arguments for method UpdateAccountConfiguration on L<Paws::CodeGuruSecurity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountConfiguration on the
L<Amazon CodeGuru Security|Paws::CodeGuruSecurity> service. Use the attributes of this class
as arguments to method UpdateAccountConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountConfiguration.

=head1 SYNOPSIS

    my $codeguru-security = Paws->service('CodeGuruSecurity');
    my $UpdateAccountConfigurationResponse =
      $codeguru -security->UpdateAccountConfiguration(
      EncryptionConfig => {
        KmsKeyArn => 'MyKmsKeyArn',    # min: 1, max: 2048; OPTIONAL
      },

      );

    # Results:
    my $EncryptionConfig =
      $UpdateAccountConfigurationResponse->EncryptionConfig;

# Returns a L<Paws::CodeGuruSecurity::UpdateAccountConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-security/UpdateAccountConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionConfig => L<Paws::CodeGuruSecurity::EncryptionConfig>

The customer-managed KMS key ARN you want to use for encryption. If not
specified, CodeGuru Security will use an AWS-managed key for
encryption. If you previously specified a customer-managed KMS key and
want CodeGuru Security to use an AWS-managed key for encryption
instead, pass nothing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountConfiguration in L<Paws::CodeGuruSecurity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

