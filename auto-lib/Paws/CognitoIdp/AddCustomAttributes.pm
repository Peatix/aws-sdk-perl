
package Paws::CognitoIdp::AddCustomAttributes;
  use Moose;
  has CustomAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::SchemaAttributeType]', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddCustomAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AddCustomAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AddCustomAttributes - Arguments for method AddCustomAttributes on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddCustomAttributes on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AddCustomAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddCustomAttributes.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AddCustomAttributesResponse = $cognito -idp->AddCustomAttributes(
      CustomAttributes => [
        {
          AttributeDataType =>
            'String',    # values: String, Number, DateTime, Boolean; OPTIONAL
          DeveloperOnlyAttribute => 1,            # OPTIONAL
          Mutable                => 1,            # OPTIONAL
          Name => 'MyCustomAttributeNameType',    # min: 1, max: 20; OPTIONAL
          NumberAttributeConstraints => {
            MaxValue => 'MyStringType',           # max: 131072; OPTIONAL
            MinValue => 'MyStringType',           # max: 131072; OPTIONAL
          },    # OPTIONAL
          Required                   => 1,    # OPTIONAL
          StringAttributeConstraints => {
            MaxLength => 'MyStringType',      # max: 131072; OPTIONAL
            MinLength => 'MyStringType',      # max: 131072; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      UserPoolId => 'MyUserPoolIdType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomAttributes => ArrayRef[L<Paws::CognitoIdp::SchemaAttributeType>]

An array of custom attribute names and other properties. Sets the
following characteristics:

=over

=item AttributeDataType

The expected data type. Can be a string, a number, a date and time, or
a boolean.

=item Mutable

If true, you can grant app clients write access to the attribute value.
If false, the attribute value can only be set up on sign-up or
administrator creation of users.

=item Name

The attribute name. For an attribute like C<custom:myAttribute>, enter
C<myAttribute> for this field.

=item Required

When true, users who sign up or are created must set a value for the
attribute.

=item NumberAttributeConstraints

The minimum and maximum length of accepted values for a C<Number>-type
attribute.

=item StringAttributeConstraints

The minimum and maximum length of accepted values for a C<String>-type
attribute.

=item DeveloperOnlyAttribute

This legacy option creates an attribute with a C<dev:> prefix. You can
only set the value of a developer-only attribute with administrative
IAM credentials.

=back




=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to add custom attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddCustomAttributes in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

