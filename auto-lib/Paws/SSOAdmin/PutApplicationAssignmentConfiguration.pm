
package Paws::SSOAdmin::PutApplicationAssignmentConfiguration;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has AssignmentRequired => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutApplicationAssignmentConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::PutApplicationAssignmentConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::PutApplicationAssignmentConfiguration - Arguments for method PutApplicationAssignmentConfiguration on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutApplicationAssignmentConfiguration on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method PutApplicationAssignmentConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutApplicationAssignmentConfiguration.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $PutApplicationAssignmentConfigurationResponse =
      $sso->PutApplicationAssignmentConfiguration(
      ApplicationArn     => 'MyApplicationArn',
      AssignmentRequired => 1,

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/PutApplicationAssignmentConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

Specifies the ARN of the application. For more information about ARNs,
see Amazon Resource Names (ARNs) and Amazon Web Services Service
Namespaces in the I<Amazon Web Services General Reference>.



=head2 B<REQUIRED> AssignmentRequired => Bool

If C<AssignmentsRequired> is C<true> (default value), users
donE<rsquo>t have access to the application unless an assignment is
created using the CreateApplicationAssignment API
(https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html).
If C<false>, all users have access to the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutApplicationAssignmentConfiguration in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

