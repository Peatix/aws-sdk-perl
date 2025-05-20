
package Paws::SSOAdmin::PutApplicationAccessScope;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has AuthorizedTargets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Scope => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutApplicationAccessScope');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::PutApplicationAccessScope - Arguments for method PutApplicationAccessScope on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutApplicationAccessScope on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method PutApplicationAccessScope.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutApplicationAccessScope.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    $sso->PutApplicationAccessScope(
      ApplicationArn    => 'MyApplicationArn',
      Scope             => 'MyScope',
      AuthorizedTargets => [
        'MyScopeTarget', ...    # min: 1, max: 100
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/PutApplicationAccessScope>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

Specifies the ARN of the application with the access scope with the
targets to add or update.



=head2 AuthorizedTargets => ArrayRef[Str|Undef]

Specifies an array list of ARNs that represent the authorized targets
for this access scope.



=head2 B<REQUIRED> Scope => Str

Specifies the name of the access scope to be associated with the
specified targets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutApplicationAccessScope in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

