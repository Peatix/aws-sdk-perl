
package Paws::Grafana::DeleteWorkspaceServiceAccount;
  use Moose;
  has ServiceAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceAccountId', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWorkspaceServiceAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::DeleteWorkspaceServiceAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::DeleteWorkspaceServiceAccount - Arguments for method DeleteWorkspaceServiceAccount on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWorkspaceServiceAccount on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method DeleteWorkspaceServiceAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWorkspaceServiceAccount.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $DeleteWorkspaceServiceAccountResponse =
      $grafana->DeleteWorkspaceServiceAccount(
      ServiceAccountId => 'MyString',
      WorkspaceId      => 'MyWorkspaceId',

      );

    # Results:
    my $ServiceAccountId =
      $DeleteWorkspaceServiceAccountResponse->ServiceAccountId;
    my $WorkspaceId = $DeleteWorkspaceServiceAccountResponse->WorkspaceId;

    # Returns a L<Paws::Grafana::DeleteWorkspaceServiceAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/DeleteWorkspaceServiceAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceAccountId => Str

The ID of the service account to delete.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace where the service account resides.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWorkspaceServiceAccount in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

