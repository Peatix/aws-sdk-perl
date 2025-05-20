
package Paws::GreengrassV2::AssociateServiceRoleToAccount;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'RoleArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateServiceRoleToAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/servicerole');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::AssociateServiceRoleToAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::AssociateServiceRoleToAccount - Arguments for method AssociateServiceRoleToAccount on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateServiceRoleToAccount on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method AssociateServiceRoleToAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateServiceRoleToAccount.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $AssociateServiceRoleToAccountResponse =
      $greengrass->AssociateServiceRoleToAccount(
      RoleArn => 'MyString',

      );

    # Results:
    my $AssociatedAt = $AssociateServiceRoleToAccountResponse->AssociatedAt;

# Returns a L<Paws::GreengrassV2::AssociateServiceRoleToAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/AssociateServiceRoleToAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the service role to associate with
IoT Greengrass for your Amazon Web Services account in this Amazon Web
Services Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateServiceRoleToAccount in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

