
package Paws::AppStream::AssociateApplicationToEntitlement;
  use Moose;
  has ApplicationIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has EntitlementName => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateApplicationToEntitlement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::AssociateApplicationToEntitlementResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::AssociateApplicationToEntitlement - Arguments for method AssociateApplicationToEntitlement on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateApplicationToEntitlement on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method AssociateApplicationToEntitlement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateApplicationToEntitlement.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $AssociateApplicationToEntitlementResult =
      $appstream2->AssociateApplicationToEntitlement(
      ApplicationIdentifier => 'MyString',
      EntitlementName       => 'MyName',
      StackName             => 'MyName',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/AssociateApplicationToEntitlement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationIdentifier => Str

The identifier of the application.



=head2 B<REQUIRED> EntitlementName => Str

The name of the entitlement.



=head2 B<REQUIRED> StackName => Str

The name of the stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateApplicationToEntitlement in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

