
package Paws::AppStream::CreateEntitlement;
  use Moose;
  has AppVisibility => (is => 'ro', isa => 'Str', required => 1);
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::EntitlementAttribute]', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEntitlement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateEntitlementResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateEntitlement - Arguments for method CreateEntitlement on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEntitlement on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateEntitlement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEntitlement.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateEntitlementResult = $appstream2->CreateEntitlement(
      AppVisibility => 'ALL',
      Attributes    => [
        {
          Name  => 'MyString',    # min: 1
          Value => 'MyString',    # min: 1

        },
        ...
      ],
      Name        => 'MyName',
      StackName   => 'MyName',
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $Entitlement = $CreateEntitlementResult->Entitlement;

    # Returns a L<Paws::AppStream::CreateEntitlementResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateEntitlement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppVisibility => Str

Specifies whether all or selected apps are entitled.

Valid values are: C<"ALL">, C<"ASSOCIATED">

=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::AppStream::EntitlementAttribute>]

The attributes of the entitlement.



=head2 Description => Str

The description of the entitlement.



=head2 B<REQUIRED> Name => Str

The name of the entitlement.



=head2 B<REQUIRED> StackName => Str

The name of the stack with which the entitlement is associated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEntitlement in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

