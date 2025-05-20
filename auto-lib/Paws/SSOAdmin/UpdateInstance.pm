
package Paws::SSOAdmin::UpdateInstance;
  use Moose;
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::UpdateInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::UpdateInstance - Arguments for method UpdateInstance on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInstance on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method UpdateInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInstance.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $UpdateInstanceResponse = $sso->UpdateInstance(
      InstanceArn => 'MyInstanceArn',
      Name        => 'MyNameType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/UpdateInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceArn => Str

The ARN of the instance of IAM Identity Center under which the
operation will run. For more information about ARNs, see Amazon
Resource Names (ARNs) and Amazon Web Services Service Namespaces in the
I<Amazon Web Services General Reference>.



=head2 B<REQUIRED> Name => Str

Updates the instance name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInstance in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

