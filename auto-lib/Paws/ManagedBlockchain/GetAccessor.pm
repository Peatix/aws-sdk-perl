
package Paws::ManagedBlockchain::GetAccessor;
  use Moose;
  has AccessorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AccessorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccessor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accessors/{AccessorId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::GetAccessorOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::GetAccessor - Arguments for method GetAccessor on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccessor on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method GetAccessor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccessor.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $GetAccessorOutput = $managedblockchain->GetAccessor(
      AccessorId => 'MyResourceIdString',

    );

    # Results:
    my $Accessor = $GetAccessorOutput->Accessor;

    # Returns a L<Paws::ManagedBlockchain::GetAccessorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/GetAccessor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessorId => Str

The unique identifier of the accessor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccessor in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

