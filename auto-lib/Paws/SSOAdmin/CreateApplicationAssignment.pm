
package Paws::SSOAdmin::CreateApplicationAssignment;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has PrincipalId => (is => 'ro', isa => 'Str', required => 1);
  has PrincipalType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationAssignment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::CreateApplicationAssignmentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::CreateApplicationAssignment - Arguments for method CreateApplicationAssignment on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplicationAssignment on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method CreateApplicationAssignment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplicationAssignment.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $CreateApplicationAssignmentResponse = $sso->CreateApplicationAssignment(
      ApplicationArn => 'MyApplicationArn',
      PrincipalId    => 'MyPrincipalId',
      PrincipalType  => 'USER',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/CreateApplicationAssignment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

The ARN of the application for which the assignment is created.



=head2 B<REQUIRED> PrincipalId => Str

An identifier for an object in IAM Identity Center, such as a user or
group. PrincipalIds are GUIDs (For example,
f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
PrincipalIds in IAM Identity Center, see the IAM Identity Center
Identity Store API Reference
(https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html).



=head2 B<REQUIRED> PrincipalType => Str

The entity type for which the assignment will be created.

Valid values are: C<"USER">, C<"GROUP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplicationAssignment in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

