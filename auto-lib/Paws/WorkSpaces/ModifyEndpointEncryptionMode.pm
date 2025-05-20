
package Paws::WorkSpaces::ModifyEndpointEncryptionMode;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has EndpointEncryptionMode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEndpointEncryptionMode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ModifyEndpointEncryptionModeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ModifyEndpointEncryptionMode - Arguments for method ModifyEndpointEncryptionMode on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyEndpointEncryptionMode on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ModifyEndpointEncryptionMode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyEndpointEncryptionMode.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ModifyEndpointEncryptionModeResponse =
      $workspaces->ModifyEndpointEncryptionMode(
      DirectoryId            => 'MyDirectoryId',
      EndpointEncryptionMode => 'STANDARD_TLS',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ModifyEndpointEncryptionMode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory.



=head2 B<REQUIRED> EndpointEncryptionMode => Str

The encryption mode used for endpoint connections when streaming to
WorkSpaces Personal or WorkSpace Pools.

Valid values are: C<"STANDARD_TLS">, C<"FIPS_VALIDATED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyEndpointEncryptionMode in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

