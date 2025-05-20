
package Paws::WorkSpaces::StopWorkspacesPool;
  use Moose;
  has PoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopWorkspacesPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::StopWorkspacesPoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::StopWorkspacesPool - Arguments for method StopWorkspacesPool on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopWorkspacesPool on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method StopWorkspacesPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopWorkspacesPool.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $StopWorkspacesPoolResult = $workspaces->StopWorkspacesPool(
      PoolId => 'MyWorkspacesPoolId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/StopWorkspacesPool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PoolId => Str

The identifier of the pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopWorkspacesPool in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

