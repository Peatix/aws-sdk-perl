
package Paws::RedShift::ModifyAuthenticationProfile;
  use Moose;
  has AuthenticationProfileContent => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationProfileName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyAuthenticationProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifyAuthenticationProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyAuthenticationProfileResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyAuthenticationProfile - Arguments for method ModifyAuthenticationProfile on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyAuthenticationProfile on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyAuthenticationProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyAuthenticationProfile.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ModifyAuthenticationProfileResult =
      $redshift->ModifyAuthenticationProfile(
      AuthenticationProfileContent => 'MyString',
      AuthenticationProfileName    => 'MyAuthenticationProfileNameString',

      );

    # Results:
    my $AuthenticationProfileContent =
      $ModifyAuthenticationProfileResult->AuthenticationProfileContent;
    my $AuthenticationProfileName =
      $ModifyAuthenticationProfileResult->AuthenticationProfileName;

    # Returns a L<Paws::RedShift::ModifyAuthenticationProfileResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyAuthenticationProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationProfileContent => Str

The new content of the authentication profile in JSON format. The
maximum length of the JSON string is determined by a quota for your
account.



=head2 B<REQUIRED> AuthenticationProfileName => Str

The name of the authentication profile to replace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyAuthenticationProfile in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

