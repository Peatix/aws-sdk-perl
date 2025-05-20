
package Paws::WorkSpaces::CreateConnectClientAddIn;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has URL => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnectClientAddIn');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::CreateConnectClientAddInResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateConnectClientAddIn - Arguments for method CreateConnectClientAddIn on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnectClientAddIn on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateConnectClientAddIn.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnectClientAddIn.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateConnectClientAddInResult = $workspaces->CreateConnectClientAddIn(
      Name       => 'MyAddInName',
      ResourceId => 'MyDirectoryId',
      URL        => 'MyAddInUrl',

    );

    # Results:
    my $AddInId = $CreateConnectClientAddInResult->AddInId;

    # Returns a L<Paws::WorkSpaces::CreateConnectClientAddInResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateConnectClientAddIn>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the client add-in.



=head2 B<REQUIRED> ResourceId => Str

The directory identifier for which to configure the client add-in.



=head2 B<REQUIRED> URL => Str

The endpoint URL of the Amazon Connect client add-in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnectClientAddIn in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

