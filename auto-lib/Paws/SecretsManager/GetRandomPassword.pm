
package Paws::SecretsManager::GetRandomPassword;
  use Moose;
  has ExcludeCharacters => (is => 'ro', isa => 'Str');
  has ExcludeLowercase => (is => 'ro', isa => 'Bool');
  has ExcludeNumbers => (is => 'ro', isa => 'Bool');
  has ExcludePunctuation => (is => 'ro', isa => 'Bool');
  has ExcludeUppercase => (is => 'ro', isa => 'Bool');
  has IncludeSpace => (is => 'ro', isa => 'Bool');
  has PasswordLength => (is => 'ro', isa => 'Int');
  has RequireEachIncludedType => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRandomPassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::GetRandomPasswordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::GetRandomPassword - Arguments for method GetRandomPassword on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRandomPassword on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method GetRandomPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRandomPassword.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
# To generate a random password
# The following example shows how to request a randomly generated password. This
# example includes the optional flags to require spaces and at least one
# character of each included type. It specifies a length of 20 characters.
    my $GetRandomPasswordResponse = $secretsmanager->GetRandomPassword(
      'IncludeSpace'            => 1,
      'PasswordLength'          => 20,
      'RequireEachIncludedType' => 1
    );

    # Results:
    my $RandomPassword = $GetRandomPasswordResponse->RandomPassword;

    # Returns a L<Paws::SecretsManager::GetRandomPasswordResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/GetRandomPassword>

=head1 ATTRIBUTES


=head2 ExcludeCharacters => Str

A string of the characters that you don't want in the password.



=head2 ExcludeLowercase => Bool

Specifies whether to exclude lowercase letters from the password. If
you don't include this switch, the password can contain lowercase
letters.



=head2 ExcludeNumbers => Bool

Specifies whether to exclude numbers from the password. If you don't
include this switch, the password can contain numbers.



=head2 ExcludePunctuation => Bool

Specifies whether to exclude the following punctuation characters from
the password: C<! " # $ % & ' ( ) * + , - . / : ; E<lt> = E<gt> ? @ [ \
] ^ _ ` { | } ~>. If you don't include this switch, the password can
contain punctuation.



=head2 ExcludeUppercase => Bool

Specifies whether to exclude uppercase letters from the password. If
you don't include this switch, the password can contain uppercase
letters.



=head2 IncludeSpace => Bool

Specifies whether to include the space character. If you include this
switch, the password can contain space characters.



=head2 PasswordLength => Int

The length of the password. If you don't include this parameter, the
default length is 32 characters.



=head2 RequireEachIncludedType => Bool

Specifies whether to include at least one upper and lowercase letter,
one number, and one punctuation. If you don't include this switch, the
password contains at least one of every character type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRandomPassword in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

