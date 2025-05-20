
package Paws::WorkSpaces::UpdateConnectClientAddIn;
  use Moose;
  has AddInId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has URL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnectClientAddIn');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::UpdateConnectClientAddInResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::UpdateConnectClientAddIn - Arguments for method UpdateConnectClientAddIn on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnectClientAddIn on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method UpdateConnectClientAddIn.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnectClientAddIn.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $UpdateConnectClientAddInResult = $workspaces->UpdateConnectClientAddIn(
      AddInId    => 'MyAmazonUuid',
      ResourceId => 'MyDirectoryId',
      Name       => 'MyAddInName',     # OPTIONAL
      URL        => 'MyAddInUrl',      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/UpdateConnectClientAddIn>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddInId => Str

The identifier of the client add-in to update.



=head2 Name => Str

The name of the client add-in.



=head2 B<REQUIRED> ResourceId => Str

The directory identifier for which the client add-in is configured.



=head2 URL => Str

The endpoint URL of the Amazon Connect client add-in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnectClientAddIn in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

