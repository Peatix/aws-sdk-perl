
package Paws::Proton::ListRepositorySyncDefinitions;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has RepositoryProvider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryProvider' , required => 1);
  has SyncType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'syncType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRepositorySyncDefinitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListRepositorySyncDefinitionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListRepositorySyncDefinitions - Arguments for method ListRepositorySyncDefinitions on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRepositorySyncDefinitions on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListRepositorySyncDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRepositorySyncDefinitions.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListRepositorySyncDefinitionsOutput =
      $proton->ListRepositorySyncDefinitions(
      RepositoryName     => 'MyRepositoryName',
      RepositoryProvider => 'GITHUB',
      SyncType           => 'TEMPLATE_SYNC',
      NextToken          => 'MyEmptyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken       = $ListRepositorySyncDefinitionsOutput->NextToken;
    my $SyncDefinitions = $ListRepositorySyncDefinitionsOutput->SyncDefinitions;

    # Returns a L<Paws::Proton::ListRepositorySyncDefinitionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListRepositorySyncDefinitions>

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates the location of the next repository sync
definition in the array of repository sync definitions, after the list
of repository sync definitions previously requested.



=head2 B<REQUIRED> RepositoryName => Str

The repository name.



=head2 B<REQUIRED> RepositoryProvider => Str

The repository provider.

Valid values are: C<"GITHUB">, C<"GITHUB_ENTERPRISE">, C<"BITBUCKET">

=head2 B<REQUIRED> SyncType => Str

The sync type. The only supported value is C<TEMPLATE_SYNC>.

Valid values are: C<"TEMPLATE_SYNC">, C<"SERVICE_SYNC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRepositorySyncDefinitions in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

