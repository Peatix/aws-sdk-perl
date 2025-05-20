
package Paws::WorkSpaces::DeleteConnectClientAddIn;
  use Moose;
  has AddInId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnectClientAddIn');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DeleteConnectClientAddInResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DeleteConnectClientAddIn - Arguments for method DeleteConnectClientAddIn on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConnectClientAddIn on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DeleteConnectClientAddIn.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConnectClientAddIn.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DeleteConnectClientAddInResult = $workspaces->DeleteConnectClientAddIn(
      AddInId    => 'MyAmazonUuid',
      ResourceId => 'MyDirectoryId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DeleteConnectClientAddIn>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddInId => Str

The identifier of the client add-in to delete.



=head2 B<REQUIRED> ResourceId => Str

The directory identifier for which the client add-in is configured.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConnectClientAddIn in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

