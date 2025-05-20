
package Paws::Connect::UpdateUserProficiencies;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'UserId', required => 1);
  has UserProficiencies => (is => 'ro', isa => 'ArrayRef[Paws::Connect::UserProficiency]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserProficiencies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/users/{InstanceId}/{UserId}/proficiencies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateUserProficiencies - Arguments for method UpdateUserProficiencies on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserProficiencies on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateUserProficiencies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserProficiencies.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateUserProficiencies(
      InstanceId        => 'MyInstanceId',
      UserId            => 'MyUserId',
      UserProficiencies => [
        {
          AttributeName  => 'MyPredefinedAttributeName',    # min: 1, max: 64
          AttributeValue =>
            'MyPredefinedAttributeStringValue',             # min: 1, max: 64
          Level => 1.0,                                     # min: 1, max: 5

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateUserProficiencies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> UserId => Str

The identifier of the user account.



=head2 B<REQUIRED> UserProficiencies => ArrayRef[L<Paws::Connect::UserProficiency>]

The proficiencies to be updated for the user. Proficiencies must first
be associated to the user. You can do this using
AssociateUserProficiencies API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserProficiencies in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

